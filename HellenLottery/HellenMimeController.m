//
//  HellenMimeController.m
//  HellenLottery
//
//  Created by bottle on 15-4-14.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "HellenMimeController.h"
#import "UIImage+Hellen.h"
#import "HellenSettingController.h"
@interface HellenMimeController ()
@property (weak, nonatomic) IBOutlet UIButton *logBtn;
- (IBAction)setting:(id)sender;

@end

@implementation HellenMimeController


- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *norImg = [UIImage resizableImage:@"RedButton"];
    UIImage *pressImg = [UIImage resizableImage:@"RedButtonPressed"];
    [self.logBtn setBackgroundImage:norImg forState:UIControlStateNormal];
    [self.logBtn setBackgroundImage:pressImg forState:UIControlStateHighlighted];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)setting:(id)sender {
    UINavigationController *vc = [self navigationController];
    [vc pushViewController:[[HellenSettingController alloc] init] animated:YES];
}
@end
