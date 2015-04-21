//
//  HellenPushNumController.m
//  HellenLottery
//
//  Created by bottle on 15-4-21.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "HellenPushNumController.h"
#import "HellenGroup.h"
#import "HellenSettingItem.h"
#import "HellenSwitchItem.h"
@implementation HellenPushNumController

- (void)viewDidLoad {
    HellenGroup *group = [[HellenGroup alloc] init];
    group.header = @"打开设置即可在开奖后立即收到推送信息，获知开奖号码";
    HellenSettingItem *item1 = [HellenSwitchItem itemWithIcon:nil title:@"双色球"];
    HellenSettingItem *item2 = [HellenSwitchItem itemWithIcon:nil title:@"大乐透"];
    group.items = @[item1,item2];
    [self.data addObject:group];
}

@end
