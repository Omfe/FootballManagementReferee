/*
	FMRCard.h
	The interface definition of properties and methods for the FMRCard object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class FMRMatch;
@class FMRPlayer;

@interface FMRCard : SoapObject
{
	NSDate* _Date;
	int _Id;
	FMRMatch* _Match;
	FMRPlayer* _Player;
	BOOL _isRedCard;
	
}
		
	@property (retain, nonatomic) NSDate* Date;
	@property int Id;
	@property (retain, nonatomic) FMRMatch* Match;
	@property (retain, nonatomic) FMRPlayer* Player;
	@property BOOL isRedCard;

	+ (FMRCard*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
