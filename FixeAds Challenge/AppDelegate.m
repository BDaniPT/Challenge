//
//  AppDelegate.m
//  FixeAds Challenge
//
//  Created by Bruno Tavares on 03/11/15.
//  Copyright © 2015 Bruno Tavares. All rights reserved.
//

#import "AppDelegate.h"
#import "Ad.h"
#import "ContainerViewController.h"
#import "CustomNavigationController.h"
#import "DetailViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.adArray = [NSMutableArray arrayWithCapacity:20];
    
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    
    ContainerViewController *container = [[ContainerViewController alloc] init];
    
    __block UINavigationController *nc = [[UINavigationController alloc]initWithRootViewController:container];
    
    [self.window setRootViewController:nc];
    [self.window makeKeyAndVisible];
    
    NSURLRequest * urlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:@"https://olx.pt/i2/ads/?json=1&search%5bcategory_id%5d=25"]];
    NSURLResponse * response = nil;
    NSError * error = nil;
    NSData * data = [NSURLConnection sendSynchronousRequest:urlRequest
                                          returningResponse:&response
                                                      error:&error];

    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    NSDictionary *adsJson = [json objectForKey:@"ads"];
    
    //NSLog([adsJson objectForKey:@"ads"]);
    NSLog(@"test");
    
    for (NSDictionary *currentAd in adsJson) {
        
        Ad *ad = [[Ad alloc] init];
        [ad getDataFromDictionary:currentAd];
        [self.adArray addObject:ad];
    }
    
    [container setAdArray: self.adArray];
    
    NSLog(@"Parsing done.");
    
    return YES;
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
