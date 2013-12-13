//
//  FMRViewController.m
//  FootballManagementReferee
//
//  Created by Omar Gudino on 11/24/13.
//  Copyright (c) 2013 Omar Gudino. All rights reserved.
//

#import "FMRTournamentsViewController.h"
#import "FRMFootballManagementService.h"

@interface FMRTournamentsViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tournamentsTableView;
@property (strong, nonatomic) NSMutableArray *tournamentsArray;
@property (strong, nonatomic) FRMFootballManagementService *service;

@end

@implementation FMRTournamentsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.service = [FRMFootballManagementService service];
    [self.service GetListTournament:self action:@selector(fetchTournaments:)];
    [self.service UpdateTournament:self action:@selector(test: ) tournament:[self.tournamentsArray objectAtIndex:1]];
}

- (void)fetchTournaments:(id)result
{
    //Mostrar alerta cuando sea error o SOAP fault (en chrome en Index)
    self.tournamentsArray = (NSMutableArray *)result;
    [self.tournamentsTableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.tournamentsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    FRMTournament *tournament;
    
    tournament = [self.tournamentsArray objectAtIndex:indexPath.row];
    
    cell = [tableView dequeueReusableCellWithIdentifier:@"test"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"test"];
    }
    
    cell.textLabel.text = tournament.Name;
    
    return cell;
}

@end
