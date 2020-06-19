//
//  DeliveryCar.m
//  PizzaRestaurant
//
//  Created by Leandro Prado on 2020-06-18.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "DeliveryCar.h"
#import "Pizza.h"

@implementation DeliveryCar

- (void) deliverPizza: (Pizza *)pizza {
    NSLog(@"deliver pizza %@ with toppings: %@", [pizza pizzaSizeToString:[pizza size]], [pizza toppings]);
}

@end
