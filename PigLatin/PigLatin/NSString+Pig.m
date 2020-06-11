//
//  NSString+Pig.m
//  PigLatin
//
//  Created by Leandro Prado on 2020-06-10.
//  Addapted from Graeme Harrison on 2016-01-15.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

#import "NSString+Pig.h"

@implementation NSString (Pig)

-(NSString *)stringByPigLatinization {
//    create array of letters:
    NSMutableArray * letters = [[NSMutableArray alloc] initWithCapacity: [self length]];
    
//    insert all letters inside the array:
    for (int i = 0; i < [self length]; i++) {
        NSString *letter = [NSString stringWithFormat:@"%c", [self characterAtIndex:i]];
        [letters addObject:letter];
    }
//    check the user input in letters and the array created:
//    NSLog(@"the array letters is: %@", letters);
//    NSLog(@"letters: %@", [letters componentsJoinedByString:@""]);
    
//    define the vowels:
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"AEIOUaeiou"];
    
//    separate the vowels from consonants and return empty string where is vowel:
    NSMutableArray *consonantArray = [[self componentsSeparatedByCharactersInSet:vowels] mutableCopy];
//    each consonant is stored as 1 item of the array. When there is 2 or more consonants together they are stored in same index. Check:
//    NSLog(@"consonantExtract is: %@", consonantExtract);
    
//    get the first consonant at index 0 (or double consonants):
        NSString *firstChar = [consonantArray objectAtIndex:0];
//    check which is the firstChar:
//        NSLog(@"firstChar: %@", firstChar);
        
        NSMutableArray *extractedConsonant = [[NSMutableArray alloc] initWithCapacity:[firstChar length]];
        for (int i=0; i < [firstChar length]; i++) {
            NSString *letter  = [NSString stringWithFormat:@"%c", [firstChar characterAtIndex:i]];
            [extractedConsonant addObject:letter];
//            check each letter on the loop:
//            NSLog(@"letter is: %@", letter);
        }
//    check what is the first consonants extracted:
//        NSLog(@"the consonant extracted from the beginning is: %@", [extractedConsonant componentsJoinedByString:@""]);

//        define how many consonants were extracted:
        NSRange range = NSMakeRange(0, [firstChar length]);
    
//    remove the consonants from the original array:
        [letters removeObjectsInRange:range];
    
//    add the extracted consonants and then "ay" at the end of the original array:
        [letters addObject:firstChar];
        [letters addObject:@"ay"];
        
        NSString *finalWord =  [letters componentsJoinedByString:@""];
        
        return finalWord;
    
}

@end
