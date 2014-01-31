//
//  FamilyPetInfo.m
//  ProjectPETMILY
//
//  Created by Ethan Hansa on 2014. 1. 30..
//  Copyright (c) 2014년 한상민(개만정벌). All rights reserved.
//

#import "FamilyPetInfo.h"

@implementation FamilyPetInfo

static FamilyPetInfo *_instance=nil;

NSMutableArray *familyPetData;

+(id)defaultFamilyPetInfo
{
    if(nil == _instance)
        _instance = [[FamilyPetInfo alloc]init];
        
    return _instance;
}

-(id)init
{
    self = [super init];
    
    familyPetData=[[NSMutableArray alloc]init];
    NSString *petName;
    NSString *petProfileImage;
    NSString *familyName = [[NSString alloc]init];
    BOOL sex = 0;
      
    
    petName =[NSString stringWithFormat:@"썬더 타이거"];
    petProfileImage = [NSString stringWithFormat:@"myPet1.jpg"];
    familyName = [NSString stringWithFormat:@"상민이네 가족"];
    
    if(self)
    {
        FamilyPet *pet = [FamilyPet familyPet:petName familyName:familyName petProfileImage:petProfileImage sex:sex];
        
        [familyPetData addObject:pet];
        
    }
    
    return self;
}
-(int)petCount
{
    return (int)familyPetData.count;
}

-(id)petAt:(int)index
{

   if(index > (int)familyPetData.count)
    {
        return [familyPetData objectAtIndex:0];
    }
        
    return [familyPetData objectAtIndex:index];
}



@end
