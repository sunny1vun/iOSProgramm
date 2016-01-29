//
//  SUNEvent.m
//  FirstApp
//
//  Created by 2 on 1/28/16.
//  Copyright © 2016 123. All rights reserved.
//

#import "SUNEvent.h"

@implementation SUNEvent

-(instancetype)initWithEventName:(NSString*)eventName{
    
    self= [super init];
    
    if(self){
//        SUNEvent *myEvent=[[SUNEvent alloc] initWithEventName: [NSString stringWithUTF8String:__PRETTY_FUNCTION__] eventDate: [NSDate date] eventID:[[NSUUID UUID] UUIDString]];
        self.eventName= eventName;
        self.eventDate= [NSDate date];
        self.eventID= [[NSUUID UUID] UUIDString];
    }
    return self;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    
    self= [super init];
    
    if(self){
        self.eventName= [aDecoder decodeObjectForKey:@"eventName"];
        self.eventDate= [aDecoder decodeObjectForKey:@"eventDate"];
        self.eventID= [aDecoder decodeObjectForKey:@"eventID"];
    }
    
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder{
    
    [aCoder encodeObject:self.eventName forKey:@"eventName"];
    [aCoder encodeObject:self.eventDate forKey:@"eventDate"];
    [aCoder encodeObject:self.eventID forKey:@"eventID"];
    
}

@end
