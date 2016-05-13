//
// Created by chooda on 13.05.16.
// Copyright (c) 2016 Chudnyi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ComponentKit/ComponentKit.h>

@class DMStory;

@interface DMStoryDetailsComponent : CKComponent
+ (instancetype)newWithStory:(DMStory *)story;
@end