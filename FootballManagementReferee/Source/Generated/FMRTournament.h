/*
	FMRTournament.h
	The interface definition of properties and methods for the FMRTournament object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class FMRArrayOfMatch;
@class FMRArrayOfReferee;
@class FMRArrayOfTeam;

@interface FMRTournament : SoapObject
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

	+ (FMRTournament*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end