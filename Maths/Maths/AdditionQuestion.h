//
//  AdditionQuestion.h
//  Maths
//
//  Created by Leandro Prado on 2020-06-09.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject

// must create property to call the variable inside main.m
@property NSString *_question;
@property NSString *_answer;

- (instancetype) init;

@end

NS_ASSUME_NONNULL_END
