//
//  RightOrWrong.h
//  Maths
//
//  Created by Leandro Prado on 2020-06-10.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RightOrWrong : NSObject

@property int rightAnswer;
@property int wrongAnswer;
@property int count;

- (void) correct;
- (void) incorrect;
- (void) questionCounter;
- (NSString *) score;

@end

NS_ASSUME_NONNULL_END
