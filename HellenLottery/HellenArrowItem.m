//
//  HellenArrowItem.m
//  HellenLottery
//
//  Created by bottle on 15-4-20.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "HellenArrowItem.h"

@implementation HellenArrowItem

+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title class:(Class)vcClass {
    HellenArrowItem *item = [self itemWithIcon:icon title:title];
    item.vcClass = vcClass;
    return item;
}
@end
