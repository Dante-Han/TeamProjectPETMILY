//
//  FamilyPet.m
//  ProjectPETMILY
//
//  Created by Ethan Hansa on 2014. 1. 30..
//  Copyright (c) 2014년 한상민(개만정벌). All rights reserved.
//

#import "FamilyPet.h"

@implementation FamilyPet

+(id)familyPet:(NSString*)name familyName:(NSString*)familyName petProfileImage:(NSString*)petProfileImage sex:(BOOL)sex
{
    
    FamilyPet *pet = [[FamilyPet alloc]init];
   
    
    pet.petName = name;
    pet.familyName = familyName;
    pet.petProfileImage = petProfileImage;
    
    return pet;
}


@end
