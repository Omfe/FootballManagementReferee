//
//  FMRLeaguesViewController.h
//  FootballManagementReferee
//
//  Created by Omar Gudino on 12/10/13.
//  Copyright (c) 2013 Omar Gudino. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FMRTournament;

@interface FMRLeaguesViewController : UIViewController

typedef void(^FMRLeaguesCompletionBlock)();

@property (strong, nonatomic) FMRTournament *tournament;
@property (copy, nonatomic) FMRLeaguesCompletionBlock completionBlock;


@end
