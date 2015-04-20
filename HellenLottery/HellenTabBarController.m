//
//  HellenTabBarController.m
//  HellenLottery
//
//  Created by bottle on 15-4-14.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "HellenTabBarController.h"
#import "HellenTabBar.h"
@interface HellenTabBarController ()<HellenTabBarDelegate>
@property (nonatomic,weak) HellenTabBar *cusTabbar;
@end

@implementation HellenTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self initNavigationBar];
    HellenTabBar *tabbar = [[HellenTabBar alloc] init];
    tabbar.frame = self.tabBar.bounds;
    tabbar.delegate = self;
    self.cusTabbar = tabbar;
    [self.tabBar addSubview:tabbar];
    
    for (int i = 0; i < self.viewControllers.count; i++) {
        NSString *name = [NSString stringWithFormat:@"TabBar%d",i+1];
        NSString *selName = [NSString stringWithFormat:@"TabBar%dSel",i+1];
        [tabbar addButtonWithName:name selName:selName];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



#pragma mark - HellenTabBarDelegate方法

- (void)tabBar:(HellenTabBar *)tabBar fromIndex:(NSInteger)from toIndex:(NSInteger)to {
    self.selectedIndex = to;
}
@end
