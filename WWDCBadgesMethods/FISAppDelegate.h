//
//  FISAppDelegate.h
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (NSString *)badgeForSpeaker:(NSString *)speaker;

- (NSArray *)badgesForSpeakers:(NSArray *)speakers;

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers;

/*
 
 * Declare your custom methods in this space. Don't forget to end the statements with semicolons ";" !
 
 */

@end
