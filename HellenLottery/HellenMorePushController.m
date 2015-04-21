//
//  HellenMorePushController.m
//  HellenLottery
//
//  Created by bottle on 15-4-21.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "HellenMorePushController.h"
#import "HellenGroup.h"
#import "HellenSettingItem.h"
#import "HellenArrowItem.h"
#import "HellenPushNumController.h"
#import "HellenLiveController.h"
#import "HellenAnimationController.h"
@implementation HellenMorePushController

- (void)viewDidLoad {
    HellenGroup *group = [[HellenGroup alloc] init];
    HellenSettingItem *item1 = [HellenArrowItem itemWithIcon:nil title:@"开奖号码推送" destController:[HellenPushNumController class]];
    HellenSettingItem *item2 = [HellenArrowItem itemWithIcon:nil title:@"中奖动画" destController:[HellenAnimationController class]];
    HellenSettingItem *item3 = [HellenArrowItem itemWithIcon:nil title:@"比分直播提醒" destController:[HellenLiveController class]];
    HellenSettingItem *item4 = [HellenArrowItem itemWithIcon:nil title:@"购彩定时提醒" destController:nil];
    group.items = @[item1,item2,item3,item4];
    [self.data addObject:group];
}
@end
