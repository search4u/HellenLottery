//
//  HellenSettingItem.m
//  HellenLottery
//
//  Created by bottle on 15-4-20.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "HellenSettingItem.h"

@implementation HellenSettingItem


+ (instancetype)itemWithIcon:(NSString*)icon title:(NSString*)title
{
    HellenSettingItem *item = [[self alloc] init];
    item.icon = icon;
    item.title = title;
    return item;
}
//+ (instancetype)itemWithIcon:(NSString*)icon title:(NSString*)title detailTitle:(NSString*)detailTitle {
//    HellenSettingItem *item = [HellenSettingItem itemWithIcon:icon title:title];
//    item.detailTitle = detailTitle;
//    return item;
//}
@end
