//
//  DetailViewController.h
//  FixeAds Challenge
//
//  Created by Bruno Tavares on 03/11/15.
//  Copyright © 2015 Bruno Tavares. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Ad.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *priceLabel;
@property (strong, nonatomic) IBOutlet UILabel *negotiableLabel;
@property (strong, nonatomic) IBOutlet UILabel *productLabel;
@property (strong, nonatomic) IBOutlet UILabel *localizationLabel;
@property (strong, nonatomic) IBOutlet UITextView *descriptionTextView;
@property (strong, nonatomic) Ad *ad;
@property (assign, nonatomic) NSInteger indexNumber;

@end
