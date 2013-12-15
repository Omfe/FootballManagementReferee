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

@interface FMRLeaguesViewController ()

@property (weak, nonatomic) IBOutlet UITableView *teamsTableView;
@property (strong, nonatomic) FMRFootballManagementService *service;

@end

@implementation FMRLeaguesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Teams in Tournament";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //self.service = [FRMFootballManagementService service];
    //[self.service GetListTeam:self action:@selector(fetchTeams:)];
}

- (void)test:(id)result
{
    NSLog(@"%@", result);
}

- (void)fetchTeams:(id)result
{
    FMRTeam *team;
    
    //Mostrar alerta cuando sea error o SOAP fault (en chrome en Index)
    self.tournament.Teams = (NSMutableArray *)result;
    [self.teamsTableView reloadData];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.tournament.Teams.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    FMRTeam *team;
    
    team = [self.tournament.Teams objectAtIndex:indexPath.row];
    
    cell = [tableView dequeueReusableCellWithIdentifier:@"test"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"test"];
    }
    
    cell.textLabel.text = team.Name;
    
    return cell;
}

@end