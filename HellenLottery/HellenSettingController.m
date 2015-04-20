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
@interface HellenSettingController()

@end

@implementation HellenSettingController

- (void)viewDidLoad {
    [self initDatas];
}

- (void)initDatas {
    HellenGroup *group1 = [[HellenGroup alloc] init];
    HellenSettingItem *item1 = [HellenSettingItem itemWithIcon:@"MorePush" title:@"推送和提醒"];
    HellenSettingItem *item2 = [HellenSettingItem itemWithIcon:@"handShake" title:@"摇一摇机选"];
    HellenSettingItem *item3 = [HellenSettingItem itemWithIcon:@"sound_Effect" title:@"声音效果"];
    NSArray *items = @[item1,item2,item3];
    group1.items = items;
    
    [self.data addObject:group1];
}

@end
