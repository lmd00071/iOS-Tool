//
//  AppDelegate.m
//  iOS~Tool
//
//  Created by 李明丹 on 2016/11/15.
//  Copyright © 2016年 李明丹. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstGuideViewController.h"
#import "MainViewController.h"
#import "AdImageTool.h"
#import "AdvertiseView.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    [self.window makeKeyAndVisible];
    if (![[NSUserDefaults standardUserDefaults] boolForKey:@"isFirstComoin"]) {
        FirstGuideViewController *vc = [[FirstGuideViewController alloc]init];
        //        vc.imageList = @[@"9",@"10",@"11"];
        vc.controllerName = NSStringFromClass([MainViewController class]);
        self.window.rootViewController = vc;
    }
    else
    {
        self.window.rootViewController = [[UINavigationController alloc]initWithRootViewController:[[MainViewController alloc]init]];
        // 判断沙盒中是否存在广告图片，如果存在，直接显示
        NSString *filePath = [AdImageTool getFilePathWithImageName:[kUserDefaults valueForKey:adImageName]];
        BOOL isExist = [AdImageTool isFileExistWithFilePath:filePath];
        AdvertiseView *advertiseView = [[AdvertiseView alloc] initWithFrame:self.window.bounds];
        if (isExist) {// 图片存在
            
            advertiseView.filePath = filePath;
            [advertiseView show];
        }
        else{
            advertiseView.localImage = @"4";   //本地图片
            [advertiseView show];

        }

        
    }
    

    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
