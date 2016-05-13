//
// Created by chooda on 13.05.16.
// Copyright (c) 2016 Chudnyi. All rights reserved.
//

#import "DMStoryDetailsComponent.h"
#import "DMStory.h"


@implementation DMStoryDetailsComponent

+ (instancetype)newWithStory:(DMStory *)story {
    return [self newWithView:{[UIView class], {{@selector(setBackgroundColor:), [UIColor redColor]}}} size:{100, 100}];
}

@end