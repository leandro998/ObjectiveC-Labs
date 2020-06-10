//
//  main.m
//  ObjectiveCLab2
//
//  Created by Leandro Prado on 2020-06-09.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Box *b1 = [[Box alloc] initWithHeight:10 andWidth:3 andLength:4];
        
        NSLog(@"the initializer parameters are:\n height: %d width: %d length: %d", [b1 height], [b1 width], [b1 length]);
        
    }
    return 0;
}
