//
//  Ad.h
//  FixeAds Challenge
//
//  Created by Bruno Tavares on 04/11/15.
//  Copyright © 2015 Bruno Tavares. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ad : NSObject

@property (nonatomic, strong) NSString *adId; // id
@property (nonatomic, strong) NSString *title; // title
@property (nonatomic, strong) NSString *descriptionText; // description
@property (nonatomic, strong) NSString *creationDate; // created
@property (nonatomic, strong) NSString *price; // list_label
@property (nonatomic, strong) NSString *city; // city_label
@property (nonatomic, strong) NSString *owner; // user_label
@property (nonatomic, strong) NSString *ownerId; // user_id
@property (nonatomic, strong) NSNumber *mapZoom; // map_zoom
@property (nonatomic, strong) NSNumber *mapLatitude; // map_lat
@property (nonatomic, strong) NSNumber *mapLongitude; // map_lon
@property (nonatomic, strong) NSString *photoId; // photos/riak_key
@property (nonatomic, strong) NSNumber *photoAmount; // photos/data (count)
@property (nonatomic, assign) BOOL negotiable; // is_price_negotiable

- (void)getDataFromDictionary: (NSDictionary *) dictionary;

@end
