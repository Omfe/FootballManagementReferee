/*
	FRMFootballManagementServiceExample.m
	Provides example and test runs the service's proxy methods.
	Generated by SudzC.com
*/
#import "FRMFootballManagementServiceExample.h"
#import "FRMFootballManagementService.h"

@implementation FRMFootballManagementServiceExample

- (void)run {
	// Create the service
	FRMFootballManagementService* service = [FRMFootballManagementService service];
	service.logging = YES;
	// service.username = @"username";
	// service.password = @"password";
	

	// Returns BOOL
	/*  */
	[service CreateCard:self action:@selector(CreateCardHandler:) card: [[FRMCard alloc] init]];

	// Returns BOOL
	/*  */
	[service CreateGoal:self action:@selector(CreateGoalHandler:) goal: [[FRMGoal alloc] init]];

	// Returns BOOL
	/*  */
	[service CreateMatch:self action:@selector(CreateMatchHandler:) match: [[FRMMatch alloc] init]];

	// Returns BOOL
	/*  */
	[service CreatePlayer:self action:@selector(CreatePlayerHandler:) player: [[FRMPlayer alloc] init]];

	// Returns BOOL
	/*  */
	[service CreateReferee:self action:@selector(CreateRefereeHandler:) referee: [[FRMReferee alloc] init]];

	// Returns BOOL
	/*  */
	[service CreateTeam:self action:@selector(CreateTeamHandler:) team: [[FRMTeam alloc] init]];

	// Returns BOOL
	/*  */
	[service CreateTournament:self action:@selector(CreateTournamentHandler:) tournament: [[FRMTournament alloc] init]];

	// Returns BOOL
	/*  */
	[service DeleteCard:self action:@selector(DeleteCardHandler:) card: [[FRMCard alloc] init]];

	// Returns BOOL
	/*  */
	[service DeleteGoal:self action:@selector(DeleteGoalHandler:) goal: [[FRMGoal alloc] init]];

	// Returns BOOL
	/*  */
	[service DeleteMatch:self action:@selector(DeleteMatchHandler:) match: [[FRMMatch alloc] init]];

	// Returns BOOL
	/*  */
	[service DeletePlayer:self action:@selector(DeletePlayerHandler:) player: [[FRMPlayer alloc] init]];

	// Returns BOOL
	/*  */
	[service DeleteReferee:self action:@selector(DeleteRefereeHandler:) referee: [[FRMReferee alloc] init]];

	// Returns BOOL
	/*  */
	[service DeleteTeam:self action:@selector(DeleteTeamHandler:) team: [[FRMTeam alloc] init]];

	// Returns BOOL
	/*  */
	[service DeleteTournament:self action:@selector(DeleteTournamentHandler:) tournament: [[FRMTournament alloc] init]];

	// Returns NSString*
	/*  */
	[service GetData:self action:@selector(GetDataHandler:) value: 0];

	// Returns FRMCompositeType*
	/*  */
	[service GetDataUsingDataContract:self action:@selector(GetDataUsingDataContractHandler:) composite: [[FRMCompositeType alloc] init]];

	// Returns NSMutableArray*
	/*  */
	[service GetListCard:self action:@selector(GetListCardHandler:)];

	// Returns NSMutableArray*
	/*  */
	[service GetListGoal:self action:@selector(GetListGoalHandler:)];

	// Returns NSMutableArray*
	/*  */
	[service GetListMatch:self action:@selector(GetListMatchHandler:)];

	// Returns NSMutableArray*
	/*  */
	[service GetListPlayer:self action:@selector(GetListPlayerHandler:)];

	// Returns NSMutableArray*
	/*  */
	[service GetListReferee:self action:@selector(GetListRefereeHandler:)];

	// Returns NSMutableArray*
	/*  */
	[service GetListTeam:self action:@selector(GetListTeamHandler:)];

	// Returns NSMutableArray*
	/*  */
	[service GetListTournament:self action:@selector(GetListTournamentHandler:)];

	// Returns FRMCard*
	/*  */
	[service ReadCard:self action:@selector(ReadCardHandler:) ID: 0];

	// Returns FRMGoal*
	/*  */
	[service ReadGoal:self action:@selector(ReadGoalHandler:) ID: 0];

	// Returns FRMMatch*
	/*  */
	[service ReadMatch:self action:@selector(ReadMatchHandler:) ID: 0];

	// Returns FRMPlayer*
	/*  */
	[service ReadPlayer:self action:@selector(ReadPlayerHandler:) ID: 0];

	// Returns FRMReferee*
	/*  */
	[service ReadReferee:self action:@selector(ReadRefereeHandler:) ID: 0];

	// Returns FRMTeam*
	/*  */
	[service ReadTeam:self action:@selector(ReadTeamHandler:) ID: 0];

	// Returns FRMTournament*
	/*  */
	[service ReadTournament:self action:@selector(ReadTournamentHandler:) ID: 0];

	// Returns FRMCard*
	/*  */
	[service UpdateCard:self action:@selector(UpdateCardHandler:) card: [[FRMCard alloc] init]];

	// Returns FRMGoal*
	/*  */
	[service UpdateGoal:self action:@selector(UpdateGoalHandler:) goal: [[FRMGoal alloc] init]];

	// Returns FRMMatch*
	/*  */
	[service UpdateMatch:self action:@selector(UpdateMatchHandler:) match: [[FRMMatch alloc] init]];

	// Returns FRMPlayer*
	/*  */
	[service UpdatePlayer:self action:@selector(UpdatePlayerHandler:) player: [[FRMPlayer alloc] init]];

	// Returns FRMReferee*
	/*  */
	[service UpdateReferee:self action:@selector(UpdateRefereeHandler:) referee: [[FRMReferee alloc] init]];

	// Returns FRMTeam*
	/*  */
	[service UpdateTeam:self action:@selector(UpdateTeamHandler:) team: [[FRMTeam alloc] init]];

	// Returns FRMTournament*
	/*  */
	[service UpdateTournament:self action:@selector(UpdateTournamentHandler:) tournament: [[FRMTournament alloc] init]];
}

	

