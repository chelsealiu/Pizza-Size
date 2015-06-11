//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Chelsea Liu on 6/11/15.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pizza : NSObject

typedef enum PizzaSize {
    small,
    medium,
    large
}PizzaSize;

@property PizzaSize intSizeOfPizza;
@property(nonatomic, strong) NSMutableArray *pizzaToppings;

- (instancetype)initWithSize:(PizzaSize)size toppings:(NSMutableArray *)toppings;

@end
