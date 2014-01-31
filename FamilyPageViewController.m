//
//  FamilyPageViewController.m
//  ProjectPETMILY
//
//  Created by Ethan Hansa on 2014. 1. 30..
//  Copyright (c) 2014년 한상민(개만정벌). All rights reserved.
//

#import "FamilyPageViewController.h"
#import "FeedInCell.h"
#import "FeedInfo.h"
#import "FamilyPetInCell.h"
#import "FamilyPetInfo.h"



@interface FamilyPageViewController () <UICollectionViewDataSource, UICollectionViewDelegate>


@property (nonatomic) BOOL isLogin; // login 식별자

@property (strong,nonatomic) FeedInfo* feedInfo;
@property (strong,nonatomic) FamilyPetInfo *familyPetInfo;
@property (weak, nonatomic) IBOutlet UICollectionView *petCollection;

@property (weak, nonatomic) IBOutlet UICollectionView *memberCollection;
@property (weak, nonatomic) IBOutlet UICollectionView *feedCollection;
@property (weak, nonatomic) IBOutlet UIView *writeContainer;


@end

@implementation FamilyPageViewController

- (IBAction)writeClick:(id)sender {
    
    self.writeContainer.hidden = NO;
    


}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    
    if(collectionView == self.petCollection)
    {
        return [self.familyPetInfo petCount];
    }
    
    else if(collectionView == self.memberCollection)
    {
        return 2;
    }

    return [self.feedInfo feedCount];
    
    
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}



-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    if(collectionView == self.petCollection)
    {
        FamilyPetInCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PET_CELL" forIndexPath:indexPath];
        FamilyPet *pet = [[FamilyPetInfo defaultFamilyPetInfo]petAt:(int)indexPath];
        [cell setPet:pet];
        return cell;
        
    }
   
    else if(collectionView == self.memberCollection)
    {
        UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MEMBER_CELL" forIndexPath:indexPath];
        cell.backgroundColor =[UIColor blueColor];
        return cell;
    }

    else
    {
                
        FeedInCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"FEED_CELL" forIndexPath:indexPath];
        
        
         FeedItem *item =[[FeedInfo defaultFeedInfo]feedAt:(int)indexPath];
            [cell setMyFeed:item];
        
        return cell;

    }
}




- (void)viewDidLoad
{
    [super viewDidLoad];
    

    
    if (self.isLogin) {
        
    }
    else
    {
        
    }
    
    self.feedInfo = [FeedInfo defaultFeedInfo];
    self.familyPetInfo = [FamilyPetInfo defaultFamilyPetInfo];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
