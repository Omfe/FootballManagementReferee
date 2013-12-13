/*
	FRMCompositeType.h
	The implementation of properties and methods for the FRMCompositeType object.
	Generated by SudzC.com
*/
#import "FRMCompositeType.h"

@implementation FRMCompositeType
	@synthesize BoolValue = _BoolValue;
	@synthesize StringValue = _StringValue;

	- (id) init
	{
		if(self = [super init])
		{
			self.StringValue = nil;

		}
		return self;
	}

	+ (FRMCompositeType*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return [[self alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.BoolValue = [[Soap getNodeValue: node withName: @"BoolValue"] boolValue];
			self.StringValue = [Soap getNodeValue: node withName: @"StringValue"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"CompositeType"];
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
		[s appendFormat: @"<BoolValue>%@</BoolValue>", (self.BoolValue)?@"true":@"false"];
		if (self.StringValue != nil) [s appendFormat: @"<StringValue>%@</StringValue>", [[self.StringValue stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[FRMCompositeType class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end
