//
//  main.m
//  Car
//
//  Created by Lee Morales on 2019/6/26.
//  Copyright © 2019 Lee Morales. All rights reserved.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    return NSApplicationMain(argc, argv);
}

@interface Tire : NSObject
@end

@implementation Tire

-(NSString *) description {
    return (@"I am a tire, I last a while" );
}

@end
