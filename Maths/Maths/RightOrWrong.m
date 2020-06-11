//
//  RightOrWrong.m
//  Maths
//
//  Created by Leandro Prado on 2020-06-10.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

#import "RightOrWrong.h"

@implementation RightOrWrong

- (instancetype) init {
    if (self = [super init]) {
        _rightAnswer = 0;
        _wrongAnswer = 0;
        _count = 0;
    }
    return self;
}

- (void) correct {
    self.rightAnswer = _rightAnswer + 1;
}

- (void) incorrect {
    self.wrongAnswer = _wrongAnswer + 1;
}

- (void) questionCounter {
    self.count = _count + 1;
}

- (NSString *) score {
    float total = 0;
    if (_count != 0) {
        total = (float) _rightAnswer / _count;
    }
    
    return [NSString stringWithFormat:@"You got %d rights out of %d questions. Your score is: %f", _rightAnswer, _count, total];
}

@end
