//
//  main.m
//  Car
//
//  Created by Lee Morales on 2019/6/26.
//  Copyright © 2019 Lee Morales. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tire.h"
#import "Engine.h"
#import "Car.h"
#import "V8.h"
#import "AllWeatherRadial.h"

int main (int argc, const char * argv[])
{
    Car *car = [Car new];
    
    for (int i = 0; i < 4; i++){
        Tire *tire = [AllWeatherRadial new];
        [car setTire:tire atIndex: i];
    }
    
    Engine *engine = [V8 new];
    [car setEngine: engine];
    
    [car print];
    
    return (0);
}


