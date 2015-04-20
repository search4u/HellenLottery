//
//  HellenTabBar.m
//  HellenLottery
//
//  Created by bottle on 15-4-14.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "HellenTabBar.h"
#import "HellenTabBarButton.h"
@interface HellenTabBar()

@property (nonatomic,weak) HellenTabBarButton *selectedBtn;

@end


@implementation HellenTabBar


- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
    }
    return self;
}

- (void)layoutSubviews {
    //设置按钮的位置
    NSInteger btnCnt = self.subviews.count;
    CGFloat y = 0;
    CGFloat h = self.frame.size.height;
    CGFloat w = self.frame.size.width / btnCnt;

    for (int i=0; i<self.subviews.count; i++) {
        CGFloat x = w * i;
        HellenTabBarButton *btn = self.subviews[i];
        btn.tag = i;
        btn.frame = CGRectMake(x, y, w, h);
        
        if (i == 0) {
            [self didBtnClicked:btn];
        }
    }
    
}

- (void)addButtonWithName:(NSString*)name selName:(NSString*)selName {
    HellenTabBarButton *btn = [HellenTabBarButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:selName] forState:UIControlStateSelected];
    
    //手指按下时调用
    [btn addTarget:self action:@selector(didBtnClicked:) forControlEvents:UIControlEventTouchDown];
    
    [self addSubview:btn];
}

- (void)didBtnClicked:(HellenTabBarButton*) button {
    NSLog(@"点击了%ld",button.tag);
    if ([self.delegate respondsToSelector:@selector(tabBar:fromIndex:toIndex:)]) {
        [self.delegate tabBar:self fromIndex:self.selectedBtn.tag toIndex:button.tag];
    }
    self.selectedBtn.selected = NO;
    button.selected = YES;
    self.selectedBtn = button;
}

@end
