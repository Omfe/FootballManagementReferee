//
//  FMRPlayersListViewController.h
//  FootballManagementReferee
//
//  Created by Omar Gudino on 12/16/13.
//  Copyright (c) 2013 Omar Gudino. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FMRPlayer;
@class FMRTeam;

@interface FMRPlayersListViewController : UIViewController

@property (strong, nonatomic) FMRPlayer *player;
@property (strong, nonatomic) FMRTeam *team;
@property (strong, nonatomic) FMRTeam *team1;

@end
