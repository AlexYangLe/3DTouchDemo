//
//  AppDelegate.m
//  touchDemo
//
//  Created by 杨乐乐 on 16/7/11.
//  Copyright © 2016年 com.gampTech. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "favriteViewController.h"
#import "bookTableViewController.h"
#import "contactViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *mainVC = [storyboard instantiateViewControllerWithIdentifier:@"mainController"];
    UINavigationController *mainNaVC = [[UINavigationController alloc] initWithRootViewController:mainVC];
    self.window.rootViewController = mainNaVC;
    
    UIApplicationShortcutIcon *favrite = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeFavorite];
    UIApplicationShortcutItem *itemOne = [[UIApplicationShortcutItem alloc] initWithType:@"favrite" localizedTitle:@"就是这🐑任性" localizedSubtitle:nil icon:favrite userInfo:nil];
    UIApplicationShortcutIcon *bookMark = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeBookmark];
    UIApplicationShortcutItem *itemTwo = [[UIApplicationShortcutItem alloc] initWithType:@"book" localizedTitle:@"猴赛雷" localizedSubtitle:nil icon:bookMark userInfo:nil];
    //自定义ShortcutIcon
    UIApplicationShortcutIcon *iconContact = [UIApplicationShortcutIcon iconWithTemplateImageName:@"contact"];
    UIApplicationShortcutItem *itemThree = [[UIApplicationShortcutItem alloc] initWithType:@"contact" localizedTitle:@"孙子来电话了" localizedSubtitle:nil icon:iconContact userInfo:nil];
    [UIApplication sharedApplication].shortcutItems = @[itemOne, itemTwo, itemThree];
    
    favriteViewController *favriteVC = [[favriteViewController alloc] init];
    bookTableViewController *bookTabVC = [[bookTableViewController alloc] init];
    contactViewController *contactVC = [[contactViewController alloc] init];
    
    NSArray *array = @[favriteVC, bookTabVC, contactVC];
    mainVC.tabBarController.viewControllers = array;
    
    //如果app不在后台已杀死，则处理通过快捷选项标签进入app的逻辑在此处
    UIApplicationShortcutItem *shortcutItem = [launchOptions valueForKey:UIApplicationLaunchOptionsShortcutItemKey];
    
    if(shortcutItem){
        if([shortcutItem.type isEqualToString:@"favrite"])
        {
            NSLog(@"就是这🐑任性");
            [mainNaVC pushViewController:favriteVC animated:NO];
        } else if ([shortcutItem.type isEqualToString:@"book"])
        {
            NSLog(@"猴赛雷");
            [mainNaVC pushViewController:bookTabVC animated:NO];
        } else {
            NSLog(@"孙子来电话了");
            [mainNaVC pushViewController:contactVC animated:NO];
            
        }
        return NO;
    }
    
    [self.window makeKeyWindow];
    return YES;
    


}

//如果app在后台，通过快捷选项标签进入app时在此处调用
-(void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler{
//    UITabBarController *tabBarVC = (UITabBarController *)self.window.rootViewController.navigationController.tabBarController;
    UINavigationController *mainNaVC = self.window.rootViewController;
    //style one:
//    if ([shortcutItem.localizedTitle isEqualToString:@"就是这🐑任性"]) {
//        tabBarVC.selectedIndex = 0; //就是这🐑任性
//    } else if ([shortcutItem.localizedTitle isEqualToString:@"猴赛雷"]) {
//        tabBarVC.selectedIndex = 1; //猴赛雷
//    } else{
//        tabBarVC.selectedIndex = 2; //孙子来电话了
//    }
    //style two
    favriteViewController *favriteVC = [[favriteViewController alloc] init];
    bookTableViewController *bookTabVC = [[bookTableViewController alloc] init];
    contactViewController *contactVC = [[contactViewController alloc] init];
    
    if([shortcutItem.type isEqualToString:@"favrite"])
    {
        NSLog(@"就是这🐑任性");
//        self.window.rootViewController.navigationController.tabBarController.selectedIndex = 0;
//        tabBarVC.selectedIndex = 0;
//        mainNaVC.tabBarController.selectedIndex = 0;
        [mainNaVC pushViewController:favriteVC animated:NO];
    } else if ([shortcutItem.type isEqualToString:@"book"])
    {
        NSLog(@"猴赛雷");
//        self.window.rootViewController.navigationController.tabBarController.selectedIndex = 1;
//        tabBarVC.selectedIndex = 1;
//        mainNaVC.tabBarController.selectedIndex = 1;
//        [self.window.rootViewController presentViewController:bookTabVC animated:YES completion:^{
//            NSLog(@"进入 猴赛雷");
//        }];
        [mainNaVC pushViewController:bookTabVC animated:NO];
    } else {
        NSLog(@"孙子来电话了");
//        self.window.rootViewController.navigationController.tabBarController.selectedIndex = 2;
//        tabBarVC.selectedIndex = 2;
//        mainNaVC.tabBarController.selectedIndex = 2;
        [mainNaVC pushViewController:contactVC animated:NO];
        
    }
    if(completionHandler){
        completionHandler(YES);
    }

}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
