//
//  SearchInfo.m
//  ProjectPETMILY
//
//  Created by Ethan Hansa on 2014. 1. 31..
//  Copyright (c) 2014년 한상민(개만정벌). All rights reserved.
//

#import "SearchInfo.h"

@implementation SearchInfo

static SearchInfo *_instance = nil;

+(id)defaultSearchInfo
{
    if(_instance == nil)

    {
        _instance = [[SearchInfo alloc]init];
        
    }
    return _instance;
}


-(id)init
{
    
    
    
    return self;
}

@end
