//
//  TVCeldaPregunta.h
//  TutorialVistas
//
//  Created by Pablo on 20/01/14.
//  Copyright (c) 2014 Pablo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TVCeldaPregunta : UITableViewCell{
    int respuestaCorrecta;
    int respuestaEscogida;
}

@property (nonatomic, weak) IBOutlet UILabel *labelPregunta;
@property (nonatomic, weak) IBOutlet UILabel *labelRespuesta0;
@property (nonatomic, weak) IBOutlet UILabel *labelRespuesta1;
@property (nonatomic, weak) IBOutlet UILabel *labelRespuesta2;
@property (nonatomic, weak) IBOutlet UILabel *labelRespuesta3;

- (IBAction)botonRespuesta0:(id)sender;
- (IBAction)botonRespuesta1:(id)sender;
- (IBAction)botonRespuesta2:(id)sender;
- (IBAction)botonRespuesta3:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *botonRespuesta0;
@property (weak, nonatomic) IBOutlet UIButton *botonRespuesta1;
@property (weak, nonatomic) IBOutlet UIButton *botonRespuesta2;
@property (weak, nonatomic) IBOutlet UIButton *botonRespuesta3;



@end
