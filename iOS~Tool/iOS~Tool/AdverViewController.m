//
//  AdvertiseViewController.m
//  iOS~Tool
//
//  Created by 李明丹 on 2016/11/15.
//  Copyright © 2016年 李明丹. All rights reserved.
//

#import "AdverViewController.h"
#import "AdvertiseView.h"
#import "AdImageTool.h"

@interface AdverViewController ()

@end

@implementation AdverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 判断沙盒中是否存在广告图片，如果存在，直接显示
    NSString *filePath = [AdImageTool getFilePathWithImageName:[kUserDefaults valueForKey:adImageName]];
    BOOL isExist = [AdImageTool isFileExistWithFilePath:filePath];
    AdvertiseView *advertiseView = [[AdvertiseView alloc] initWithFrame:self.view.bounds];
    if (isExist) {// 图片存在
        
        advertiseView.filePath = filePath;
        [advertiseView show];
    }
    else{
        advertiseView.localImage = @"4";   //本地图片
        [advertiseView show];
        
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
