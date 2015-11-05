//
//  ContainerViewController.h
//  FixeAds Challenge
//
//  Created by Bruno Tavares on 04/11/15.
//  Copyright © 2015 Bruno Tavares. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContainerViewController : UIViewController <UIPageViewControllerDataSource>

@property (strong, nonatomic) NSMutableArray *adArray;
@property (strong, nonatomic) UIPageViewController *pageController;

@end
