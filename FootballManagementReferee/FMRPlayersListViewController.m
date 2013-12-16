//
//  FMRPlayersListViewController.m
//  FootballManagementReferee
//
//  Created by Omar Gudino on 12/16/13.
//  Copyright (c) 2013 Omar Gudino. All rights reserved.
//

#import "FMRPlayersListViewController.h"
#import "FMRMatchViewController.h"
#import "FMRFootballManagementService.h"

@interface FMRPlayersListViewController ()
@property (weak, nonatomic) IBOutlet UILabel *teamALabel;
@property (weak, nonatomic) IBOutlet UILabel *teamBLabel;
@property (weak, nonatomic) IBOutlet UITableView *teamAPlayersListTableView;
@property (weak, nonatomic) IBOutlet UITableView *teamBPlayersListTableView;
@property (strong, nonatomic) FMRFootballManagementService *service;
@property (strong, nonatomic) NSMutableArray *teamAPlayersArray;
@property (strong, nonatomic) NSMutableArray *teamBPlayersArray;


@end

@implementation FMRPlayersListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Players List";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.service = [FMRFootballManagementService service];
    [self.service GetListPlayer:self action:@selector(fetchPlayers:)];
}

- (void)fetchPlayers:(id)result
{
    NSInteger playersAddedA = 0;
    NSInteger playersAddedB = 0;
    
    if ([result isKindOfClass:[NSError class]] || [result isKindOfClass:[SoapFault class]]) {
        NSLog(@"Error: %@", result);
        return;
    }
    for (FMRPlayer *player in result) {
        if (player.Team.Id == self.team.Id){
        [self.teamAPlayersArray insertObject:player atIndex:playersAddedA];
            playersAddedA++; } else if (player.Team.Id == self.team1.Id) {
        [self.teamBPlayersArray insertObject:player atIndex:playersAddedB];
            playersAddedB++;
        } else {
            
        }
    }
    [self.teamAPlayersListTableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == self.teamAPlayersListTableView) {
        return self.team.Players.count;
    } else {
        return self.team1.Players.count;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    FMRPlayer *player;
    
    if (tableView == self.teamAPlayersListTableView) {
        player = [self.teamAPlayersArray objectAtIndex:indexPath.row];
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"test"];
        if (!cell) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"test"];
        }
        
        cell.textLabel.text = player.Name;
        return cell;
    } else {
        player = [self.teamBPlayersArray objectAtIndex:indexPath.row];
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"test"];
        if (!cell) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"test"];
        }
        
        cell.textLabel.text = player.Name;
        return cell;
    }
}


@end
