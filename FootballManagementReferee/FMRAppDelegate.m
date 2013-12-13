//
//  FMRAppDelegate.m
//  FootballManagementReferee
//
//  Created by Omar Gudino on 11/24/13.
//  Copyright (c) 2013 Omar Gudino. All rights reserved.
//

#import "FMRAppDelegate.h"
#import "FMRTournamentsViewController.h"

@implementation FMRAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UINavigationController *navigationController;
    FMRTournamentsViewController *tournamentsViewController;
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    tournamentsViewController = [[FMRTournamentsViewController alloc] initWithNibName:@"FMRTournamentsViewController" bundle:nil];
    navigationController = [[UINavigationController alloc] initWithRootViewController:tournamentsViewController];
    
    [self.window setRootViewController:navigationController];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
