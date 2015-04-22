//
//  HellenMoreNeteaseController.m
//  HellenLottery
//
//  Created by bottle on 15-4-21.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "HellenMoreNeteaseController.h"
#import "HellenNeteaseItem.h"
#import "HellenNeteaseCell.h"
#define Cell_ID @"netease"
@interface HellenMoreNeteaseController()

@property (nonatomic,strong) NSArray *items;

@end

@implementation HellenMoreNeteaseController

- (instancetype)init {
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.itemSize = CGSizeMake(80, 80);
    layout.minimumInteritemSpacing = 0;
    layout.minimumLineSpacing = 10;
    layout.sectionInset = UIEdgeInsetsMake(layout.minimumLineSpacing, 0, 0, 0);
    return [super initWithCollectionViewLayout:layout];
}

- (NSArray *)items {
    if (_items == nil) {
        //资源路径
        NSString *path = [[NSBundle mainBundle] pathForResource:@"products.json" ofType:nil];
        //加载资源
        NSData *data = [NSData dataWithContentsOfFile:path];
        //将json转化为NSArray或NSDictionary
        NSArray *dictArr = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        //将字典转为模型
        NSMutableArray *arr = [NSMutableArray array];
        for (NSDictionary* dict in dictArr) {
            HellenNeteaseItem *item = [HellenNeteaseItem itemWithDict:dict];
            [arr addObject:item];
        }
        _items = arr;
    }
    return _items;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //注册cell，告诉collectionView将来创建怎样的cell
    //注册xib的cell
    UINib *nib = [UINib nibWithNibName:@"HellenNeteaseCell" bundle:nil];
    [self.collectionView registerNib:nib forCellWithReuseIdentifier:Cell_ID];
    //注册代码生产的cell
    //[self.collectionView registerClass:[HellenNeteaseCell class] forCellWithReuseIdentifier:Cell_ID];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    
}

#pragma mark - 数据源方法
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.items.count;
}
- (UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    HellenNeteaseCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:Cell_ID forIndexPath:indexPath];
    cell.cellData = self.items[indexPath.item];
    return cell;
}
#pragma mark - 代理方法
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%d--",indexPath.item);
    HellenNeteaseItem *item = self.items[indexPath.item];
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@://%@",item.protocol,item.ID]];
    UIApplication *app = [UIApplication sharedApplication];
    if ([app canOpenURL:url]) {
        [app openURL:url];
    }
    else {
        [app openURL:[NSURL URLWithString:item.appStoreUrl]];
    }
}
@end
