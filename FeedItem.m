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


+(id)defaultFeedItem
{
if(nil == _instance)
_instance = [[FeedItem alloc]init];
return _instance;

}//싱글톤 만드는 코드

-(id)   init
{
    self=[super init];
    if(self)
    {
        self.profileImage = [[NSMutableArray alloc]init];
        self.petImage = [[NSMutableArray alloc]init];
        self.writeDate = [[NSMutableArray alloc]init];
        self.tag = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void) setPetImage:(NSMutableArray *)petImage
{
    petImage = [@[@"image1.jpg",@"image2.jpg",@"image3.jpg",@"image4.jpg",@"image5.jpg",@"image6.jpg"]mutableCopy];

}





@end
