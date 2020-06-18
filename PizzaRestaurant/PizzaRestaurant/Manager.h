//
//  Manager.h
//  PizzaRestaurant
//
//  Created by Leandro Prado on 2020-06-18.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"

NS_ASSUME_NONNULL_BEGIN

@interface Manager : NSObject <KitchenDelegate>

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;

@end

NS_ASSUME_NONNULL_END
