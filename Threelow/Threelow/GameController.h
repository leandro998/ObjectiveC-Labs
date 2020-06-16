//
//  GameController.h
//  Threelow
//
//  Created by Leandro Prado on 2020-06-16.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject

@property (nonatomic, strong) NSMutableArray *numbersHeld;
@property (nonatomic, strong) NSMutableArray *numbersRolled;

-(void)holdDice: (NSNumber *)heldNumber;
-(void)unholdDice: (NSNumber *)unholdNumber;
-(void)resetDice;
-(NSInteger)score;

@end

NS_ASSUME_NONNULL_END
