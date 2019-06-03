//
//  main.m
//  Count 2
//
//  Created by Lee Morales on 2019/6/3.
//  Copyright © 2019 Lee Morales. All rights reserved.
//

#import <objc/runtime.h>

int main(int argc, const char * argv[]){
    
    int count = 5;
    
    NSLog (@"The number from 1 to %d:",count);
    
    for (int i = 1; i <= count; i++){
        NSLog(@"%d\n", i);
    }
    
    return (0);
}
