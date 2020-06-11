//
//  Cook.h
//  Foodtruck
//
//  Created by Leandro Prado on 2020-06-11.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"

NS_ASSUME_NONNULL_BEGIN

@interface Cook : NSObject <FoodTruckDelegate>;

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food;

@end



NS_ASSUME_NONNULL_END
