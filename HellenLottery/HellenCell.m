//
//  HellenCell.m
//  HellenLottery
//
//  Created by bottle on 15-4-20.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "HellenCell.h"

@implementation HellenCell

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    static NSString *ID = @"setting";
    HellenCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[HellenCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
    }
    return cell;
}

@end