// Handle the response from CreateCard.
		
- (void) CreateCardHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"CreateCard returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from CreateGoal.
		
- (void) CreateGoalHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"CreateGoal returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from CreateMatch.
		
- (void) CreateMatchHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"CreateMatch returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from CreatePlayer.
		
- (void) CreatePlayerHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"CreatePlayer returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from CreateReferee.
		
- (void) CreateRefereeHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"CreateReferee returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from CreateTeam.
		
- (void) CreateTeamHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"CreateTeam returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from CreateTournament.
		
- (void) CreateTournamentHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"CreateTournament returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from DeleteCard.
		
- (void) DeleteCardHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"DeleteCard returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from DeleteGoal.
		
- (void) DeleteGoalHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"DeleteGoal returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from DeleteMatch.
		
- (void) DeleteMatchHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"DeleteMatch returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from DeletePlayer.
		
- (void) DeletePlayerHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"DeletePlayer returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from DeleteReferee.
		
- (void) DeleteRefereeHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"DeleteReferee returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from DeleteTeam.
		
- (void) DeleteTeamHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"DeleteTeam returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from DeleteTournament.
		
- (void) DeleteTournamentHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"DeleteTournament returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from GetData.
		
- (void) GetDataHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the NSString* result
		NSString* result = (NSString*)value;
	NSLog(@"GetData returned the value: %@", result);
			
}
	

// Handle the response from GetDataUsingDataContract.
		
- (void) GetDataUsingDataContractHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the FRMCompositeType* result
		FRMCompositeType* result = (FRMCompositeType*)value;
	NSLog(@"GetDataUsingDataContract returned the value: %@", result);
			
}
	

// Handle the response from GetListCard.
		
- (void) GetListCardHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the NSMutableArray* result
		NSMutableArray* result = (NSMutableArray*)value;
	NSLog(@"GetListCard returned the value: %@", result);
			
}
	

// Handle the response from GetListGoal.
		
- (void) GetListGoalHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the NSMutableArray* result
		NSMutableArray* result = (NSMutableArray*)value;
	NSLog(@"GetListGoal returned the value: %@", result);
			
}
	

// Handle the response from GetListMatch.
		
- (void) GetListMatchHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the NSMutableArray* result
		NSMutableArray* result = (NSMutableArray*)value;
	NSLog(@"GetListMatch returned the value: %@", result);
			
}
	

