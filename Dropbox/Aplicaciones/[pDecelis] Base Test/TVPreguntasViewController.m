//
//  TVPreguntasViewController.m
//  TutorialVistas
//
//  Created by Pablo on 19/01/14.
//  Copyright (c) 2014 Pablo. All rights reserved.
//

#import "TVPreguntasViewController.h"
#import "TVPregunta.h"
#import "TVCeldaPregunta.h"
#import "TVAppDelegate.h"

@interface TVPreguntasViewController ()

@end

@implementation TVPreguntasViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        indice=0;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    TVCeldaPregunta *cell = (TVCeldaPregunta *)[tableView dequeueReusableCellWithIdentifier:@"CeldaPregunta"];
    
    TVPregunta *pregunta =(self.preguntas)[indice];
    if (reset==TRUE) {
        [cell.botonRespuesta0 setBackgroundColor: [UIColor whiteColor]];
        [cell.botonRespuesta1 setBackgroundColor: [UIColor whiteColor]];
        [cell.botonRespuesta2 setBackgroundColor: [UIColor whiteColor]];
        [cell.botonRespuesta3 setBackgroundColor: [UIColor whiteColor]];
        
    }
    cell.labelPregunta.text = pregunta.pregunta;

    NSString *respuesta0 = pregunta.respuesta0;
    NSString *respuesta1 = pregunta.respuesta1;
    NSString *respuesta2 = pregunta.respuesta2;
    NSString *respuesta3 = pregunta.respuesta3;
    
    [cell.botonRespuesta0 setTitle:respuesta0 forState:UIControlStateNormal];
    [cell.botonRespuesta1 setTitle:respuesta1 forState:UIControlStateNormal];
    [cell.botonRespuesta2 setTitle:respuesta2 forState:UIControlStateNormal];
    [cell.botonRespuesta3 setTitle:respuesta3 forState:UIControlStateNormal];

    //respuestaCorrecta=2;
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

//
//- (IBAction)botonRespuesta0:(id)sender {
//    NSLog(@"Respuesta escogida a");
//    respuestaEscogida=0;
//    if (respuestaEscogida==respuestaCorrecta) {
//        
//        [_botonRespuesta0 setBackgroundColor:[UIColor greenColor]];
//        [_botonRespuesta1 setBackgroundColor:[UIColor redColor]];
//        [_botonRespuesta2 setBackgroundColor:[UIColor redColor]];
//        [_botonRespuesta3 setBackgroundColor:[UIColor redColor]];
//        
//        NSLog(@"Respuesta Correcta!");
//    }
//}
//
//- (IBAction)botonRespuesta1:(id)sender {
//    NSLog(@"Respuesta escogida b");
//    respuestaEscogida=1;
//    if (respuestaEscogida==respuestaCorrecta) {
//        
//        [_botonRespuesta1 setBackgroundColor:[UIColor greenColor]];
//        [_botonRespuesta0 setBackgroundColor:[UIColor redColor]];
//        [_botonRespuesta2 setBackgroundColor:[UIColor redColor]];
//        [_botonRespuesta3 setBackgroundColor:[UIColor redColor]];
//        NSLog(@"Respuesta Correcta!");
//    }
//}
//
//- (IBAction)botonRespuesta2:(id)sender {
//    NSLog(@"Respuesta escogida c");
//    respuestaEscogida=2;
//    if (respuestaEscogida==respuestaCorrecta) {
//        
//        [_botonRespuesta2 setBackgroundColor:[UIColor greenColor]];
//        [_botonRespuesta0 setBackgroundColor:[UIColor redColor]];
//        [_botonRespuesta1 setBackgroundColor:[UIColor redColor]];
//        [_botonRespuesta3 setBackgroundColor:[UIColor redColor]];
//        NSLog(@"Respuesta Correcta!");
//    }
//}
//
//- (IBAction)botonRespuesta3:(id)sender {
//    NSLog(@"Respuesta escogida d");
//    respuestaEscogida=3;
//    if (respuestaEscogida==respuestaCorrecta) {
//        
//        [_botonRespuesta3 setBackgroundColor:[UIColor greenColor]];
//        [_botonRespuesta0 setBackgroundColor:[UIColor redColor]];
//        [_botonRespuesta1 setBackgroundColor:[UIColor redColor]];
//        [_botonRespuesta2 setBackgroundColor:[UIColor redColor]];
//        NSLog(@"Respuesta Correcta!");
//    }
//}
//

    
    






- (IBAction)preguntaSig:(id)sender {
    reset = FALSE;
    TVCeldaPregunta *cell = (TVCeldaPregunta *)[self.tableView dequeueReusableCellWithIdentifier:@"CeldaPregunta"];
    total = _preguntas.count;
    indice= 0;
    indice++;
    NSLog(@"Siguiente");
    
    if (indice>0) {
        [_botonAnterior setEnabled:TRUE];
    }
    if (indice==total-1) {
        [_botonSiguiente setEnabled:FALSE];
    }
    [cell.botonRespuesta3 setTitle:@"PRUEBA" forState:UIControlStateNormal];
    [cell.botonRespuesta3 setBackgroundColor:[UIColor blueColor]];
    [cell.botonRespuesta0 setBackgroundColor:[UIColor blueColor]];
    [cell.botonRespuesta1 setBackgroundColor:[UIColor blueColor]];
    [cell.botonRespuesta2 setBackgroundColor:[UIColor blueColor]];
    reset = TRUE;
    [self.tableView reloadData];
    
}

- (IBAction)preguntaAnt:(id)sender {
    total = _preguntas.count;
    indice --;
    reset = FALSE;
    NSLog(@"aanterios");
    if (indice==0) {
        [_botonAnterior setEnabled:FALSE];
    }
    if (indice<total) {
        [_botonSiguiente setEnabled:TRUE];
    }

    [self.tableView reloadData];
    reset = TRUE;
}
@end
