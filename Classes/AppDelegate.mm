//
//  AppDelegate.m
//
// Copyright 2007-2013 metaio GmbH. All rights reserved.
//

#import "AppDelegate.h"
#import "ARELViewController.h"

@implementation AppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(UIApplication *)application
{
    [window makeKeyAndVisible];
  
    // create arel template and present it
    NSString* arelConfigFile = [NSString stringWithFormat:@"index"];
    NSString *arelDir = [NSString stringWithFormat:@"Assets"];
    NSString *arelConfigFilePath = [[NSBundle mainBundle] pathForResource:arelConfigFile ofType:@"xml" inDirectory:arelDir];
    NSLog(@"Will be loading AREL from %@",arelConfigFilePath);
    ARELViewController* templateViewController = [[ARELViewController alloc] initWithNibName:@"ARELViewController" bundle:nil instructions:arelConfigFilePath];
    templateViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [window.rootViewController presentModalViewController:templateViewController animated:NO];
    [templateViewController release];
}


- (void)applicationWillResignActive:(UIApplication *)application {
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
}



- (void)dealloc {	
	[window release];
	[super dealloc];
}




@end
