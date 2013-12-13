//
//  FMRPerson.h
//  FootballManagementReferee
//
//  Created by Omar Gudino on 12/10/13.
//  Copyright (c) 2013 Omar Gudino. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FMRPerson : NSObject

@property (strong, nonatomic) NSNumber *idPerson;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *gender;
@property (strong, nonatomic) NSDate *birthday;

@end
