//
//  HellenBuyController.m
//  HellenLottery
//
//  Created by bottle on 15-4-14.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "HellenBuyController.h"
#import "HellenTitleButton.h"
@interface HellenBuyController ()
@property (weak, nonatomic) IBOutlet HellenTitleButton *titleBtn;
- (IBAction)allClicked:(UIButton *)sender;

@end

@implementation HellenBuyController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)allClicked:(UIButton *)sender {
    [UIView animateWithDuration:0.25 animations:^{
        self.titleBtn.imageView.transform = CGAffineTransformMakeRotation(M_PI);
    }];
}
@end
