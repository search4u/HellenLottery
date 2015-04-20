//
//  HellenCell.m
//  HellenLottery
//
//  Created by bottle on 15-4-20.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "HellenCell.h"
#import "HellenSettingItem.h"
@implementation HellenCell

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    static NSString *ID = @"setting";
    HellenCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[HellenCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
    }
    return cell;
}


- (void)setItem:(HellenSettingItem *)item {
    _item = item;
    [self setupData];
}

- (void)setupData {
    if (self.item.icon) {
        self.imageView.image = [UIImage imageNamed:self.item.icon];
    }
    self.textLabel.text = self.item.title;
}
@end

