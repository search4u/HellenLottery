//
//  HellenSettingItem.h
//  HellenLottery
//
//  Created by bottle on 15-4-20.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^HellenSettingItemOption)();

@interface HellenSettingItem : NSObject
@property (nonatomic,copy) NSString *icon;
@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *detailTitle;
@property (nonatomic,copy) HellenSettingItemOption option;

+ (instancetype)itemWithIcon:(NSString*)icon title:(NSString*)title;
//+ (instancetype)itemWithIcon:(NSString*)icon title:(NSString*)title detailTitle:(NSString*)detailTitle;
@end
