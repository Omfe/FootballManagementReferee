/*
	FRMGoal.h
	The interface definition of properties and methods for the FRMGoal object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class FRMMatch;
@class FRMPlayer;

@interface FRMGoal : SoapObject
{
	int _Id;
	FRMMatch* _Match;
	FRMPlayer* _Player;
	NSDate* _Time;
	
}
		
	@property int Id;
	@property (retain, nonatomic) FRMMatch* Match;
	@property (retain, nonatomic) FRMPlayer* Player;
	@property (retain, nonatomic) NSDate* Time;

	+ (FRMGoal*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
