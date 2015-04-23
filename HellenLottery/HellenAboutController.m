//
//  HellenAboutController.m
//  HellenLottery
//
//  Created by bottle on 15-4-22.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "HellenAboutController.h"
#import "HellenGroup.h"
#import "HellenSettingItem.h"
#import "HellenArrowItem.h"
#import "HellenAboutHeader.h"
@interface HellenAboutController ()

@end

@implementation HellenAboutController

- (void)viewDidLoad {
    [super viewDidLoad];
    HellenGroup *group = [[HellenGroup alloc] init];
    HellenSettingItem *item1 = [HellenArrowItem itemWithIcon:nil title:@"评分支持"];
    HellenSettingItem *item2 = [HellenArrowItem itemWithIcon:nil title:@"客户电话"];
    item2.detailTitle = @"10010";
    group.items = @[item1,item2];
    [self.data addObject:group];
    
    //UINib *nib = [UINib nibWithNibName:@"HellenAboutHeader" bundle:nil];
    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"HellenAboutHeader" owner:nil options:nil];
    
//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0,0, 200, 200)];
//    label.text = @"hahahahhahahha";
//    label.backgroundColor = [UIColor redColor];
    UIView *view = [views objectAtIndex:0];
    //view.frame = CGRectMake(0, 0, 200, 200);
//    view.backgroundColor = [UIColor redColor];
    self.tableView.tableHeaderView  = view;
    //self.view = view;
    
//    NSArray* nibViews =  [[NSBundle mainBundle] loadNibNamed:@"sub" owner:self options:nil];
//    UIView *subView = [nibViews objectAtIndex:0];
//    [self.view addSubview:subView];
}



@end
