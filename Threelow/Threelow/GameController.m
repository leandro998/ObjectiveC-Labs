//
//  GameController.m
//  Threelow
//
//  Created by Leandro Prado on 2020-06-16.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (instancetype) init {
    self = [super init];
    if (self) {
        _numbersHeld = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)holdDice: (NSNumber *)heldNumber {
    //add the number to the array
    [self.numbersHeld addObject:heldNumber];
}

-(void)unholdDice: (NSNumber *)unholdNumber {
    if ([self.numbersHeld containsObject:unholdNumber]) {
        [self.numbersHeld removeObject:unholdNumber];
    }
}

-(void)resetDice {
    [self.numbersHeld removeAllObjects];
}

-(NSInteger)score {
    NSInteger sum = 0;
    for(NSNumber *num in self.numbersHeld) {
        sum += [num intValue];
    }
    return sum;
}

@end
