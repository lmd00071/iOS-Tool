//
//  LMDCommon.h
//  iOS~Tool
//
//  Created by 李明丹 on 2016/11/15.
//  Copyright © 2016年 李明丹. All rights reserved.
//

#ifndef LMDCommon_h
#define LMDCommon_h

#import "UIColor+HexColor.h"


//宽度
#define kScreenWidth                        [UIScreen mainScreen].bounds.size.width
#define kScreenHeight                       [UIScreen mainScreen].bounds.size.height
#define kScreenScale_iphon6                ([UIScreen mainScreen].bounds.size.width/375.0)
#define kScreenScale_iphon6P               ([UIScreen mainScreen].bounds.size.width/414.0)

#define _Iphone4_                           (kScreenHeight <= 480)

#define _IsSystemLessIOS8                   ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0)

#define WeakSelf                __weak typeof(self) weakself = self;
#define StrongSelf              __strong typeof(self) strongself = weakself;

//打印调试
#if DEBUG
#define LMDLog(fmt,...)    NSLog((@"%s [Line %d] " fmt),__PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);  /**<输出语句*/
#else
#define LMDLog(fmt, ...)
#endif

#define kDDNavigationMainColorHexColor    [UIColor colorWithHexString:@"49c6d8"]
#define kDDNavigationMainColorRGBColor    [UIColor colorWithRed:73.0/255.0 green:198.0/255.0 blue:216.0/255.0 alpha:1.0]
#define kDDMainBGColorHexColor            [UIColor colorWithHexString:@"49c6d8"]
#define kDDMainBGColorRGBColor            [UIColor colorWithRed:73.0/255.0 green:198.0/255.0 blue:216.0/255.0 alpha:1.0]
#define kDDNeihanColor                    [UIColor colorWithRed:0.97f green:0.97f blue:0.97f alpha:1.00f];




#endif /* LMDCommon_h */
