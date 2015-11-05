//
//  ContainerViewController.m
//  FixeAds Challenge
//
//  Created by Bruno Tavares on 04/11/15.
//  Copyright © 2015 Bruno Tavares. All rights reserved.
//

#import "ContainerViewController.h"
#import "DetailViewController.h"

@interface ContainerViewController ()

@end

@implementation ContainerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pageController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    
    self.pageController.dataSource = self;
    
    //[self.pageController.view setFrame:[self.view bounds]];
    
    DetailViewController *viewControllerObject = [self viewControllerAtIndex:0];
    
    NSArray *viewControllers = [NSArray arrayWithObject:viewControllerObject];
    
    [self.pageController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    [self addChildViewController:self.pageController];
    
    [self.view addSubview:self.pageController.view];
    
    [self.pageController didMoveToParentViewController:self];
}

- (DetailViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    
    NSUInteger index = [(DetailViewController *)viewController indexNumber];
    
    if (index == 0) {
        
        return nil;
    }
    
    index--;
    return [self viewControllerAtIndex:index];
}



- (DetailViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    
    NSUInteger index = [(DetailViewController *)viewController indexNumber];
    index++;
    
    if (index == 13) {
        
        return nil;
    }
    
    return [self viewControllerAtIndex:index];
}

- (DetailViewController *)viewControllerAtIndex:(NSUInteger)index {
    
    DetailViewController *childViewController = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    
    childViewController.indexNumber = index;
    [childViewController setAd: [self.adArray objectAtIndex:index]];

    return childViewController;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
