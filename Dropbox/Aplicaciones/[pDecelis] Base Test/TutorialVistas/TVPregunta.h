//
//  TVPregunta.h
//  TutorialVistas
//
//  Created by Pablo on 19/01/14.
//  Copyright (c) 2014 Pablo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TVPregunta : NSObject

@property (nonatomic, copy) NSString *pregunta;
@property (nonatomic, copy) NSString *respuesta0;
@property (nonatomic, copy) NSString *respuesta1;
@property (nonatomic, copy) NSString *respuesta2;
@property (nonatomic, copy) NSString *respuesta3;
@property (nonatomic, assign) int respuestaCorrecta;

-(id)importar:(NSString *)info :(NSString *)delimitador;


@end
