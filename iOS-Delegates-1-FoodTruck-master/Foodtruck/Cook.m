//
//  Cook.m
//  Foodtruck
//
//  Created by Leandro Prado on 2020-06-11.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "Cook.h"

@implementation Cook

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food {
    if ([food isEqualToString:@"bao"]) {
        return 10;
    } else if ([food isEqualToString:@"shortbread"]) {
        return 5;
    } else {
        NSLog(@"Not available");
    }
    return 0;
}

@end