// Handle the response from GetListPlayer.
		
- (void) GetListPlayerHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the NSMutableArray* result
		NSMutableArray* result = (NSMutableArray*)value;
	NSLog(@"GetListPlayer returned the value: %@", result);
			
}
	

// Handle the response from GetListReferee.
		
- (void) GetListRefereeHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the NSMutableArray* result
		NSMutableArray* result = (NSMutableArray*)value;
	NSLog(@"GetListReferee returned the value: %@", result);
			
}
	

// Handle the response from GetListTeam.
		
- (void) GetListTeamHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the NSMutableArray* result
		NSMutableArray* result = (NSMutableArray*)value;
	NSLog(@"GetListTeam returned the value: %@", result);
			
}
	

// Handle the response from GetListTournament.
		
- (void) GetListTournamentHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the NSMutableArray* result
		NSMutableArray* result = (NSMutableArray*)value;
	NSLog(@"GetListTournament returned the value: %@", result);
			
}
	

// Handle the response from ReadCard.
		
- (void) ReadCardHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the FRMCard* result
		FRMCard* result = (FRMCard*)value;
	NSLog(@"ReadCard returned the value: %@", result);
			
}
	

// Handle the response from ReadGoal.
		
- (void) ReadGoalHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the FRMGoal* result
		FRMGoal* result = (FRMGoal*)value;
	NSLog(@"ReadGoal returned the value: %@", result);
			
}
	

// Handle the response from ReadMatch.
		
- (void) ReadMatchHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the FRMMatch* result
		FRMMatch* result = (FRMMatch*)value;
	NSLog(@"ReadMatch returned the value: %@", result);
			
}
	

// Handle the response from ReadPlayer.
		
- (void) ReadPlayerHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the FRMPlayer* result
		FRMPlayer* result = (FRMPlayer*)value;
	NSLog(@"ReadPlayer returned the value: %@", result);
			
}
	

// Handle the response from ReadReferee.
		
- (void) ReadRefereeHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the FRMReferee* result
		FRMReferee* result = (FRMReferee*)value;
	NSLog(@"ReadReferee returned the value: %@", result);
			
}
	

// Handle the response from ReadTeam.
		
- (void) ReadTeamHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the FRMTeam* result
		FRMTeam* result = (FRMTeam*)value;
	NSLog(@"ReadTeam returned the value: %@", result);
			
}
	

// Handle the response from ReadTournament.
		
- (void) ReadTournamentHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the FRMTournament* result
		FRMTournament* result = (FRMTournament*)value;
	NSLog(@"ReadTournament returned the value: %@", result);
			
}
	

// Handle the response from UpdateCard.
		
- (void) UpdateCardHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the FRMCard* result
		FRMCard* result = (FRMCard*)value;
	NSLog(@"UpdateCard returned the value: %@", result);
			
}
	

// Handle the response from UpdateGoal.
		
- (void) UpdateGoalHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the FRMGoal* result
		FRMGoal* result = (FRMGoal*)value;
	NSLog(@"UpdateGoal returned the value: %@", result);
			
}
	

// Handle the response from UpdateMatch.
		
- (void) UpdateMatchHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the FRMMatch* result
		FRMMatch* result = (FRMMatch*)value;
	NSLog(@"UpdateMatch returned the value: %@", result);
			
}
	

// Handle the response from UpdatePlayer.
		
- (void) UpdatePlayerHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the FRMPlayer* result
		FRMPlayer* result = (FRMPlayer*)value;
	NSLog(@"UpdatePlayer returned the value: %@", result);
			
}
	

// Handle the response from UpdateReferee.
		
- (void) UpdateRefereeHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the FRMReferee* result
		FRMReferee* result = (FRMReferee*)value;
	NSLog(@"UpdateReferee returned the value: %@", result);
			
}
	

// Handle the response from UpdateTeam.
		
- (void) UpdateTeamHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the FRMTeam* result
		FRMTeam* result = (FRMTeam*)value;
	NSLog(@"UpdateTeam returned the value: %@", result);
			
}
	

// Handle the response from UpdateTournament.
		
- (void) UpdateTournamentHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the FRMTournament* result
		FRMTournament* result = (FRMTournament*)value;
	NSLog(@"UpdateTournament returned the value: %@", result);
			
}
	

@end
		