//
//  Ad.m
//  FixeAds Challenge
//
//  Created by Bruno Tavares on 04/11/15.
//  Copyright © 2015 Bruno Tavares. All rights reserved.
//

#import "Ad.h"

@implementation Ad

- (void)getDataFromDictionary: (NSDictionary *) dictionary {
    
    [self setAdId: [dictionary objectForKey:@"id"]];
    [self setTitle: [dictionary objectForKey:@"title"]];
    [self setDescriptionText: [dictionary objectForKey:@"description"]];
    [self setCreationDate: [dictionary objectForKey:@"created"]];
    [self setPrice: [dictionary objectForKey:@"list_label"]];
    [self setCity: [dictionary objectForKey:@"city_label"]];
    [self setOwner: [dictionary objectForKey:@"user_label"]];
    [self setOwnerId: [dictionary objectForKey:@"user_id"]];
    [self setMapZoom: [dictionary objectForKey:@"map_zoom"]];
    [self setMapLatitude: [dictionary objectForKey:@"map_lat"]];
    [self setMapLongitude: [dictionary objectForKey:@"map_lon"]];
    [self setPhotoId: [[dictionary objectForKey:@"photos"] objectForKey:@"riak_key"]];
    [self setPhotoAmount: [NSNumber numberWithInteger:[[[dictionary objectForKey:@"photos"] objectForKey:@"data"] count]]];
    [self setNegotiable: [[dictionary objectForKey:@"is_price_negotiable"] boolValue]];
}

@end
