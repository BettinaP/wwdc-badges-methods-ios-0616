//
//  FISAppDelegate.m
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    return YES;
}

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

- (NSString *)badgeForSpeaker:(NSString *)speaker
{
    NSString *badge =[NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    
    return badge;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers
{
    NSMutableArray *allSpeakersBadges = [[NSMutableArray alloc] init]; // creating an empty mutable array to hold each new string ('for' loop creates a new string each time so to capture the string must have it outside the for loop and help into the mutable array.
    
    for (NSUInteger i = 0; i < [speakers count]; i++){
        NSString *currentBadge = [self badgeForSpeaker:speakers[i]]; // as per advanced hint, using badgeForSpeaker: method to call on self with argument speakers[i]. speakers[i] which keeps track of whose name we are on in the loop an pluck it out of the array. Using self, a little cleaner than having NSString *badges = [NSString stringWithFormat:@"Hello, my name is %@.", speakers[i]]; .
                    
        [allSpeakersBadges addObject:currentBadge];// this ties in mutable array and adds badges (new strings) to you "bucket"
    }
    
    return allSpeakersBadges;// call on mutable array to print out greetings
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers
{
    NSMutableArray *greetingsAndRooms = [[NSMutableArray alloc] init]; // alloc- init- to create an empty array to hold each new string ('for' loop creates a new string each time so to capture the string must have it outside the for loop and help into the mutable array.
    
    for (NSUInteger i =0; i < [speakers count]; i++){ //count tells it how many times to loop for, which is length of the array.
        
        NSUInteger roomNumber = i + 1; // to account for "off by one" error of using index to obtain room assignment since index starts at 0.
        
        NSString *assignments = [NSString stringWithFormat: @"Welcome, %@! You'll be in dressing room %lu.", speakers[i], roomNumber]; // can't use a second %@ as format specifier for room assignment since it's an unsigned integer, must use %lu format specifier.
        
        [greetingsAndRooms addObject:assignments];//feed empty mutable array with assignments from "for" loop.
    }
    
    return greetingsAndRooms;
}


@end
