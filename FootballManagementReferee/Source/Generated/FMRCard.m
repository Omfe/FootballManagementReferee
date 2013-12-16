/*
	FMRCard.h
	The implementation of properties and methods for the FMRCard object.
	Generated by SudzC.com
*/
#import "FMRCard.h"

#import "FMRMatch.h"
#import "FMRPlayer.h"
@implementation FMRCard
	@synthesize Date = _Date;
	@synthesize Id = _Id;
	@synthesize Match = _Match;
	@synthesize Player = _Player;
	@synthesize isRedCard = _isRedCard;

	- (id) init
	{
		if(self = [super init])
		{
			self.Date = nil;
			self.Match = nil; // [[FMRMatch alloc] init];
			self.Player = nil; // [[FMRPlayer alloc] init];

		}
		return self;
	}

	+ (FMRCard*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return [[self alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.Date = [Soap dateFromString: [Soap getNodeValue: node withName: @"a:Date"]];
			self.Id = [[Soap getNodeValue: node withName: @"a:Id"] intValue];
			self.Match = [[FMRMatch createWithNode: [Soap getNode: node withName: @"a:Match"]] object];
			self.Player = [[FMRPlayer createWithNode: [Soap getNode: node withName: @"a:Player"]] object];
			self.isRedCard = [[Soap getNodeValue: node withName: @"a:isRedCard"] boolValue];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"Card"];
	}
  
	- (NSMutableString*) serialize: (NSString*) nodeName
	{
		NSMutableString* s = [NSMutableString string];
		[s appendFormat: @"<%@", nodeName];
		[s appendString: [self serializeAttributes]];
		[s appendString: @">"];
		[s appendString: [self serializeElements]];
		[s appendFormat: @"</%@>", nodeName];
		return s;
	}
	
	- (NSMutableString*) serializeElements
	{
		NSMutableString* s = [super serializeElements];
		if (self.Date != nil) {
            [s appendFormat: @"<a:Date>%@</a:Date>", [Soap getDateString: self.Date]];
        } else {
            [s appendString: @"<a:Date xsi:nil=\"true\"/>"];
        }
		[s appendFormat: @"<a:Id>%@</a:Id>", [NSString stringWithFormat: @"%i", self.Id]];
		if (self.Match != nil) {
            [s appendString: [self.Match serialize: @"a:Match"]];
        } else {
            [s appendString: @"<a:Match xsi:nil=\"true\"/>"];
        }
		if (self.Player != nil) {
            [s appendString: [self.Player serialize: @"a:Player"]];
        } else {
            [s appendString: @"<a:Player xsi:nil=\"true\"/>"];
        }
		[s appendFormat: @"<a:isRedCard>%@</a:isRedCard>", (self.isRedCard)?@"true":@"false"];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];
        [s appendString:@" xmlns:a=\"http://schemas.datacontract.org/2004/07/FootballManagement.Commons.Entities\" xmlns:i=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:z=\"http://schemas.microsoft.com/2003/10/Serialization/\""];
		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[FMRCard class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end
