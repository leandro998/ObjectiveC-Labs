//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Leandro Prado on 2020-06-17.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype) init {
    self = [super init];
    if (self) {
        _size = medium;
        _toppings = [[NSArray alloc] initWithObjects:@"Peperoni", @"Cheese", @"Ham", @"Pineapple", nil];
    }
    return self;
}

-(NSString *)pizzaSizeToString:(PizzaSize)size {
    NSString *strPizzaSize = nil;
    switch (size) {
        case small:
            strPizzaSize = (@"small");
            break;
        case medium:
            strPizzaSize = (@"medium");
            break;
        case large:
            strPizzaSize = (@"large");
            break;
        default:
            strPizzaSize = (@"Error");
            break;
    }
    return strPizzaSize;
}



@end
