//
//  HellenHelpController.m
//  HellenLottery
//
//  Created by bottle on 15-4-22.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "HellenHelpController.h"
#import "HellenHelpItem.h"
#import "HellenGroup.h"
#import "HellenSettingItem.h"
#import "HellenArrowItem.h"
#import "HellenHtmlViewController.h"
#import "HellenNavigationController.h"
@interface HellenHelpController ()
@property (nonatomic,strong) NSArray *items;

@end

@implementation HellenHelpController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupDatas];
}

- (NSArray *)items {
    if (_items == nil) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"help.json" ofType:nil];
        NSData *data = [NSData dataWithContentsOfFile:path];
        NSArray *dictArr = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        NSMutableArray *marray = [NSMutableArray array];
        for (NSDictionary *dict in dictArr) {
            HellenHelpItem *item = [HellenHelpItem itemWithDict:dict];
            [marray addObject:item];
        }
        _items = marray;
    }
    return _items;
}
#pragma mark - 设置cell数据
- (void)setupDatas{
    HellenGroup *group = [[HellenGroup alloc] init];
    for (HellenHelpItem *itemData in self.items) {
        HellenSettingItem *item = [HellenArrowItem itemWithIcon:nil title:itemData.title];
        [group.items addObject:item];
    }
    [self.data addObject:group];
}
#pragma mark - 重写tableviewdelegate方法
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    HellenHtmlViewController *vc = [[HellenHtmlViewController alloc] init];
    HellenHelpItem *item =  self.items[indexPath.row];
    vc.item = item;
    HellenNavigationController *nav = [[HellenNavigationController alloc] initWithRootViewController:vc];
    [self presentViewController:nav animated:YES completion:nil];
}

@end


