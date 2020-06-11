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
    NSInteger _answer;
}

- (instancetype) init {
    if (self = [super init]) {
        int num1 = arc4random_uniform(91) + 10;
        int num2 = arc4random_uniform(91) + 10;
        int sum = num1 + num2;
        _question = [NSString stringWithFormat:@"%u + %u ?", num1, num2];
        _answer = (NSInteger) sum;
    }
    return self;
}

@end
