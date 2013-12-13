//
//  FMRGoal.h
//  FootballManagementReferee
//
//  Created by Omar Gudino on 12/10/13.
//  Copyright (c) 2013 Omar Gudino. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FMRGoal : NSObject

@property (strong, nonatomic) NSNumber *idGoal;
@property (strong, nonatomic) NSNumber *idPlayer;
@property (strong, nonatomic) NSDate *time;
@property (strong, nonatomic) NSNumber *idMatch;

@end
