//
//  FamilyPetInfo.h
//  ProjectPETMILY
//
//  Created by Ethan Hansa on 2014. 1. 30..
//  Copyright (c) 2014년 한상민(개만정벌). All rights reserved.
//

#import <Foundation/Foundation.h>

#import "FamilyPet.h"


@interface FamilyPetInfo : NSObject

+(id)defaultFamilyPetInfo;

-(int)petCount;
-(id)petAt:(int)index;
  @end
