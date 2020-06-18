//
//  Kitchen.h
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@protocol KitchenDelegate

@optional
-(void)kitchenDidMakePizza: (Pizza *) pizza;

@end //finish @protocol

@interface Kitchen : NSObject

@property (nonatomic) id<KitchenDelegate> delegate;

-(NSString *) orderSize: myOrderSize;
-(NSArray *) orderToppings: myOrderToppings;

//- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;

-(BOOL)kitchenShouldUpgradeOrder: (Kitchen *)kitchen;

@end //finish @property
