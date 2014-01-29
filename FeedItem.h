//
//  FeedItem.h
//  ProjectPETMILY
//
//  Created by 한상민(iPhone) on 2014. 1. 29..
//  Copyright (c) 2014년 한상민(개만정벌). All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FeedItem : NSObject

@property (nonatomic)NSString *profileImage;
@property (nonatomic)NSString *petImage;
@property (nonatomic)NSDate *writeDate;
@property (nonatomic)NSString *tag;

//name, like, comment는 dictionary

+(id)feed:(NSString *)petImage;

@end
