//
//  HellenSettingItem.h
//  HellenLottery
//
//  Created by bottle on 15-4-20.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HellenSettingItem : NSObject
@property (nonatomic,copy) NSString *icon;
@property (nonatomic,copy) NSString *title;

+ (instancetype)itemWithIcon:(NSString*)icon title:(NSString*)title;
@end
