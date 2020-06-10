//
//  main.m
//  Maths
//
//  Created by Leandro Prado on 2020-06-09.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *getUserInput(int maxLength, NSString *prompt) {
    if (maxLength < 1) {
        maxLength = 255;
    }
    NSLog(@"%@ ", prompt);
    char inputChars[maxLength];
    char *result = fgets(inputChars, maxLength, stdin);
    if (result != NULL) {
        return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while (1) {
            NSString *strInput = getUserInput(255, @"\nType your name to enter the Math Game: ('q' to quit)");
            if ([strInput isEqualToString:@"q"]) { break;}
            while (1) {
                NSString *question = getUserInput(255, @"What is the sum of the following numbers:\n");
            }
        }
    }
    return 0;
}
