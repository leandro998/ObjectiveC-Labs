//
//  CheeryManager.m
//  PizzaRestaurant
//
//  Created by Leandro Prado on 2020-06-18.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "CheeryManager.h"

@implementation CheeryManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    if ([toppings containsObject:@"anchovies"]) {
    return FALSE;
    } else { return TRUE; };
}

@end
