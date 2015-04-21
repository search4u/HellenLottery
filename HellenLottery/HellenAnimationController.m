//
//  HellenAnimationController.m
//  HellenLottery
//
//  Created by bottle on 15-4-21.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "HellenAnimationController.h"
#import "HellenGroup.h"
#import "HellenSettingItem.h"
#import "HellenSwitchItem.h"
@implementation HellenAnimationController
- (void)viewDidLoad {
    HellenGroup *group = [[HellenGroup alloc] init];
    group.header = @"当您有新中奖订单，启动程序时通过动画提醒您。为避免过于频繁，高频彩不会提醒。";
    HellenSettingItem *item = [HellenSwitchItem itemWithIcon:nil title:@"中奖动画"];
    group.items = @[item];
    [self.data addObject:group];
}
@end
