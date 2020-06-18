//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

-(NSString *) orderSize: myOrderSize {
    return myOrderSize;
}

-(NSArray *) orderToppings: myOrderToppings {
    return myOrderToppings;
}

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    if (toppings != NULL) {
    return TRUE;
    } else { return FALSE; };
}

-(BOOL)kitchenShouldUpgradeOrder: (Kitchen *)kitchen {
    return FALSE;
}

-(void)kitchenDidMakePizza: (Pizza *) pizza {
    if (pizza != NULL) {
        NSLog(@"Pizza ready!");
    } else {
        NSLog(@"Pizza not done");
    }
}

@end
