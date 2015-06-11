//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Chelsea Liu on 6/11/15.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza


- (instancetype)initWithSize:(PizzaSize)size toppings:(NSMutableArray *)toppings
{
    self = [super init];
    if (self) {
        _pizzaToppings = toppings; //makes pointers equal to each other
        _intSizeOfPizza = size; //makes pointers equal to each other
    }
    return self;
}

@end

