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
        self.title = @"Matches in Tournament";
    }
    return self;
    
    //forin team in result
    //forin match in team.Matches
    //if (match.Team.Tournament.Id == self.tournament.Id || match.Team1.Tournament.Id == self.tournament.Id)
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.service = [FMRFootballManagementService service];
    [self.service GetListTeam:self action:@selector(fetchTeams:)];
    
}

- (void)test:(id)result
{
    NSLog(@"%@", result);
}

- (void)fetchTeams:(id)result
{
    NSInteger matchesAdded = 0;
    
    if ([result isKindOfClass:[NSError class]] || [result isKindOfClass:[SoapFault class]]) {
        NSLog(@"Error: %@", result);
        return;
    }
    //self.teamsArray = (NSMutableArray *)result;
    for (FMRTeam *team in result) {
        for (FMRMatch *match in team.Matches) {
            if (match.Team.Tournament.Id == self.tournament.Id || match.Team1.Tournament.Id == self.tournament.Id) {
                [self.tournament.Matches insertObject:match atIndex:matchesAdded];
                matchesAdded++;
            }
        }
    }
    [self.teamsTableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.tournament.Matches.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    FMRMatch *match;
    
    match = [self.tournament.Matches objectAtIndex:indexPath.row];
    
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
    
    match = [self.tournament.Matches objectAtIndex:indexPath.row];
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

@end