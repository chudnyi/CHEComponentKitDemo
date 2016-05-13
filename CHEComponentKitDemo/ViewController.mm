#import "DMStory.h"//
//  ViewController.m
//  CHEComponentKitDemo
//
//  Created by chooda on 13.05.16.
//  Copyright © 2016 Chudnyi. All rights reserved.
//

#import <UIColor_BFPaperColors/UIColor+BFPaperColors.h>
#import "ViewController.h"
#import "DMStoryDetailsComponent.h"
#import "DMStoryBuilder.h"
#import <ComponentKit/ComponentKit.h>

@interface ViewController () <CKComponentProvider, CKComponentHostingViewDelegate>

@end

@implementation ViewController

+ (CKComponent *)componentForModel:(id <NSObject>)model context:(id <NSObject>)context {
    NSAssert([model isKindOfClass:DMStory.class], @"Unexpected model type: %@", NSStringFromClass(model.class));
    return [DMStoryDetailsComponent newWithStory:(id) model];
}

- (void)viewDidLoad {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

//    self.view.backgroundColor = [UIColor paperColorOrange100];
    NSDate *timestamp = [NSDate date];
    DMStory *story = [[[[[DMStoryBuilder story] withId:@"1"] withTimestamp:timestamp] withTitle:@"Hello world!"] build];


    CKComponentFlexibleSizeRangeProvider *rangeProvider = [CKComponentFlexibleSizeRangeProvider providerWithFlexibility:CKComponentSizeRangeFlexibleHeight];
    CKComponentHostingView *hostingView = [[CKComponentHostingView alloc] initWithComponentProvider:self.class sizeRangeProvider:rangeProvider];
    self.view = hostingView;

    hostingView.delegate = self;
    [hostingView updateModel:story mode:CKUpdateModeAsynchronous];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)componentHostingViewDidInvalidateSize:(CKComponentHostingView *)hostingView {
    NSLog(@"%s", __PRETTY_FUNCTION__);
}


@end
