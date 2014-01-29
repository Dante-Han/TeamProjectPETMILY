//
//  FeedItem.h
//  ProjectPETMILY
//
//  Created by 한상민(iPhone) on 2014. 1. 29..
//  Copyright (c) 2014년 한상민(개만정벌). All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FeedItem : NSObject

@property NSMutableArray *profileImage;
@property NSMutableArray *petImage;
@property NSMutableArray *writeDate;
@property NSMutableArray *tag;

//name, like, comment는 dictionary

-(void) setPetImage:(NSMutableArray *)petImage;
+(id)defaultFeedItem;

@end
