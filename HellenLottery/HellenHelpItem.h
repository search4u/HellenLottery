//
//  HellenHelpItem.h
//  HellenLottery
//
//  Created by bottle on 15-4-22.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HellenHelpItem : NSObject
@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *html;
@property (nonatomic,copy) NSString *ID;

- (instancetype)initWithDict:(NSDictionary*)dict;
+ (instancetype)itemWithDict:(NSDictionary*)dict;
@end
