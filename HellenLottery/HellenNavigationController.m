//
//  HellenNavigationController.m
//  HellenLottery
//
//  Created by bottle on 15-4-14.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "HellenNavigationController.h"

@interface HellenNavigationController ()

@end

@implementation HellenNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

+(void)initialize {
    //设置全局导航栏背景图片
    UINavigationBar *navBar = [UINavigationBar appearance];
    [navBar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    
    navBar.tintColor = [UIColor whiteColor];
    //设置全局导航栏标题样式
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSForegroundColorAttributeName] = [UIColor whiteColor];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:16];
    [navBar setTitleTextAttributes:attrs];
    //设置UIBarButtonItem样式
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    NSMutableDictionary *attrs1 = [NSMutableDictionary dictionary];
    attrs1[NSForegroundColorAttributeName] = [UIColor whiteColor];
    attrs1[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    [item setTitleTextAttributes:attrs1 forState:UIControlStateNormal];
}
- (void)showViewController:(UIViewController *)vc sender:(id)sender {
    NSLog(@"showViewController");
    vc.hidesBottomBarWhenPushed = YES;
    [super showViewController:vc sender:sender];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    NSLog(@"pushViewController");
    viewController.hidesBottomBarWhenPushed = YES;
    [super pushViewController:viewController animated:animated];
}

//- (UIViewController *)popViewControllerAnimated:(BOOL)animated {
//    NSLog(@"popViewControllerAnimated");
//    return [super popViewControllerAnimated:animated];
//}



@end