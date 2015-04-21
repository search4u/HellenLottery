//
//  HellenBaseSettingController.m
//  HellenLottery
//
//  Created by bottle on 15-4-20.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "HellenBaseSettingController.h"
#import "HellenGroup.h"
#import "HellenSettingItem.h"
#import "HellenCell.h"
#import "HellenArrowItem.h"
#import "HellenSwitchItem.h"
@implementation HellenBaseSettingController

- (instancetype)init {
    return [super initWithStyle:UITableViewStyleGrouped];
}

- (instancetype)initWithStyle:(UITableViewStyle)style {
    return [super initWithStyle:UITableViewStyleGrouped];
}

- (void)viewDidLoad {
}
- (NSMutableArray *)data {
    if (_data == nil) {
        _data = [NSMutableArray array];
    }
    return _data;
}

#pragma - mark tableview数据源方法
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.data.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    HellenGroup *group = self.data[section];
    return group.items.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //创建cell
    HellenCell *cell = [HellenCell cellWithTableView:tableView];
    //设置cell数据
    HellenGroup *group = self.data[indexPath.section];
    cell.item = group.items[indexPath.row];
    //返回cell
    return cell;
}
- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    HellenGroup *group = self.data[section];
    return group.header;
}

- (NSString*)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    HellenGroup *group = self.data[section];
    return group.footer;
}
#pragma - mark tableview代理方法
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%d---%d",indexPath.section,indexPath.row);
    HellenGroup *group = self.data[indexPath.section];
    HellenSettingItem *item = group.items[indexPath.row];
    if (item.option) {
        item.option();
    }
    if ([item isKindOfClass:[HellenArrowItem class]]) {
        HellenArrowItem *arrowItem = (HellenArrowItem *)item;
        if (!arrowItem.vcClass) return;
        //设置标题
        HellenBaseSettingController *vc = [[arrowItem.vcClass alloc] init];
        vc.title = item.title;
        [[self navigationController] pushViewController:vc animated:YES];
        
    }
}


@end
