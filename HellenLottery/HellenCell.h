//
//  HellenCell.h
//  HellenLottery
//
//  Created by bottle on 15-4-20.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HellenSettingItem;
@interface HellenCell : UITableViewCell

@property (nonatomic,copy) HellenSettingItem *item;

+ (instancetype)cellWithTableView:(UITableView*)tableView;

@end
