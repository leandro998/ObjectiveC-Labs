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
        GameController *hold = [[GameController alloc] init];
        
        NSMutableArray *numbersRolled = [[NSMutableArray alloc] init];
        
        Dice *diceOne = [[Dice alloc] init];
        Dice *diceTwo = [[Dice alloc] init];
        Dice *diceThree = [[Dice alloc] init];
        Dice *diceFour = [[Dice alloc] init];
        Dice *diceFive = [[Dice alloc] init];
        
        bool isPlayer1 = true;
        
        NSInteger actualScore = 0;
        NSInteger minScore = 0;
        
        NSLog(@"Welcome to Threelow double player game");
        
        while (1) {
            //loop to define which player's turn it is:
            
            int move = 5;
            
            if (isPlayer1) {
                NSLog(@"\nPlayer 1 turn:");
            } else {
                NSLog(@"\nPlayer 2 turn:");
            }
            
            while (move > 0) {
                //loop to start the player's move
                NSString *game = [strInput strInput:@"\n Type 'roll' to roll the dice ('q' to quit)"];
                NSLog(@" Number of moves: %d", move);
                if ([game isEqualToString:@"q"]) {
                    break;
                } else if ([game isEqualToString:@"roll"]) {
                    // code to roll and store the dice numbers
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
                    
                    NSLog(@"\nThe dices are: [%@ %@] [%@ %@] [%@ %@] [%@ %@] [%@ %@]",
                          diceOne.diceNumber, [diceOne diceValue:diceOne.diceNumber],
                          diceTwo.diceNumber, [diceTwo diceValue:diceTwo.diceNumber],
                          diceThree.diceNumber, [diceThree diceValue:diceThree.diceNumber],
                          diceFour.diceNumber, [diceFour diceValue:diceFour.diceNumber],
                          diceFive.diceNumber, [diceFive diceValue:diceFive.diceNumber]);
                    
                    while (1) {
                        //loop to give the command to hold/unhold the dices:
                        NSString *holdRequest = [strInput strInput:@"\nTo hold a dice number type which dice it is. \nType 'show' to show which numbers are currently held \nType 'unhold' to unhold certain dice. \nType 'reset' to reset all your held dices. \nType 'back' or 'roll' to roll again."];
                        if ([holdRequest isEqualToString:@"1"]) {
                            [hold holdDice:diceOne.diceNumber];
                        } else if ([holdRequest isEqualToString:@"2"]) {
                            [hold holdDice:diceTwo.diceNumber];
                        } else if ([holdRequest isEqualToString:@"3"]) {
                            [hold holdDice:diceThree.diceNumber];
                        } else if ([holdRequest isEqualToString:@"4"]) {
                            [hold holdDice:diceFour.diceNumber];
                        } else if ([holdRequest isEqualToString:@"5"]) {
                            [hold holdDice:diceFive.diceNumber];
                        } else if ([holdRequest isEqualToString:@"show"]) {
                            NSString *diceArray = [hold.numbersHeld componentsJoinedByString:@", "];
                            NSLog(@"Dice numbers: [%@]", diceArray);
                        } else if ([holdRequest isEqualToString:@"reset"]) {
                            [hold resetDice];
                            NSLog(@"No more holding dices");
                        } else if ([holdRequest isEqualToString:@"back"] || [holdRequest isEqualToString:@"roll"]) {
                            break;
                        } else if ([holdRequest isEqualToString:@"unhold"]) {
                            while (1) {
                                //loop to unhold the dices according to it's position
                                NSString *unholdRequest = [strInput strInput:@"\nType the number would like to unhold? Type 'back' to go back."];
                                if ([unholdRequest isEqualToString:@"1"]) {
                                    [hold unholdDice:[NSNumber numberWithInt:1]];
                                } else if ([unholdRequest isEqualToString:@"2"]) {
                                    [hold unholdDice:[NSNumber numberWithInt:2]];
                                } else if ([unholdRequest isEqualToString:@"3"]) {
                                    [hold unholdDice:[NSNumber numberWithInt:3]];
                                } else if ([unholdRequest isEqualToString:@"4"]) {
                                    [hold unholdDice:[NSNumber numberWithInt:4]];
                                } else if ([unholdRequest isEqualToString:@"5"]) {
                                    [hold unholdDice:[NSNumber numberWithInt:5]];
                                } else if ([unholdRequest isEqualToString:@"6"]) {
                                    [hold unholdDice:[NSNumber numberWithInt:6]];
                                } else if ([unholdRequest isEqualToString:@"back"]) {
                                    break;
                                } else {
                                    NSLog(@"Invalid move\n");
                                }
                            } //finish unhold loop
                        } //finish else if case to unhold
                    } //finish hold/unhold loop
                } else {
                    NSLog(@"Invalid move\n");
                }
                move -= 1;
                actualScore = [hold score]; //hold the actual score before finish loop
            } //finish while move loop
            
            //if case to show the score:
            if (minScore == 0) {
                minScore = actualScore;
                NSLog(@"The total score is: %ld", actualScore);
            } else if (minScore > actualScore){
                minScore = actualScore;
                NSLog(@"You made the best score so far: %ld", actualScore);
            } else {
                NSLog(@"The total score is: %ld, the minimum score is: %ld", actualScore, minScore);
            }
            isPlayer1 = !isPlayer1; //change player
            [hold resetDice]; //reset the numbersHeld before changing players
        } //finish player's loop
    } //finish @autoreleasepool
    return 0;
} //finish main
