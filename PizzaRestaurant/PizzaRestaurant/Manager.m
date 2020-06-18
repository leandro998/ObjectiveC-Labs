//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Leandro Prado on 2020-06-18.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"

@implementation Manager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    if (toppings != NULL) {
    return TRUE;
    } else { return FALSE; };
}

@end
