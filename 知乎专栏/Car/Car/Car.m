//
//  Car.m
//  Car
//
//  Created by Lee Morales on 2019/7/4.
//  Copyright © 2019 Lee Morales. All rights reserved.
//

#import "Car.h"
#import "Tire.h"
#import "Engine.h"

@implementation Car{
    Tire *tires[4];
    Engine *engine;
}

-(void) setEngine: (Engine *) newEngine {
    engine = newEngine;
}

-(void) setTire: (Tire *) tire
       atIndex :(int) index{
            if (index < 0 || index > 3) {
                    NSLog (@"bad index (%d) in setTire:atIndex:", index);
                    exit(1);
    }
    tires[index] = tire;
}

-(Tire *) tireAtIndex: (int) index{
    if (index < 0 || index > 3) {
        NSLog(@"bad index (%d)in 'tireAtIndex:'", index);
        exit(1);
    }
    return (tires[index]);
}

-(void) print {
    NSLog (@"%@", engine);
    NSLog (@"%@", tires[0]);
    NSLog (@"%@", tires[1]);
    NSLog (@"%@", tires[2]);
    NSLog (@"%@", tires[3]);
}
-(Engine *) engine{
    return (engine);
}
@end
