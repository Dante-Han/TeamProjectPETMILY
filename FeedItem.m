//
//  FeedItem.m
//  ProjectPETMILY
//
//  Created by 한상민(iPhone) on 2014. 1. 29..
//  Copyright (c) 2014년 한상민(개만정벌). All rights reserved.
//

#import "FeedItem.h"

@implementation FeedItem

static FeedItem *_instance = nil;


+(id)feed:(NSString *)petImage
{
    FeedItem *item = [[FeedItem alloc]init];

    item.petImage = petImage;

    return item;

}//팩토리 메소드

-(id)   init
{
    self=[super init];
    if(self)
    {

    }

    return self;
}


@end
