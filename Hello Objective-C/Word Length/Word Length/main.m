//
//  main.m
//  Word Length
//
//  Created by Lee Morales on 2019/5/23.
//  Copyright © 2019 Lee Morales. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    FILE *wordFile = fopen("/usr/leemorales/Documents/Computeer-Science-Learning/Examples/1.txt", "r");
    char word[100];
    while (fgets(word, 100, wordFile)){
        //strip off the trailing \n
        word[strlen(word)-1] = '\0';
        NSLog(@"%s is %lu characters long", word,strlen(word));
    }
    fclose(wordFile);
    return 0;
}
