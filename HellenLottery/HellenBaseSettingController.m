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


@end
