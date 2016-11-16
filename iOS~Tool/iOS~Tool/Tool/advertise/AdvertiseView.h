//
//  LmdImageTool.h
//  XiuChe
//
//  Created by 李明丹 on 16/8/8.
//  Copyright © 2016年 嗒嗒修车. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kscreenWidth [UIScreen mainScreen].bounds.size.width
#define kscreenHeight [UIScreen mainScreen].bounds.size.height
#define kUserDefaults [NSUserDefaults standardUserDefaults]
static NSString *const adImageName = @"adImageName";
static NSString *const adUrl = @"adUrl";
@interface AdvertiseView : UIView

/** 显示广告页面方法*/
- (void)show;

/** 图片路径*/
@property (nonatomic, copy) NSString *filePath;


@property (nonatomic, copy) NSString *localImage;



@end
