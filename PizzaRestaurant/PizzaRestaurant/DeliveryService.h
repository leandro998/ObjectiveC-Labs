//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Leandro Prado on 2020-06-18.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

NS_ASSUME_NONNULL_BEGIN

@protocol DeliveryServiceDelegate

@end

@interface DeliveryService : NSObject

@property (nonatomic) id<DeliveryServiceDelegate> delegate;

- (void) deliverPizza: (Pizza *)pizza;

@end

NS_ASSUME_NONNULL_END
