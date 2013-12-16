//
//  FMRDataController.m
//  FootballManagementReferee
//
//  Created by Omar Gudino on 12/16/13.
//  Copyright (c) 2013 Omar Gudino. All rights reserved.
//

#import "FMRDataController.h"
#import "FMRFootballManagementService.h"

NSString *FMRDataControllerDataDidUpdateNotification = @"FMRDataControllerDataDidUpdateNotification";

@interface FMRDataController ()

@property (strong, nonatomic) FMRFootballManagementService *service;

@end

@implementation FMRDataController

+ (FMRDataController *)instance
{
    static FMRDataController *_instance = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        _instance = [[FMRDataController alloc] init];
    });
    return _instance;
}

- (id)init
{
    self = [super init];
    if (self) {
        self.service = [FMRFootballManagementService service];
    }
    return self;
}


#pragma mark - Public Methods
- (void)fetchTournaments
{
    [self.service GetListTournament:self action:@selector(fetchTournaments:)];
}

- (void)fetchMatches
{
    [self.service GetListMatch:self action:@selector(fetchMatches:)];
}


#pragma mark - Private Methods
- (void)fetchTournaments:(id)result
{
    if ([result isKindOfClass:[NSError class]] || [result isKindOfClass:[SoapFault class]]) {
        NSLog(@"Error: %@", result);
        return;
    }
    self.tournamentsArray = (SoapArray *)result;
    [[NSNotificationCenter defaultCenter] postNotificationName:FMRDataControllerDataDidUpdateNotification object:nil];
}

- (void)fetchMatches:(id)result
{
    if ([result isKindOfClass:[NSError class]] || [result isKindOfClass:[SoapFault class]]) {
        NSLog(@"Error: %@", result);
        return;
    }
    self.matchesArray = (SoapArray *)result;
    [[NSNotificationCenter defaultCenter] postNotificationName:FMRDataControllerDataDidUpdateNotification object:nil];
}

@end
