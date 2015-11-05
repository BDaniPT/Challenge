//
//  DetailViewController.m
//  FixeAds Challenge
//
//  Created by Bruno Tavares on 03/11/15.
//  Copyright © 2015 Bruno Tavares. All rights reserved.
//

#import "DetailViewController.h"
#import "Ad.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.ad.negotiable) {
        
        [self.negotiableLabel setHidden:NO];
        
    } else {
        
        [self.negotiableLabel setHidden:YES];
    }
    
    self.priceLabel.text = self.ad.price;
    self.productLabel.text = self.ad.title;
    self.localizationLabel.text = self.ad.city;
    self.descriptionTextView.text = self.ad.descriptionText;
    
    self.title = self.ad.title;
    
    if (self.ad.photoAmount > 0) {
        
        self.imageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://img.olx.pt/images_olxpt/%@_1_700x525.jpg", self.ad.photoId]]]];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
