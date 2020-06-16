//
//  main.m
//  Threelow
//
//  Created by Leandro Prado on 2020-06-15.
//  Updated from Graeme Harrison on 2016-01-13.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInput.h"
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        UserInput *strInput = [[UserInput alloc] init];
        
        NSMutableArray *numbersRolled = [[NSMutableArray alloc] init];
        
        Dice *diceOne = [[Dice alloc] init];
        Dice *diceTwo = [[Dice alloc] init];
        Dice *diceThree = [[Dice alloc] init];
        Dice *diceFour = [[Dice alloc] init];
        Dice *diceFive = [[Dice alloc] init];
        
        int move = 2;
        bool isPlayer1 = true;
        
        NSLog(@"Welcome to Threelow double player game");
        
        while (1) {
            if (isPlayer1) {
                NSLog(@"\nPlayer 1 turn:");
            } else {
                NSLog(@"\nPlayer 2 turn:");
            }
            
            while (move >= 0) {
                NSString *game = [strInput strInput:@"\n Type 'roll' to roll the dice ('q' to quit)"];
                NSLog(@" Number of moves: %d", move);
                if ([game isEqualToString:@"q"]) {
                    break;
                } else if ([game isEqualToString:@"roll"]) {
                    diceOne.diceNumber = [diceOne randomDice];
                    diceTwo.diceNumber = [diceTwo randomDice];
                    diceThree.diceNumber = [diceThree randomDice];
                    diceFour.diceNumber = [diceFour randomDice];
                    diceFive.diceNumber = [diceFive randomDice];
                    
                    [numbersRolled addObject:diceOne.diceNumber];
                    [numbersRolled addObject:diceTwo.diceNumber];
                    [numbersRolled addObject:diceThree.diceNumber];
                    [numbersRolled addObject:diceFour.diceNumber];
                    [numbersRolled addObject:diceFive.diceNumber];
                    
                    NSLog(@"\nThe dices are: %@ %@ %@ %@ %@",
                          [diceOne diceValue:diceOne.diceNumber], [diceTwo diceValue:diceTwo.diceNumber], [diceThree diceValue:diceThree.diceNumber], [diceFour diceValue:diceFour.diceNumber], [diceFive diceValue:diceFive.diceNumber]);
                          //diceOne.diceNumber to get the number.
                } else {
                    NSLog(@"Invalid move\n");
                }
                move -= 1;
            }
            isPlayer1 = !isPlayer1;
            move = 2;
        }
    }
    return 0;
}
