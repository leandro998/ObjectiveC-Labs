//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Leandro Prado on 2020-06-18.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"
#import "Pizza.h"

@implementation DeliveryService

- (void) deliverPizza: (Pizza *)pizza {
    NSLog(@"deliver pizza %@ with toppings: %@", [pizza pizzaSizeToString:[pizza size]], [pizza toppings]);
}

- (void) pizzaArray: (Pizza *)pizza {
    NSArray *pizzaToppings = [pizza toppings];
    NSLog(@"Toppings: %@", pizzaToppings);
}

@end
