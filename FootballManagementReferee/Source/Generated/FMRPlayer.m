/*
	FMRPlayer.h
	The implementation of properties and methods for the FMRPlayer object.
	Generated by SudzC.com
*/
#import "FMRPlayer.h"

#import "FMRArrayOfCard.h"
#import "FMRArrayOfGoal.h"
#import "FMRArrayOfMatch.h"
#import "FMRTeam.h"
@implementation FMRPlayer
	@synthesize Cards = _Cards;
	@synthesize Goals = _Goals;
	@synthesize IsAuthorized = _IsAuthorized;
	@synthesize IsCaptain = _IsCaptain;
	@synthesize Matches = _Matches;
	@synthesize Team = _Team;

	- (id) init
	{
		if(self = [super init])
		{
			self.Cards = [[NSMutableArray alloc] init];
			self.Goals = [[NSMutableArray alloc] init];
			self.Matches = [[NSMutableArray alloc] init];
			self.Team = nil; // [[FMRTeam alloc] init];

		}
		return self;
	}

	+ (FMRPlayer*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return [[self alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.Cards = [[FMRArrayOfCard createWithNode: [Soap getNode: node withName: @"Cards"]] object];
			self.Goals = [[FMRArrayOfGoal createWithNode: [Soap getNode: node withName: @"Goals"]] object];
			self.IsAuthorized = [[Soap getNodeValue: node withName: @"IsAuthorized"] boolValue];
			self.IsCaptain = [[Soap getNodeValue: node withName: @"IsCaptain"] boolValue];
			self.Matches = [[FMRArrayOfMatch createWithNode: [Soap getNode: node withName: @"Matches"]] object];
			self.Team = [[FMRTeam createWithNode: [Soap getNode: node withName: @"Team"]] object];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"Player"];
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
		if (self.Cards != nil && self.Cards.count > 0) {
			[s appendFormat: @"<Cards>%@</Cards>", [FMRArrayOfCard serialize: self.Cards]];
		} else {
			[s appendString: @"<Cards/>"];
		}
		if (self.Goals != nil && self.Goals.count > 0) {
			[s appendFormat: @"<Goals>%@</Goals>", [FMRArrayOfGoal serialize: self.Goals]];
		} else {
			[s appendString: @"<Goals/>"];
		}
		[s appendFormat: @"<IsAuthorized>%@</IsAuthorized>", (self.IsAuthorized)?@"true":@"false"];
		[s appendFormat: @"<IsCaptain>%@</IsCaptain>", (self.IsCaptain)?@"true":@"false"];
		if (self.Matches != nil && self.Matches.count > 0) {
			[s appendFormat: @"<Matches>%@</Matches>", [FMRArrayOfMatch serialize: self.Matches]];
		} else {
			[s appendString: @"<Matches/>"];
		}
		if (self.Team != nil) [s appendString: [self.Team serialize: @"Team"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[FMRPlayer class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end