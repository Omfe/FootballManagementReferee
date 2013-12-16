//
//  FMRMatchViewController.m
//  FootballManagementReferee
//
//  Created by Omar Gudino on 12/10/13.
//  Copyright (c) 2013 Omar Gudino. All rights reserved.
//

#import "FMRMatchViewController.h"
#import "FMRLeaguesViewController.h"
#import "FMRFootballManagementService.h"

@interface FMRMatchViewController ()

@property (weak, nonatomic) IBOutlet UILabel *scoreTeamALabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreTeamBLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameTeamALabel;
@property (weak, nonatomic) IBOutlet UILabel *nameTeamBLabel;
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;

@property (strong, nonatomic) FMRFootballManagementService *service;


@end

@implementation FMRMatchViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

#pragma mark - Action Methods
- (IBAction)goalButtonWasPressed:(id)sender
{
    UIAlertView *scoringTeam;
}

- (IBAction)yellowCardButtonWasPressed:(id)sender {
}

- (IBAction)redCardButtonWasPressed:(id)sender {
}

- (IBAction)startMatchButtonWasPressed:(id)sender {
}

- (IBAction)playerListsButtonWasPressed:(id)sender {
}

@end
