//
//  FamilyPetInCell.m
//  ProjectPETMILY
//
//  Created by Ethan Hansa on 2014. 1. 30..
//  Copyright (c) 2014년 한상민(개만정벌). All rights reserved.
//

#import "FamilyPetInCell.h"

#import "FamilyPet.h"

@interface FamilyPetInCell()
@property (weak, nonatomic) IBOutlet UIImageView *petImage;
@property (weak, nonatomic) IBOutlet UILabel *petName;
@property (weak, nonatomic) IBOutlet UILabel *petSex;

@end

@implementation FamilyPetInCell


-(void)setPet:(FamilyPet*)pet

{
    
    NSString *sex;
    
    if (pet.sex) {
        sex = [NSString stringWithFormat:@"남자"];
        
    }
    else
    {
        sex = [NSString stringWithFormat:@"여자"];
        
    }
    
    self.petImage.image = [UIImage imageNamed:pet.petProfileImage];
    NSLog(@"%@",pet.petProfileImage);
    self.petName.text = pet.petName;
        NSLog(@"%@",pet.petName);
    self.petSex.text = sex;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
