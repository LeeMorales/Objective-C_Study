//
//  main.m
//  BOOL Party
//
//  Created by Lee Morales on 2019/6/1.
//  Copyright © 2019 Lee Morales. All rights reserved.
//

#import <Foundation/Foundation.h>
//returns No if the two integers have the same value, YES otherwise
BOOL areIntsDifferent (int thing1, int thing2){
    if (thing1 == thing2){
        return (NO);
    }else{
        return (YES);
    }
}

//areIntsDifferent given a No value, return the human-readable string"NO". Otherwise return "YES"
NSString *boolString (BOOL yesNo){
    if (yesNo == NO){
        return (@"NO");
    }else{
        return (@"YES");
    }
}

//BOOLString
int main (int argc, const char *argv[]){
    BOOL areTheyDifferent;
    areTheyDifferent = areIntsDifferent(5, 5);
    NSLog(@"are %d and %d different? %@", 5, 5, boolString(areTheyDifferent));
    
    areTheyDifferent = areIntsDifferent(23, 42);
    NSLog(@"are %d and %d different? %@", 23, 42, boolString(areTheyDifferent));
    
    return (0);
}
//main
