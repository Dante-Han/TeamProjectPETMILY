//
//  FamilyPet.h
//  ProjectPETMILY
//
//  Created by Ethan Hansa on 2014. 1. 30..
//  Copyright (c) 2014년 한상민(개만정벌). All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FamilyPet : NSObject

@property (nonatomic)NSString *petName;
@property (nonatomic)NSString *familyName;
@property (nonatomic)NSString *age;
@property (nonatomic)NSString *petProfileImage;
@property (nonatomic)BOOL sex;

+(id)familyPet:(NSString*)name familyName:(NSString*)familyName petProfileImage:(NSString*)petProfileImage sex:(BOOL)sex;


@end
