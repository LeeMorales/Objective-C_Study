//
//  Car.h
//  Car
//
//  Created by Lee Morales on 2019/7/4.
//  Copyright © 2019 Lee Morales. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Tire;
@class Engine;

@interface Car : NSObject

-(void) setEngine: (Engine *) newEngine;

-(Engine *) engine;

-(void) setTire: (Tire *) tire
       atIndex :(int) index;

-(Tire *) tireAtIndex: (int) index;

-(void) print;

@end
