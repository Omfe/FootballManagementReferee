/*
	FRMArrayOfGoal.h
	The implementation of properties and methods for the FRMArrayOfGoal array.
	Generated by SudzC.com
*/
#import "FRMArrayOfGoal.h"

#import "FRMGoal.h"
@implementation FRMArrayOfGoal

	+ (id) createWithNode: (CXMLNode*) node
	{
		return [[self alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				FRMGoal* value = [[FRMGoal createWithNode: child] object];
				if(value != nil) {
					[self addObject: value];
				}
			}
		}
		return self;
	}
	
	+ (NSMutableString*) serialize: (NSArray*) array
	{
		NSMutableString* s = [NSMutableString string];
		for(id item in array) {
			[s appendString: [item serialize: @"Goal"]];
		}
		return s;
	}
@end