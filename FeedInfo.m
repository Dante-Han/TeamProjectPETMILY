//
//  FeedInfo.m
//  ProjectPETMILY
//
//  Created by 한상민(iPhone) on 2014. 1. 29..
//  Copyright (c) 2014년 한상민(개만정벌). All rights reserved.
//

#import "FeedInfo.h"
#import "FeedItem.h"


@implementation FeedInfo
{
    NSMutableArray *feedData;

}

static FeedInfo *_instance = nil;

+(id)defaultFeedInfo
{
    if(nil == _instance)
        _instance = [[FeedInfo alloc]init];
    return _instance;
}

-(int)feedCount
{
    return (int) feedData.count;
}

-(id)init
{
    self = [super init];
    if(self){

        NSString *imageString;
        feedData = [[NSMutableArray alloc]init];
        for(int i = 1; i<8; i++)
        {
            imageString = [NSString stringWithFormat:@"image%d.jpg",i];

            FeedItem *item = [FeedItem feed:imageString];
            [feedData addObject:item];
        }

    }

    return  self;
}

-(id)feedAt:(int)index
{
    return [feedData objectAtIndex:index];
}



@end
