//
//  TVCeldaPregunta.m
//  TutorialVistas
//
//  Created by Pablo on 20/01/14.
//  Copyright (c) 2014 Pablo. All rights reserved.
//

#import "TVCeldaPregunta.h"
#import "TVPreguntasViewController.h"

@implementation TVCeldaPregunta

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        //respuestaCorrecta=2;
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)botonRespuesta0:(id)sender {
    NSLog(@"Respuesta escogida a");
    respuestaEscogida=0;
    if (respuestaEscogida==respuestaCorrecta) {

        [_botonRespuesta0 setBackgroundColor:[UIColor greenColor]];
        [_botonRespuesta1 setBackgroundColor:[UIColor redColor]];
        [_botonRespuesta2 setBackgroundColor:[UIColor redColor]];
        [_botonRespuesta3 setBackgroundColor:[UIColor redColor]];
        
        NSLog(@"Respuesta Correcta!");
    }
    
    
}

- (IBAction)botonRespuesta1:(id)sender {
    NSLog(@"Respuesta escogida b");
    respuestaEscogida=1;
    if (respuestaEscogida==respuestaCorrecta) {
        
        [_botonRespuesta1 setBackgroundColor:[UIColor redColor]];
        [_botonRespuesta0 setBackgroundColor:[UIColor greenColor]];
        [_botonRespuesta2 setBackgroundColor:[UIColor redColor]];
        [_botonRespuesta3 setBackgroundColor:[UIColor redColor]];
        NSLog(@"Respuesta Correcta!");
    }
}

- (IBAction)botonRespuesta2:(id)sender {
    NSLog(@"Respuesta escogida c");
    respuestaEscogida=2;
    if (respuestaEscogida==respuestaCorrecta) {
        
        [_botonRespuesta2 setBackgroundColor:[UIColor redColor]];
        [_botonRespuesta0 setBackgroundColor:[UIColor redColor]];
        [_botonRespuesta1 setBackgroundColor:[UIColor greenColor]];
        [_botonRespuesta3 setBackgroundColor:[UIColor redColor]];
        NSLog(@"Respuesta Correcta!");
    }
}

- (IBAction)botonRespuesta3:(id)sender {
    NSLog(@"Respuesta escogida d");
    respuestaEscogida=3;
    if (respuestaEscogida==respuestaCorrecta) {
        
        [_botonRespuesta3 setBackgroundColor:[UIColor redColor]];
        [_botonRespuesta0 setBackgroundColor:[UIColor redColor]];
        [_botonRespuesta1 setBackgroundColor:[UIColor greenColor]];
        [_botonRespuesta2 setBackgroundColor:[UIColor redColor]];
        NSLog(@"Respuesta Correcta!");
    }
    
}
@end
