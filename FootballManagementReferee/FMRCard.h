//
//  FMRCard.h
//  FootballManagementReferee
//
//  Created by Omar Gudino on 12/10/13.
//  Copyright (c) 2013 Omar Gudino. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FMRCard : NSObject

@property (strong, nonatomic) NSNumber *idCard;
@property (strong, nonatomic) NSNumber *isRedCard;
@property (strong, nonatomic) NSNumber *idPLayer;
@property (strong, nonatomic) NSDate *date;
@property (strong, nonatomic) NSNumber *idMatch;
@property (strong, nonatomic) NSNumber *itemId;

@end
