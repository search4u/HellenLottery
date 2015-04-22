//
//  HellenHtmlViewController.m
//  HellenLottery
//
//  Created by bottle on 15-4-22.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "HellenHtmlViewController.h"
#import "HellenHelpItem.h"
@interface HellenHtmlViewController ()<UIWebViewDelegate>

@end

@implementation HellenHtmlViewController

- (void)loadView {
    self.view = [[UIWebView alloc] init];
}
    
- (void)viewDidLoad {
    [super viewDidLoad];
    UIWebView *webView = (UIWebView*)self.view;
    webView.delegate = self;
    //获取网页的url
    NSURL *url = [[NSBundle mainBundle] URLForResource:self.item.html withExtension:nil];
    //创建请求
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //发送请求
    [webView loadRequest:request];
    
    //设置左上角按钮
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"关闭" style:UIBarButtonItemStyleDone target:self action:@selector(close)];
}

- (void)setItem:(HellenHelpItem *)item {
    _item = item;
    //设置标题
    self.title = item.title;
}

- (void)close {
    [self dismissViewControllerAnimated:YES completion:nil];
}
/**
 *  网页加载完毕的时候调用
 */
- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    // 跳到id对应的网页标签
    
    // 1.拼接Javacript代码
    NSString *js = [NSString stringWithFormat:@"window.location.href = '#%@';", self.item.ID];
    // 2.执行JavaScript代码
    [webView stringByEvaluatingJavaScriptFromString:js];
}
@end
