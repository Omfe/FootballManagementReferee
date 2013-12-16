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
#import "FMRPlayersListViewController.h"

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
        self.title = [NSString stringWithFormat:@"%@ vs %@", self.match.Team.Name, self.match.Team1.Name];
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
    [self presentPlayersListViewControllerWithTeams:self.match.Team andTeam:self.match.Team1];
}

- (IBAction)yellowCardButtonWasPressed:(id)sender {
}

- (IBAction)redCardButtonWasPressed:(id)sender {
}

- (IBAction)startMatchButtonWasPressed:(id)sender {
    [NSTimer scheduledTimerWithTimeInterval:1500 target:self selector:@selector(timerExpired) userInfo:nil repeats:NO];
}

- (IBAction)playerListsButtonWasPressed:(id)sender {
}

#pragma mark - UIAlertViewDelegate Protocol Reference
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0) {
        [alertView dismissWithClickedButtonIndex:0 animated:YES];
    }
}

- (void)timerExpired
{
    UIAlertView *scoringTeam;
    scoringTeam = [[UIAlertView alloc] initWithTitle:@"Tiempo!" message:@"Termina el tiempo" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    [scoringTeam show];
}

- (void)presentPlayersListViewControllerWithTeams:(FMRTeam *)team andTeam:(FMRTeam *)team1
{
    FMRPlayersListViewController *playersListViewController;
    
    playersListViewController = [[FMRPlayersListViewController alloc] initWithNibName:@"FMRPlayersListViewController" bundle:nil];
    //matchViewController.match = match;
    playersListViewController.team = team;
    playersListViewController.team1 = team1;
    [self.navigationController pushViewController:playersListViewController animated:YES];
}

@end
