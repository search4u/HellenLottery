 //
//  HellenSettingController.m
//  HellenLottery
//
//  Created by bottle on 15-4-20.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "HellenSettingController.h"
#import "HellenCell.h"
#import "HellenGroup.h"
#import "HellenSettingItem.h"
#import "HellenArrowItem.h"
#import "HellenSwitchItem.h"
#import "HellenMorePushController.h"
#import "HellenMoreNeteaseController.h"
#import "MBProgressHUD+MJ.h"
@interface HellenSettingController()

@end

@implementation HellenSettingController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"设置";
    [self initDatas];
}

- (void)initDatas {
    HellenGroup *group1 = [[HellenGroup alloc] init];
    HellenSettingItem *item1 = [HellenArrowItem itemWithIcon:@"MorePush" title:@"推送和提醒" destController:[HellenMorePushController class]];
    HellenSettingItem *item2 = [HellenSwitchItem itemWithIcon:@"handShake" title:@"摇一摇机选"];
    HellenSettingItem *item3 = [HellenSwitchItem itemWithIcon:@"sound_Effect" title:@"声音效果"];
    NSArray *items = @[item1,item2,item3];
    group1.items = items;
    [self.data addObject:group1];
    HellenGroup *group2 = [[HellenGroup alloc] init];
    HellenSettingItem *item20 = [HellenArrowItem itemWithIcon:@"MoreUpdate" title:@"检查新版本"];
    item20.option = ^{
        [MBProgressHUD showMessage:@"正在检查更新..."];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [MBProgressHUD hideHUD];
            [MBProgressHUD showError:@"没有新版本"];
        });
    };
    HellenSettingItem *item21 = [HellenArrowItem itemWithIcon:@"MoreHelp" title:@"帮助" destController:nil];
    HellenSettingItem *item22 = [HellenArrowItem itemWithIcon:@"MoreShare" title:@"分享" destController:nil];
    HellenSettingItem *item23 = [HellenArrowItem itemWithIcon:@"MoreMessage" title:@"查看消息" destController:nil];
    HellenSettingItem *item24 = [HellenArrowItem itemWithIcon:@"MoreNetease" title:@"产品推荐" destController:[HellenMoreNeteaseController class]];
    HellenSettingItem *item25 = [HellenArrowItem itemWithIcon:@"MoreAbout" title:@"关于" destController:nil];
    NSArray *items2 = @[item20,item21,item22,item23,item24,item25];
    group2.items = items2;
    [self.data addObject:group2];
}

@end
