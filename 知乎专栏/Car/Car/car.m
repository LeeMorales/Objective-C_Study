//
//  main.m
//  Car
//
//  Created by Lee Morales on 2019/6/26.
//  Copyright © 2019 Lee Morales. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Tire : NSObject

@end

@implementation Tire

-(NSString *) description {
    return (@"I am a tire" );
}

@end

@interface Engine : NSObject

@end

@implementation Engine

-(NSString *) description{
    return (@"I am a V8 Engine");
}

@end

@interface Car : NSObject{
    Engine *engine;
    Tire *tires[4];
}
-(Engine *) engine;
-(void) setEngine: (Engine *) newEngine;
-(void) print;

@end

@implementation Car
-(id) init{
    if (self = [super init]){
        engine = [Engine new];
        tires[0] = [Tire new];
        tires[1] = [Tire new];
        tires[2] = [Tire new];
        tires[3] = [Tire new];
    }
    return (self);
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
-(void) setEngine: (Engine *) newEngine {
    engine = newEngine;
}

@end

int main (int argc, const char * argv[]){
    Car *car;
    car = [Car new];
    [car print];
    return (0);
}


