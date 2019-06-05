//
//  main.m
//  Word-Length
//
//  Created by Lee Morales on 2019/6/5.
//  Copyright © 2019 Lee Morales. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]){
    const char *words[5] = {"Go", "And", "play", "with", "yourself"};
    int wordCount = 5;
    for (int i = 0; i < wordCount; i++){
        NSLog(@"%s is %lu characters long",words[1], strlen(words[i]));
    }
    return (0);
}
