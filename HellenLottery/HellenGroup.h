//
//  HellenGroup.h
//  HellenLottery
//
//  Created by bottle on 15-4-20.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HellenGroup : NSObject
/**
 *  header
 */
@property (nonatomic,copy) NSString *header;
/**
 *  footer
 */
@property (nonatomic,copy) NSString *footer;
/**
 *  存放HellenSettingItem的数组
 */
@property (nonatomic,strong) NSMutableArray *items;


@end
