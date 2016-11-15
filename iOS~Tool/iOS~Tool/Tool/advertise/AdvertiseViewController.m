//
//  AdvertiseViewController.m
//  XiuChe
//
//  Created by 李明丹 on 16/8/8.
//  Copyright © 2016年 嗒嗒修车. All rights reserved.
//
#import "AdvertiseViewController.h"

@interface AdvertiseViewController ()

@property (nonatomic, strong) UIWebView *webView;

@end

@implementation AdvertiseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"广告";
    _webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    _webView.backgroundColor = [UIColor whiteColor];
    if (!self.adUrl || [self.adUrl isEqualToString:@""]) {
        self.adUrl = @"http://www.baidu.com";
    }
    NSURLRequest* request = [NSURLRequest requestWithURL:[NSURL URLWithString:self.adUrl]];
    [_webView loadRequest:request];
    [self.view addSubview:_webView];
}

- (void)setAdUrl:(NSString *)adUrl
{
    _adUrl = adUrl;
}



@end
