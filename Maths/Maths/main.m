//
//  main.m
//  Maths
//
//  Created by Leandro Prado on 2020-06-09.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "RightOrWrong.h"

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
        RightOrWrong *score = [[RightOrWrong alloc] init];
        NSLog(@"Welcome to Math Game, answer what is the sum below ('q' to quit)\n");
        while (1) {
            AdditionQuestion *question1 = [[AdditionQuestion alloc] init];
            NSString *question = (@"The sum of %@", [question1 showQuestion]);
            NSString *strInput = getUserInput(255, question);
            if ([strInput isEqualToString:@"q"]) { break;}
            
            NSNumber *answer = [[[NSNumberFormatter alloc] init] numberFromString:strInput];
            if ([answer integerValue] == [question1 correctAnswer]) {
                [score correct];
                [score questionCounter];
            } else {
                [score incorrect];
                [score questionCounter];
            }
        }
        NSLog(score.score);
    }
    return 0;
}

