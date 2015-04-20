//
//  HellenArrowItem.h
//  HellenLottery
//
//  Created by bottle on 15-4-20.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "HellenSettingItem.h"

@interface HellenArrowItem : HellenSettingItem

@property (nonatomic,assign) Class vcClass;

+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title class:(Class)vcClass;
@end
