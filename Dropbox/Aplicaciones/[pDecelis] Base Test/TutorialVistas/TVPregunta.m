//
//  TVPregunta.m
//  TutorialVistas
//
//  Created by Pablo on 19/01/14.
//  Copyright (c) 2014 Pablo. All rights reserved.
//

#import "TVPregunta.h"

@implementation TVPregunta

-(id)importar:(NSString *)info :(NSString *)delimitador
{
    NSArray *intermedio = [info componentsSeparatedByString:delimitador];
    
    self.pregunta = intermedio[0];
    self.respuesta0 = intermedio[1];
    self.respuesta1 = intermedio[2];
    self.respuesta2 = intermedio[3];
    self.respuesta3 = intermedio[4];
    self.respuestaCorrecta = (int)intermedio[5];
    
    return self;
    
}

@end
