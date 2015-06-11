//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"

int main(int argc, const char * argv[]) {


    Kitchen *restaurantKitchen = [Kitchen new];

    Pizza *completedPizza;

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings: ");
        
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
     
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            NSMutableArray *toppingsArray = [[NSMutableArray alloc] init];
            
            PizzaSize tempPizzaSize = small;
            
            if ([commandWords[0]  isEqual: @"small"]) {
                tempPizzaSize = small;
            } else if ([commandWords[0]  isEqual: @"medium"]) {
                tempPizzaSize = medium;
            } else if ([commandWords[0]  isEqual: @"large"]) {
                tempPizzaSize = large;
            }
            
            int x = 1;
            for (x = 1; x < commandWords.count; x++) {
                [toppingsArray addObject:commandWords[x]];
            }
            
            Pizza *finalPizza = [restaurantKitchen makePizzaWithSize:tempPizzaSize toppings:toppingsArray];
            
            NSString *tempSizeString = [[NSString alloc] init];
            
            if (finalPizza.intSizeOfPizza == 0) {
                tempSizeString = @"Small";
            } else if (finalPizza.intSizeOfPizza == 1) {
                tempSizeString = @"Medium";
            } else if (finalPizza.intSizeOfPizza == 2) {
                tempSizeString = @"Large";
            } else {
                tempSizeString = @"size input is not valid; please enter small, medium or large";
            }
            
            NSLog(@"Size of pizza is %@. Toppings include: %@", tempSizeString, finalPizza.pizzaToppings);
            
            }
        
    }
    
    return 0;

}

