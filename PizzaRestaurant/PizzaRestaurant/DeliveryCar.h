//
//  DeliveryCar.h
//  PizzaRestaurant
//
//  Created by Leandro Prado on 2020-06-18.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryService.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryCar : NSObject <DeliveryServiceDelegate>

- (void) deliverPizza: (Pizza *)pizza;

@end

NS_ASSUME_NONNULL_END
