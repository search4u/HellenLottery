//
//  HellenNeteaseItem.h
//  HellenLottery
//
//  Created by bottle on 15-4-21.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HellenNeteaseItem : NSObject
@property (nonatomic,copy) NSString *icon;
@property (nonatomic,copy) NSString *title;
/**
 *  包名
 */
@property (nonatomic,copy) NSString *ID;
/**
 * 包名前缀
 */
@property (nonatomic,copy) NSString *protocol;
/**
 *  评分URL
 */
@property (nonatomic,copy) NSString *appStoreUrl;

- (instancetype)initWithDict:(NSDictionary*)dict;
+ (instancetype)itemWithDict:(NSDictionary*)dict;
@end
