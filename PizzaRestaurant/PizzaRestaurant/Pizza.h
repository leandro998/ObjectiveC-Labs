//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Leandro Prado on 2020-06-17.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Pizza : NSObject

typedef NS_ENUM(int, PizzaSize) {
    small,
    medium,
    large,
};

@property (nonatomic) PizzaSize size;
@property (nonatomic) NSArray *toppings;

-(NSString *)pizzaSizeToString:(PizzaSize)size;

@end

NS_ASSUME_NONNULL_END
