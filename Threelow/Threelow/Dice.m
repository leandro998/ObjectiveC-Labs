//
//  Dice.m
//  Threelow
//
//  Created by Leandro Prado on 2020-06-15.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(instancetype) init {
    self = [super init];
        if (self) {
            _diceArray = [[NSArray alloc] initWithObjects:@1, @2, @3, @4, @5, @6, nil];
        }
        return self;
}

-(NSString *)diceValue: (NSNumber *) diceNumber {
    NSArray *diceEmoji = [[NSArray alloc] initWithObjects: @"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅", nil];
    return [diceEmoji objectAtIndex:diceNumber.integerValue-1];
}

-(NSNumber *) randomDice {
    int random = arc4random_uniform((int)self.diceArray.count);
    return [self.diceArray objectAtIndex:random];
}

@end
