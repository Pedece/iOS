//
//  TVPreguntasViewController.h
//  TutorialVistas
//
//  Created by Pablo on 19/01/14.
//  Copyright (c) 2014 Pablo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TVPreguntasViewController : UITableViewController{
    int total;
    int indice;
  //  int respuestaCorrecta;
    int respuestaEscogida;
    BOOL reset;
}

@property (nonatomic, strong) NSMutableArray *preguntas;

//- (IBAction)botonRespuesta0:(id)sender;
//- (IBAction)botonRespuesta1:(id)sender;
//- (IBAction)botonRespuesta2:(id)sender;
//- (IBAction)botonRespuesta3:(id)sender;
- (IBAction)preguntaSig:(id)sender;
- (IBAction)preguntaAnt:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *botonAnterior;
@property (weak, nonatomic) IBOutlet UIButton *botonSiguiente;
//
//@property (weak, nonatomic) IBOutlet UIButton *botonRespuesta0;
//@property (weak, nonatomic) IBOutlet UIButton *botonRespuesta1;
//@property (weak, nonatomic) IBOutlet UIButton *botonRespuesta2;
//@property (weak, nonatomic) IBOutlet UIButton *botonRespuesta3;

@end
