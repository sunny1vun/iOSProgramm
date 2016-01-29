//
//  AppDelegate.m
//  FirstApp
//
//  Created by 2 on 1/28/16.
//  Copyright © 2016 123. All rights reserved.
//

#import "AppDelegate.h"
#import "SUNEvent.h"

@interface AppDelegate ()
    @property (strong, nonatomic) NSMutableArray *arrayOfEvents;

@end

@implementation AppDelegate

static NSMutableArray *array;

//-(instancetype)init{
//    
//    self=[super init];
//    
//    if (self) {
//        _arrayOfEvents=[[NSMutableArray alloc] init];
//    }
//    return self;
//    
//}

-(BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    SUNEvent *myEvent=[[SUNEvent alloc] initWithEventName: [NSString stringWithUTF8String:__PRETTY_FUNCTION__] eventDate: [NSDate date] eventID:[[NSUUID UUID] UUIDString]];
    if(array== nil)
        array= [[NSMutableArray alloc] init];
    
    [array addObject:myEvent];
    
    
    NSData *data= [[NSUserDefaults standardUserDefaults] objectForKey:@"myData"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    if([data class] == [NSMutableArray class])
        array= [NSKeyedUnarchiver unarchiveObjectWithData:data];
    
    NSLog(@"%lu",array.count);

    return YES;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    SUNEvent *myEvent=[[SUNEvent alloc] initWithEventName: [NSString stringWithUTF8String:__PRETTY_FUNCTION__] eventDate: [NSDate date] eventID:[[NSUUID UUID] UUIDString]];
    
    [array addObject:myEvent];
    
    NSLog(@"%lu",(unsigned long)array.count);

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    
    SUNEvent *myEvent=[[SUNEvent alloc] initWithEventName: [NSString stringWithUTF8String:__PRETTY_FUNCTION__] eventDate: [NSDate date] eventID:[[NSUUID UUID] UUIDString]];
    
    [array addObject:myEvent];
    
    NSLog(@"%lu",(unsigned long)array.count);

}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    
    SUNEvent *myEvent=[[SUNEvent alloc] initWithEventName: [NSString stringWithUTF8String:__PRETTY_FUNCTION__] eventDate: [NSDate date] eventID:[[NSUUID UUID] UUIDString]];
    
    [array addObject:myEvent];
    
    NSLog(@"%lu",(unsigned long)array.count);

//    NSData *data= [NSKeyedArchiver archivedDataWithRootObject:array];
//    
//    [[NSUserDefaults standardUserDefaults] setObject:data forKey:@"myData"];
//    [[NSUserDefaults standardUserDefaults] synchronize];

}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    
    SUNEvent *myEvent=[[SUNEvent alloc] initWithEventName: [NSString stringWithUTF8String:__PRETTY_FUNCTION__] eventDate: [NSDate date] eventID:[[NSUUID UUID] UUIDString]];
    
    [array addObject:myEvent];
    
    NSLog(@"%@\n\n %lu", myEvent.eventName, (unsigned long)array.count);
    NSData *data= [NSKeyedArchiver archivedDataWithRootObject:array];
    
    [[NSUserDefaults standardUserDefaults] setObject:data forKey:@"myData"];
    [[NSUserDefaults standardUserDefaults] synchronize];


}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    
    SUNEvent *myEvent=[[SUNEvent alloc] initWithEventName: [NSString stringWithUTF8String:__PRETTY_FUNCTION__] eventDate: [NSDate date] eventID:[[NSUUID UUID] UUIDString]];
    
    [array addObject:myEvent];
    
    NSLog(@"%@\n\n %lu", myEvent.eventName, (unsigned long)array.count);
//    NSData *data= [NSKeyedArchiver archivedDataWithRootObject:array];
//    
//    [[NSUserDefaults standardUserDefaults] setObject:data forKey:@"myData"];
//    [[NSUserDefaults standardUserDefaults] synchronize];

}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    
    SUNEvent *myEvent=[[SUNEvent alloc] initWithEventName: [NSString stringWithUTF8String:__PRETTY_FUNCTION__] eventDate: [NSDate date] eventID:[[NSUUID UUID] UUIDString]];
    
    [array addObject:myEvent];
    
    NSLog(@"%@\n\n %lu", myEvent.eventName, (unsigned long)array.count);

}

@end
