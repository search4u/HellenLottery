//
//  HellenTitleButton.m
//  HellenLottery
//
//  Created by bottle on 15-4-14.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "HellenTitleButton.h"

@interface HellenTitleButton()
@property (nonatomic,strong) UIFont *titleFont;
@end

@implementation HellenTitleButton
- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self setup];
    }
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}
- (void)setup {
    self.titleFont = [UIFont systemFontOfSize:16];
    self.titleLabel.font = self.titleFont;
    
    self.imageView.contentMode = UIViewContentModeCenter;
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect {
    NSDictionary *attrs = @{NSFontAttributeName : self.titleFont};
    CGFloat titleX = 0;
    CGFloat titleY = 0;
    CGFloat titleH = contentRect.size.height;
    CGFloat titleW = [self.currentTitle boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, CGFLOAT_MAX) options:NSStringDrawingUsesFontLeading attributes:attrs context:nil].size.width;
    return CGRectMake(titleX, titleY, titleW, titleH);
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect {
    CGFloat imageY = 0;
    CGFloat imageW = 30;
    CGFloat imageH = contentRect.size.height;
    CGFloat imageX = contentRect.size.width - imageW;
    return CGRectMake(imageX, imageY, imageW, imageH);
}
@end
