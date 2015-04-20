//
//  HellenTabBar.h
//  HellenLottery
//
//  Created by bottle on 15-4-14.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HellenTabBar;
@protocol HellenTabBarDelegate <NSObject>

@optional
- (void)tabBar:(HellenTabBar*)tabBar fromIndex:(NSInteger)from toIndex:(NSInteger)to;

@end

@interface HellenTabBar : UIView
@property (nonatomic,weak) id<HellenTabBarDelegate> delegate;
- (void)addButtonWithName:(NSString*)name selName:(NSString*)selName;
@end
