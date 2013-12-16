//
//  FMRViewController.m
//  FootballManagementReferee
//
//  Created by Omar Gudino on 11/24/13.
//  Copyright (c) 2013 Omar Gudino. All rights reserved.
//

#import "FMRTournamentsViewController.h"
#import "FMRFootballManagementService.h"
#import "FMRLeaguesViewController.h"

@interface FMRTournamentsViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tournamentsTableView;

@end

@implementation FMRTournamentsViewController

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
    self.title = @"Tournaments";
    [[FMRDataController instance] fetchTournaments];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [FMRDataController instance].tournamentsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    FMRTournament *tournament;
    
    tournament = [[FMRDataController instance].tournamentsArray objectAtIndex:indexPath.row];
    
    cell = [tableView dequeueReusableCellWithIdentifier:@"test"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"test"];
    }
    
    cell.textLabel.text = tournament.Name;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    FMRTournament *tournament;
    
    tournament = [[FMRDataController instance].tournamentsArray objectAtIndex:indexPath.row];
    [self presentLeaguesViewControllerWithLeague:tournament];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)presentLeaguesViewControllerWithLeague:(FMRTournament *)tournament
{
    FMRLeaguesViewController *leaguesViewController;
    
    leaguesViewController = [[FMRLeaguesViewController alloc] initWithNibName:@"FMRLeaguesViewController" bundle:nil];
    leaguesViewController.tournament = tournament;
    [self.navigationController pushViewController:leaguesViewController animated:YES];
}

- (void)dataDidUpdate:(NSNotification *)notification
{
    [self.tournamentsTableView reloadData];
}

@end
