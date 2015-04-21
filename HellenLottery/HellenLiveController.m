//
//  HellenLiveController.m
//  HellenLottery
//
//  Created by bottle on 15-4-21.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "HellenLiveController.h"
#import "HellenGroup.h"
#import "HellenSettingItem.h"
#import "HellenSwitchItem.h"
#import "HellenLabelItem.h"
@implementation HellenLiveController

- (void)viewDidLoad {
    HellenGroup *group = [[HellenGroup alloc]init];
    group.footer = @"当我关注的比赛比分发生变化时，通过小弹窗或推送进行提醒";
    HellenSettingItem *item1 = [HellenSwitchItem itemWithIcon:nil title:@"提醒我关注比赛"];
    group.items = @[item1];
    [self.data addObject:group];
    
    HellenGroup *group2 = [[HellenGroup alloc] init];
    group2.header = @"只有在以下时间接受比分直播";
    HellenSettingItem *item2 = [HellenLabelItem itemWithIcon:nil title:@"起始时间"];
    group2.items = @[item2];
    [self.data addObject:group2];
    
    HellenGroup *group3 = [[HellenGroup alloc] init];
    HellenSettingItem *item3 = [HellenLabelItem itemWithIcon:nil title:@"结束时间"];
    group3.items = @[item3];
    [self.data addObject:group3];
}
@end
