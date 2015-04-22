//
//  HellenNeteaseCell.m
//  HellenLottery
//
//  Created by bottle on 15-4-21.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "HellenNeteaseCell.h"
#import "HellenNeteaseItem.h"
@interface HellenNeteaseCell()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *labelView;

@end

@implementation HellenNeteaseCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setCellData:(HellenNeteaseItem *)cellData {
    _cellData = cellData;
    self.imageView.image = [UIImage imageNamed:cellData.icon];
    self.labelView.text = cellData.title;
}
@end
