//
//  FMRLeaguesViewController.m
//  FootballManagementReferee
//
//  Created by Omar Gudino on 12/10/13.
//  Copyright (c) 2013 Omar Gudino. All rights reserved.
//

#import "FMRLeaguesViewController.h"
#import "FMRTournamentsViewController.h"
#import "FMRFootballManagementService.h"
#import "FMRMatchViewController.h"

@interface FMRLeaguesViewController ()

@property (weak, nonatomic) IBOutlet UITableView *teamsTableView;
@property (strong, nonatomic) FMRFootballManagementService *service;
@property (strong, nonatomic) NSMutableArray *allMatchesArray;
@property (strong, nonatomic) NSMutableArray *teamsArray;

@end

@implementation FMRLeaguesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(dataDidUpdate:) name:FMRDataControllerDataDidUpdateNotification object:nil];
    }
    return self;
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:FMRDataControllerDataDidUpdateNotification object:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Matches";
    [[FMRDataController instance] fetchTournaments];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [FMRDataController instance].matchesArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    FMRMatch *match;
    
    match = [[FMRDataController instance].matchesArray objectAtIndex:indexPath.row];
    
    cell = [tableView dequeueReusableCellWithIdentifier:@"test"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"test"];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@ vs %@", match.Team.Name, match.Team1.Name];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    FMRMatch *match;
    
    match = [[FMRDataController instance].matchesArray objectAtIndex:indexPath.row];
    [self presentMatchViewControllerWithLeague:match];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

- (void)presentMatchViewControllerWithLeague:(FMRMatch *)match
{
    FMRMatchViewController *matchViewController;
    
    matchViewController = [[FMRMatchViewController alloc] initWithNibName:@"FMRMatchViewController" bundle:nil];
    matchViewController.match = match;
    [self.navigationController pushViewController:matchViewController animated:YES];
}

- (void)dataDidUpdate:(NSNotification *)notification
{
    [self.teamsTableView reloadData];
}

@end