//
//  HellenCell.m
//  HellenLottery
//
//  Created by bottle on 15-4-20.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "HellenCell.h"
#import "HellenSettingItem.h"
#import "HellenArrowItem.h"
#import "HellenSwitchItem.h"
#import "HellenLabelItem.h"
@interface HellenCell()

@property (nonatomic,strong) UIImageView *arrowView;
@property (nonatomic,strong) UISwitch *switchView;
@property (nonatomic,strong) UILabel *rightLabel;
@end

@implementation HellenCell

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    static NSString *ID = @"setting";
    HellenCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[HellenCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
    }
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setupBg];
    }
    return self;
}

- (void)setupBg {
    // 设置普通背景
    UIView *bg = [[UIView alloc] init];
    bg.backgroundColor = [UIColor whiteColor];
    self.backgroundView = bg;
    //设置选择的颜色
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = [UIColor colorWithRed:237/255.0 green:233/255.0 blue:218/255.0 alpha:1.0];
    self.selectedBackgroundView = view;//[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"LuckyBaseBackground"]];
}

- (UIImageView *)arrowView {
    if (_arrowView == nil) {
        _arrowView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CellArrow"]];
    }
    return _arrowView;
}

- (UISwitch *)switchView {
    if (_switchView == nil) {
        _switchView = [[UISwitch alloc] init];
    }
    return _switchView;
}
- (UILabel *)rightLabel {
    if (_rightLabel == nil) {
        _rightLabel = [[UILabel alloc] init];
        _rightLabel.frame = CGRectMake(0, 0, 50, 20);
        _rightLabel.backgroundColor = [UIColor colorWithRed:255/255.0 green:0/255.0 blue:0/255.0 alpha:1.0];
    }
    return _rightLabel;
}

- (void)setItem:(HellenSettingItem *)item {
    _item = item;
    [self setupData];
    [self setupRightView];
}

- (void)setupData {
    if (self.item.icon) {
        self.imageView.image = [UIImage imageNamed:self.item.icon];
    }
    self.textLabel.text = self.item.title;
}
- (void)setupRightView {
    if ([self.item isKindOfClass:[HellenArrowItem class]]) {
        self.accessoryView = self.arrowView;
    }
    else if ([self.item isKindOfClass:[HellenSwitchItem class]]) {
        self.accessoryView = self.switchView;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }else if ([self.item isKindOfClass:[HellenLabelItem class]]) {
        self.accessoryView = self.rightLabel;
    }else if ([self.item isKindOfClass:[HellenSettingItem class]]){
        self.accessoryView = nil;
    }
}
@end

