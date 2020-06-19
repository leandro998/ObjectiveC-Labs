//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//  Updated by Leandro Prado for Objective-C Class @CICCC
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"
#import "Manager.h"
#import "CheeryManager.h"
#import "DeliveryService.h"
#import "DeliveryCar.h"

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        
        Kitchen *restaurantKitchen = [Kitchen new];
        Pizza *newPizza = [Pizza new];
        Manager *manager = [Manager new];
        CheeryManager *cheeryManager = [CheeryManager new];
        DeliveryService *delivery = [DeliveryService new];

        NSLog(@"Please pick your pizza size and toppings.\nAvailable toppings: %@", newPizza.toppings);
        
//        NSLog(@"size: %@", [newPizza pizzaSizeToString:large]);
//        NSLog(@"toppings: %@", newPizza.toppings);
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
//            NSLog(@"your order is: %@", commandWords);
            
            //how to make the manager and cheeryManager receive different orders?
            NSLog(@"the log %hhd", [manager kitchen:restaurantKitchen shouldMakePizzaOfSize:commandWords[0] andToppings:commandWords[1]]);
            
            for (int i = 0; i < commandWords.count; i++) {
                if (i == 0) {
                    NSString *myOrderSize = [restaurantKitchen orderSize:commandWords[i]];
                    NSLog(@"order size sent to kitchen: %@", myOrderSize);
                } else {
                    NSArray *myOrderToppings = [restaurantKitchen orderToppings:commandWords[i]];
                    NSLog(@"order topping sent to kitchen: %@", myOrderToppings);
                }
            } //finish for loop
            
            // And then send some message to the kitchen...
            
            
        } //finish loop
    } //finish @autoreleasepool
    return 0;
} //finish main int

