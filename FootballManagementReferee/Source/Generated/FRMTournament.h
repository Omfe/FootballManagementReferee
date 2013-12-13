/*
	FRMTournament.h
	The interface definition of properties and methods for the FRMTournament object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class FRMArrayOfMatch;
@class FRMArrayOfReferee;
@class FRMArrayOfTeam;

@interface FRMTournament : SoapObject
{
	int _Id;
	NSMutableArray* _Matches;
	NSString* _Name;
	NSMutableArray* _Referees;
	NSMutableArray* _Teams;
	
}
		
	@property int Id;
	@property (retain, nonatomic) NSMutableArray* Matches;
	@property (retain, nonatomic) NSString* Name;
	@property (retain, nonatomic) NSMutableArray* Referees;
	@property (retain, nonatomic) NSMutableArray* Teams;

	+ (FRMTournament*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end