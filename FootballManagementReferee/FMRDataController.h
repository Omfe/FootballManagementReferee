//
//  FMRDataController.h
//  FootballManagementReferee
//
//  Created by Omar Gudino on 12/16/13.
//  Copyright (c) 2013 Omar Gudino. All rights reserved.
//

#import "SoapArray.h"

extern NSString *FMRDataControllerDataDidUpdateNotification;

@interface FMRDataController : NSObject

@property (nonatomic, strong) SoapArray *tournamentsArray;
@property (nonatomic, strong) SoapArray *matchesArray;

+ (FMRDataController *)instance;

- (void)fetchTournaments;
- (void)fetchMatches;

@end
