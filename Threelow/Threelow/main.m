//
//  main.m
//  Threelow
//
//  Created by Leandro Prado on 2020-06-15.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInput.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        UserInput *strInput = [[UserInput alloc] init];
        NSString *game = [strInput strInput:@"\n Type 'roll' to roll the dice"];
    }
    return 0;
}
