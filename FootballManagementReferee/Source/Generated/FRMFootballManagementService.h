/*
	FRMFootballManagementService.h
	The interface definition of classes and methods for the FootballManagementService web service.
	Generated by SudzC.com
*/
				
#import "Soap.h"
	
/* Add class references */
				
#import "FRMArrayOfCard.h"
#import "FRMArrayOfGoal.h"
#import "FRMArrayOfMatch.h"
#import "FRMArrayOfPlayer.h"
#import "FRMArrayOfReferee.h"
#import "FRMArrayOfTournament.h"
#import "FRMArrayOfTeam.h"
#import "FRMCompositeType.h"
#import "FRMReferee.h"
#import "FRMGoal.h"
#import "FRMPerson.h"
#import "FRMCard.h"
#import "FRMTournament.h"
#import "FRMPlayer.h"
#import "FRMTeam.h"
#import "FRMMatch.h"

/* Interface for the service */
				
@interface FRMFootballManagementService : SoapService
		
	// Returns NSString*
	/*  */
	- (SoapRequest*) GetData: (id <SoapDelegate>) handler value: (int) value;
	- (SoapRequest*) GetData: (id) target action: (SEL) action value: (int) value;

	// Returns FRMCompositeType*
	/*  */
	- (SoapRequest*) GetDataUsingDataContract: (id <SoapDelegate>) handler composite: (FRMCompositeType*) composite;
	- (SoapRequest*) GetDataUsingDataContract: (id) target action: (SEL) action composite: (FRMCompositeType*) composite;

	// Returns BOOL
	/*  */
	- (SoapRequest*) CreateCard: (id <SoapDelegate>) handler card: (FRMCard*) card;
	- (SoapRequest*) CreateCard: (id) target action: (SEL) action card: (FRMCard*) card;

	// Returns FRMCard*
	/*  */
	- (SoapRequest*) UpdateCard: (id <SoapDelegate>) handler card: (FRMCard*) card;
	- (SoapRequest*) UpdateCard: (id) target action: (SEL) action card: (FRMCard*) card;

	// Returns FRMCard*
	/*  */
	- (SoapRequest*) ReadCard: (id <SoapDelegate>) handler ID: (int) ID;
	- (SoapRequest*) ReadCard: (id) target action: (SEL) action ID: (int) ID;

	// Returns BOOL
	/*  */
	- (SoapRequest*) DeleteCard: (id <SoapDelegate>) handler card: (FRMCard*) card;
	- (SoapRequest*) DeleteCard: (id) target action: (SEL) action card: (FRMCard*) card;

	// Returns NSMutableArray*
	/*  */
	- (SoapRequest*) GetListCard: (id <SoapDelegate>) handler;
	- (SoapRequest*) GetListCard: (id) target action: (SEL) action;

	// Returns BOOL
	/*  */
	- (SoapRequest*) CreateGoal: (id <SoapDelegate>) handler goal: (FRMGoal*) goal;
	- (SoapRequest*) CreateGoal: (id) target action: (SEL) action goal: (FRMGoal*) goal;

	// Returns FRMGoal*
	/*  */
	- (SoapRequest*) UpdateGoal: (id <SoapDelegate>) handler goal: (FRMGoal*) goal;
	- (SoapRequest*) UpdateGoal: (id) target action: (SEL) action goal: (FRMGoal*) goal;

	// Returns FRMGoal*
	/*  */
	- (SoapRequest*) ReadGoal: (id <SoapDelegate>) handler ID: (int) ID;
	- (SoapRequest*) ReadGoal: (id) target action: (SEL) action ID: (int) ID;

	// Returns BOOL
	/*  */
	- (SoapRequest*) DeleteGoal: (id <SoapDelegate>) handler goal: (FRMGoal*) goal;
	- (SoapRequest*) DeleteGoal: (id) target action: (SEL) action goal: (FRMGoal*) goal;

	// Returns NSMutableArray*
	/*  */
	- (SoapRequest*) GetListGoal: (id <SoapDelegate>) handler;
	- (SoapRequest*) GetListGoal: (id) target action: (SEL) action;

	// Returns BOOL
	/*  */
	- (SoapRequest*) CreateMatch: (id <SoapDelegate>) handler match: (FRMMatch*) match;
	- (SoapRequest*) CreateMatch: (id) target action: (SEL) action match: (FRMMatch*) match;

	// Returns FRMMatch*
	/*  */
	- (SoapRequest*) UpdateMatch: (id <SoapDelegate>) handler match: (FRMMatch*) match;
	- (SoapRequest*) UpdateMatch: (id) target action: (SEL) action match: (FRMMatch*) match;

	// Returns FRMMatch*
	/*  */
	- (SoapRequest*) ReadMatch: (id <SoapDelegate>) handler ID: (int) ID;
	- (SoapRequest*) ReadMatch: (id) target action: (SEL) action ID: (int) ID;

	// Returns BOOL
	/*  */
	- (SoapRequest*) DeleteMatch: (id <SoapDelegate>) handler match: (FRMMatch*) match;
	- (SoapRequest*) DeleteMatch: (id) target action: (SEL) action match: (FRMMatch*) match;

	// Returns NSMutableArray*
	/*  */
	- (SoapRequest*) GetListMatch: (id <SoapDelegate>) handler;
	- (SoapRequest*) GetListMatch: (id) target action: (SEL) action;

	// Returns BOOL
	/*  */
	- (SoapRequest*) CreatePlayer: (id <SoapDelegate>) handler player: (FRMPlayer*) player;
	- (SoapRequest*) CreatePlayer: (id) target action: (SEL) action player: (FRMPlayer*) player;

	// Returns FRMPlayer*
	/*  */
	- (SoapRequest*) UpdatePlayer: (id <SoapDelegate>) handler player: (FRMPlayer*) player;
	- (SoapRequest*) UpdatePlayer: (id) target action: (SEL) action player: (FRMPlayer*) player;

	// Returns FRMPlayer*
	/*  */
	- (SoapRequest*) ReadPlayer: (id <SoapDelegate>) handler ID: (int) ID;
	- (SoapRequest*) ReadPlayer: (id) target action: (SEL) action ID: (int) ID;

	// Returns BOOL
	/*  */
	- (SoapRequest*) DeletePlayer: (id <SoapDelegate>) handler player: (FRMPlayer*) player;
	- (SoapRequest*) DeletePlayer: (id) target action: (SEL) action player: (FRMPlayer*) player;

	// Returns NSMutableArray*
	/*  */
	- (SoapRequest*) GetListPlayer: (id <SoapDelegate>) handler;
	- (SoapRequest*) GetListPlayer: (id) target action: (SEL) action;

	// Returns BOOL
	/*  */
	- (SoapRequest*) CreateReferee: (id <SoapDelegate>) handler referee: (FRMReferee*) referee;
	- (SoapRequest*) CreateReferee: (id) target action: (SEL) action referee: (FRMReferee*) referee;

	// Returns FRMReferee*
	/*  */
	- (SoapRequest*) UpdateReferee: (id <SoapDelegate>) handler referee: (FRMReferee*) referee;
	- (SoapRequest*) UpdateReferee: (id) target action: (SEL) action referee: (FRMReferee*) referee;

	// Returns FRMReferee*
	/*  */
	- (SoapRequest*) ReadReferee: (id <SoapDelegate>) handler ID: (int) ID;
	- (SoapRequest*) ReadReferee: (id) target action: (SEL) action ID: (int) ID;

	// Returns BOOL
	/*  */
	- (SoapRequest*) DeleteReferee: (id <SoapDelegate>) handler referee: (FRMReferee*) referee;
	- (SoapRequest*) DeleteReferee: (id) target action: (SEL) action referee: (FRMReferee*) referee;

	// Returns NSMutableArray*
	/*  */
	- (SoapRequest*) GetListReferee: (id <SoapDelegate>) handler;
	- (SoapRequest*) GetListReferee: (id) target action: (SEL) action;

	// Returns BOOL
	/*  */
	- (SoapRequest*) CreateTeam: (id <SoapDelegate>) handler team: (FRMTeam*) team;
	- (SoapRequest*) CreateTeam: (id) target action: (SEL) action team: (FRMTeam*) team;

	// Returns FRMTeam*
	/*  */
	- (SoapRequest*) UpdateTeam: (id <SoapDelegate>) handler team: (FRMTeam*) team;
	- (SoapRequest*) UpdateTeam: (id) target action: (SEL) action team: (FRMTeam*) team;

	// Returns FRMTeam*
	/*  */
	- (SoapRequest*) ReadTeam: (id <SoapDelegate>) handler ID: (int) ID;
	- (SoapRequest*) ReadTeam: (id) target action: (SEL) action ID: (int) ID;

	// Returns BOOL
	/*  */
	- (SoapRequest*) DeleteTeam: (id <SoapDelegate>) handler team: (FRMTeam*) team;
	- (SoapRequest*) DeleteTeam: (id) target action: (SEL) action team: (FRMTeam*) team;

	// Returns NSMutableArray*
	/*  */
	- (SoapRequest*) GetListTeam: (id <SoapDelegate>) handler;
	- (SoapRequest*) GetListTeam: (id) target action: (SEL) action;

	// Returns BOOL
	/*  */
	- (SoapRequest*) CreateTournament: (id <SoapDelegate>) handler tournament: (FRMTournament*) tournament;
	- (SoapRequest*) CreateTournament: (id) target action: (SEL) action tournament: (FRMTournament*) tournament;

	// Returns FRMTournament*
	/*  */
	- (SoapRequest*) UpdateTournament: (id <SoapDelegate>) handler tournament: (FRMTournament*) tournament;
	- (SoapRequest*) UpdateTournament: (id) target action: (SEL) action tournament: (FRMTournament*) tournament;

	// Returns FRMTournament*
	/*  */
	- (SoapRequest*) ReadTournament: (id <SoapDelegate>) handler ID: (int) ID;
	- (SoapRequest*) ReadTournament: (id) target action: (SEL) action ID: (int) ID;

	// Returns BOOL
	/*  */
	- (SoapRequest*) DeleteTournament: (id <SoapDelegate>) handler tournament: (FRMTournament*) tournament;
	- (SoapRequest*) DeleteTournament: (id) target action: (SEL) action tournament: (FRMTournament*) tournament;

	// Returns NSMutableArray*
	/*  */
	- (SoapRequest*) GetListTournament: (id <SoapDelegate>) handler;
	- (SoapRequest*) GetListTournament: (id) target action: (SEL) action;

		
	+ (FRMFootballManagementService*) service;
	+ (FRMFootballManagementService*) serviceWithUsername: (NSString*) username andPassword: (NSString*) password;
@end
	