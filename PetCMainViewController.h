//
//  PetCMainViewController.h
//  ProjectPETMILY
//
//  Created by 한상민(iPhone) on 2014. 1. 24..
//  Copyright (c) 2014년 한상민(개만정벌). All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FeedDelegate.h"
#import <REFrostedViewController.h>

@interface PetCMainViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDataSource, UITableViewDelegate>

@property (weak,nonatomic) id<FeedInfoDelegate>delegate;


@end
