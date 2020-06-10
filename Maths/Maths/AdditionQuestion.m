//
//  AdditionQuestion.m
//  Maths
//
//  Created by Leandro Prado on 2020-06-09.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion {
    NSString *_question;
    NSInteger *_answer;
}

- (instancetype)init {
    if (self = [super init]) {
        NSInteger num1 = arc4random_uniform(100);
        NSInteger num2 = arc4random_uniform(100);
        _question = ([@"%d + %d ?", num1, num2]);
        _answer = num1 + num2;
    }
    return self;
}

@end
