//
//  UserInput.m
//  Threelow
//
//  Created by Leandro Prado on 2020-06-15.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

#import "UserInput.h"

@implementation UserInput

-(NSString *)strInput: (NSString *) promptStr {
    NSLog(@"%@", promptStr);
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    
    NSString *inputStr = [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return inputStr;
}

@end
