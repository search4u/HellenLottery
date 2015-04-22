//
//  HellenHelpItem.m
//  HellenLottery
//
//  Created by bottle on 15-4-22.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "HellenHelpItem.h"

@implementation HellenHelpItem

- (instancetype)initWithDict:(NSDictionary *)dict {
    if (self = [super init]) {
        self.title = dict[@"title"];
        self.html = dict[@"html"];
        self.ID = dict[@"id"];
    }
    return self;
}

+ (instancetype)itemWithDict:(NSDictionary *)dict {
    return [[self alloc] initWithDict:dict];
}

@end
