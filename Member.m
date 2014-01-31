//
//  Member.m
//  ProjectPETMILY
//
//  Created by Ethan Hansa on 2014. 1. 31..
//  Copyright (c) 2014년 한상민(개만정벌). All rights reserved.
//

#import "Member.h"

@implementation Member

-(id)member:(NSString*)name profileImage:(NSString*)profileImage petmilyID:(NSString*)petmilyID EMail:(NSString*)EMail
{


    Member *member = [[Member alloc]init];
    
    self.name = name;
    self.profileImage = profileImage;
    self.petMilyID = petmilyID;
    self.EMail = EMail;
    
    return member;
    
}

@end
