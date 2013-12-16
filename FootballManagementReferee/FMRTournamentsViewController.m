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
@property (strong, nonatomic) NSMutableArray *tournamentsArray;
@property (strong, nonatomic) FMRFootballManagementService *service;

@end

@implementation FMRTournamentsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Tournaments";
    self.service = [FMRFootballManagementService service];
    [self.service GetListTournament:self action:@selector(fetchTournaments:)];
    
}

- (void)fetchTournaments:(id)result
{
    FMRTournament *tournament;
    
    if ([result isKindOfClass:[NSError class]] || [result isKindOfClass:[SoapFault class]]) {
        NSLog(@"Error: %@", result);
        return;
    }
    self.tournamentsArray = (NSMutableArray *)result;
    [self.tournamentsTableView reloadData];
    
//    [self.service UpdateTournament:self action:@selector(test: ) tournament:[self.tournamentsArray objectAtIndex:1]];
}

- (void)test:(id)result
{
    NSLog(@"%@", result);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.tournamentsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    FMRTournament *tournament;
    
    tournament = [self.tournamentsArray objectAtIndex:indexPath.row];
    
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
    
    tournament = [self.tournamentsArray objectAtIndex:indexPath.row];
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


@end
