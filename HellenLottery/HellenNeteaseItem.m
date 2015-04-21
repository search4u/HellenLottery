//
//  HellenNeteaseItem.m
//  HellenLottery
//
//  Created by bottle on 15-4-21.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "HellenNeteaseItem.h"

@implementation HellenNeteaseItem

- (instancetype)initWithDict:(NSDictionary *)dict {
    if (self = [super init]) {
        self.icon = dict[@"icon"];
        self.title = dict[@"title"];
    }
    return self;
}
+ (instancetype)itemWithDict:(NSDictionary *)dict {
    return [[self alloc] initWithDict:dict];
}

@end
