//
//  TVAppDelegate.h
//  TutorialVistas
//
//  Created by Pablo on 19/01/14.
//  Copyright (c) 2014 Pablo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TVAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, assign) int respuestaCorrecta;

-(void)importar;


@end
