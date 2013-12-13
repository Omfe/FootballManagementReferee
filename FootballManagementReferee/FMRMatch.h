//
//  FMRMatch.h
//  FootballManagementReferee
//
//  Created by Omar Gudino on 12/10/13.
//  Copyright (c) 2013 Omar Gudino. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FMRMatch : NSObject

@property (strong, nonatomic) NSNumber *idMatch;
@property (strong, nonatomic) NSNumber *idLocalTeam;
@property (strong, nonatomic) NSNumber *idVisitorTeam;
@property (strong, nonatomic) NSDates *idMatchDate;
@property (strong, nonatomic) NSNumber *idTournament;

@end
