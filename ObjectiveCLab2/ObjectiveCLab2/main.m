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
        Box *b1 = [[Box alloc] initWithHeight:10 andWidth:6 andLength:8];
        Box *b2 = [[Box alloc] initWithHeight:5 andWidth:3 andLength:4];
        NSLog(@"the initializer parameters are:\n height: %f width: %f length: %f", [b1 height], [b1 width], [b1 length]);
        NSLog(@"the volume of box one is: %f", [b1 boxVolume]);
        NSLog(@"the volume of box two is: %f", [b2 boxVolume]);
        
        NSLog(@"how many box two fit inside box one: %d", [b2 howManyBoxes:b1]);
    }
    return 0;
}
