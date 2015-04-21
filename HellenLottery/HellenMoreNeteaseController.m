//
//  HellenMoreNeteaseController.m
//  HellenLottery
//
//  Created by bottle on 15-4-21.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "HellenMoreNeteaseController.h"
#import "HellenNeteaseItem.h"
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
        
    }
    return _items;
}

#pragma mark - 数据源方法
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 0;
}
- (UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}
@end
