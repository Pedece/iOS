//
//  TVAppDelegate.m
//  TutorialVistas
//
//  Created by Pablo on 19/01/14.
//  Copyright (c) 2014 Pablo. All rights reserved.
//

#import "TVAppDelegate.h"
#import "TVPregunta.h"
#import "TVPreguntasViewController.h"
#import "TVCeldaPregunta.h"

@implementation TVAppDelegate
{
    NSMutableArray *_preguntas;
}


-(void)importar{
    NSString *lectura;
    NSArray *separado;
    NSArray *intermedio;
    
   // NSString* ruta = [[NSBundle mainBundle] pathForResource:@"prueba"
       //                                              ofType:@"txt"];
    
    lectura = [[NSString alloc] initWithContentsOfURL:@"/prueba.txt" encoding:NSUTF8StringEncoding error:nil];
    
    if(lectura==nil)
    {
        NSLog(@"No se puede leer");
        exit(0);
    }
    NSLog(@"%@",lectura);
    
    //Lo separamos por \n, que cada uno es un ejemplar de JFLibro
    separado = [lectura componentsSeparatedByString:@"\n"];
    //Ahora vamos rellenando los libros con su informacion
    for(int i=0; i<separado.count; i++)
    {
        //JFLibro *libro = [JFLibro new];
        TVPregunta *preguntaFichero = [[TVPregunta alloc] init];
        
        //Rellenamos los datos.
        [preguntaFichero importar:separado[i] :@"*"];
        //Lo añadimos al array
        
        NSLog(@"%@",preguntaFichero);
        [_preguntas addObject:preguntaFichero];
    }
    

    
    
    
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    _preguntas = [NSMutableArray arrayWithCapacity:20];
    int i;
    NSArray *separado;


    NSString* path = [[NSBundle mainBundle] pathForResource:@"prueba"
                                                     ofType:@"txt"];
    NSString* content = [NSString stringWithContentsOfFile:path
                                                  encoding:NSUTF8StringEncoding
                                                     error:NULL];
    NSLog(@"path:%@\n",path);
    NSString * lecturA = [[ NSString alloc] initWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"content:%@\n",lecturA);
    TVPregunta *pregunta = [[TVPregunta alloc] init];

   // [self importar:path];
    
    pregunta.pregunta = @"1.	(TEMAS 3 y 4)Las arquitecturas de agentes se descomponen en tres tipos principales que dependen  del sistema de razonamiento que utilicen, estas son:";
    pregunta.respuesta0 = @"a) Deliberativas, cognitivas, híbridas.";
    pregunta.respuesta1 = @"b) Cognitivas, reactivas, híbridas";
    pregunta.respuesta2 = @"c) Deliberativas, reactivas, híbridas.";
    pregunta.respuesta3 = @"d)";
    pregunta.respuestaCorrecta = 2;
    
    [_preguntas addObject:pregunta];
    
    pregunta = [[TVPregunta alloc] init];
    pregunta.pregunta = @"2.- Enunciado de la pregunta, ha de ser algo largo para comprobar que se muestra correctamente. is about to move from active t";
    pregunta.respuesta0 = @"Respuesta a)";
    pregunta.respuesta1 = @"Respuesta b)";
    pregunta.respuesta2 = @"Respuesta c)";
    pregunta.respuesta3 = @"Respuesta d)";
    pregunta.respuestaCorrecta = 2;
    [_preguntas addObject:pregunta];

    
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    UINavigationController *navigationController = [tabBarController viewControllers][0];
    TVPreguntasViewController *tVPreguntasViewController = [navigationController viewControllers][0];
    tVPreguntasViewController.preguntas = _preguntas;
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
