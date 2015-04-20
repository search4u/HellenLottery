//
//  UIImage+Hellen.m
//  HellenLottery
//
//  Created by bottle on 15-4-14.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "UIImage+Hellen.h"

@implementation UIImage (Hellen)

+ (UIImage *)resizableImage:(NSString *)name {
    UIImage *img = [UIImage imageNamed:name];
    CGFloat left = img.size.width * 0.5;
    CGFloat right = left;
    CGFloat top = img.size.height * 0.5;
    CGFloat bottom = top;
    UIImage *newImage = [img resizableImageWithCapInsets:UIEdgeInsetsMake(top, left, bottom, right) resizingMode:UIImageResizingModeStretch];
    return  newImage;
}

@end
