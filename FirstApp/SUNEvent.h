//
//  SUNEvent.h
//  FirstApp
//
//  Created by 2 on 1/28/16.
//  Copyright © 2016 123. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SUNEvent : NSObject <NSCoding>

@property (nonatomic) NSString *eventName;
@property (nonatomic) NSDate *eventDate;
@property (nonatomic) NSString *eventID;

-initWithEventName:(NSString*) eventName;

@end
