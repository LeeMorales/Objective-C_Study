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

@interface AllWeatherRadial : Tire
@end

@implementation Tire

-(NSString *) description {
    return (@"I am a tire" );
}

@end

@implementation AllWeatherRadial
-(NSString *) description {
    return (@"I am a tire for rain and shine");
}
@end

@interface Engine : NSObject
@end

@interface V8 : Engine
@end

@implementation Engine
-(NSString *) description{
    return (@"Engine");
}
@end

@implementation V8
-(NSString *) description{
    return (@"I am a V8! Powerrrrrrrr");
}
@end

@interface Car : NSObject{
    Engine *engine;
    Tire *tires[4];
}
-(Engine *) engine;
-(void) setEngine: (Engine *) newEngine;
-(Tire *) tireAtIndex: (int) index;
-(void) setTire: (Tire *) tire atIndex :(int) index;
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

-(void) setTire: (Tire *) tire atIndex :(int) index{
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
@end

int main (int argc, const char * argv[]){
    Car *car = [Car new];
    Engine *engine = [V8 new];
    [car setEngine: engine];
    for (int i = 0; i < 4; i++){
        Tire *tire = [AllWeatherRadial new];
        [car setTire:tire atIndex:i];
    }
    [car print];
    return (0);
}


