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

-(instancetype)init{
    
    self=[super init];
    
    if (self) {
        _arrayOfEvents=[[NSMutableArray alloc] init];
    }
    return self;
    
}

-(BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    SUNEvent *myEvent=[[SUNEvent alloc] initWithEventName: [NSString stringWithUTF8String:__PRETTY_FUNCTION__] eventDate: [NSDate date] eventID:[[NSUUID UUID] UUIDString]];
    
    [self.arrayOfEvents addObject:myEvent];
    
    NSData *data= [[NSUserDefaults standardUserDefaults] objectForKey:@"myData"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    if(data)
        self.arrayOfEvents= [NSKeyedUnarchiver unarchiveObjectWithData:data];
    
    NSLog(@"%d",(int)self.arrayOfEvents.count);

    return YES;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    SUNEvent *myEvent=[[SUNEvent alloc] initWithEventName: [NSString stringWithUTF8String:__PRETTY_FUNCTION__] eventDate: [NSDate date] eventID:[[NSUUID UUID] UUIDString]];
    
    [self.arrayOfEvents addObject:myEvent];
    
    NSLog(@"%d",(int)self.arrayOfEvents.count);

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    
    SUNEvent *myEvent=[[SUNEvent alloc] initWithEventName: [NSString stringWithUTF8String:__PRETTY_FUNCTION__] eventDate: [NSDate date] eventID:[[NSUUID UUID] UUIDString]];
    
    [self.arrayOfEvents addObject:myEvent];
    
    NSLog(@"%d",(int)self.arrayOfEvents.count);

}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    
    SUNEvent *myEvent=[[SUNEvent alloc] initWithEventName: [NSString stringWithUTF8String:__PRETTY_FUNCTION__] eventDate: [NSDate date] eventID:[[NSUUID UUID] UUIDString]];
    
    [self.arrayOfEvents addObject:myEvent];
    
    NSLog(@"%d",(int)self.arrayOfEvents.count);

    NSData *data= [NSKeyedArchiver archivedDataWithRootObject:self.arrayOfEvents];
    [[NSUserDefaults standardUserDefaults] setObject:data forKey:@"myData"];
    [[NSUserDefaults standardUserDefaults] synchronize];

}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    NSString *nameOfEvent= [NSString stringWithUTF8String:__PRETTY_FUNCTION__];
    NSDate *dateOfEvent= [NSDate date];
    NSString *idOfEvent= [[NSUUID UUID] UUIDString];
    
    SUNEvent *myEvent=[[SUNEvent alloc] initWithEventName: nameOfEvent eventDate: dateOfEvent eventID:idOfEvent];
    
    [self.arrayOfEvents addObject:myEvent];
    
    NSLog(@"%@\n\n %lu", myEvent.eventName, (unsigned long)self.arrayOfEvents.count);


}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    NSString *nameOfEvent= [NSString stringWithUTF8String:__PRETTY_FUNCTION__];
    NSDate *dateOfEvent= [NSDate date];
    NSString *idOfEvent= [[NSUUID UUID] UUIDString];
    SUNEvent *myEvent=[[SUNEvent alloc] initWithEventName: nameOfEvent eventDate: dateOfEvent eventID:idOfEvent];
    
    [self.arrayOfEvents addObject:myEvent];
    
    NSLog(@"%@\n\n %lu", myEvent.eventName, (unsigned long)self.arrayOfEvents.count);


}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    NSString *nameOfEvent= [NSString stringWithUTF8String:__PRETTY_FUNCTION__];
    NSDate *dateOfEvent= [NSDate date];
    NSString *idOfEvent= [[NSUUID UUID] UUIDString];
    
    SUNEvent *myEvent=[[SUNEvent alloc] initWithEventName: nameOfEvent eventDate: dateOfEvent eventID:idOfEvent];
    
    [self.arrayOfEvents addObject:myEvent];

    NSLog(@"%@\n\n %lu", myEvent.eventName, (unsigned long)self.arrayOfEvents.count);

}

@end
