//
//  main.m
//  Reconstruct-File indirection
//
//  Created by Lee Morales on 2019/5/22.
//  Copyright © 2019 Lee Morales. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
    const char *words[4] = {"Joe-Bob \"Handyman\"Brown","Jacksonville \"Sly\" Murphy", "Shinara Bain", "Geoge\"Guitar\"Books"};
    int wordCount = 4;
    for (int i = 0; i < wordCount; i++){
        NSLog(@"%s is %lu characters long", words[i], strlen(words[i]));
    }
    return 0;
}

