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

// must create getter on AdditionQuestion.m to be able to access the instance variable on main.m. If we create property (lines 16 and 17) we will not access correctly.
//@property NSString *_question;
//@property NSString *_answer;

- (instancetype) init;

- (NSString *) showQuestion;

- (NSInteger) correctAnswer;

@end

NS_ASSUME_NONNULL_END
