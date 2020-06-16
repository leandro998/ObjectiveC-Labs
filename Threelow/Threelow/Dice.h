//
//  Dice.h
//  Threelow
//
//  Created by Leandro Prado on 2020-06-15.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dice : NSObject

@property (nonatomic, strong) NSArray *diceArray;
@property (nonatomic, assign) NSNumber *diceNumber;

-(NSString *)diceValue: (NSNumber *) diceNumber;
-(NSNumber *) randomDice;

@end

NS_ASSUME_NONNULL_END
