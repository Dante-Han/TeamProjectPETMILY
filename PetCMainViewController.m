//
//  PetCMainViewController.m
//  ProjectPETMILY
//
//  Created by 한상민(iPhone) on 2014. 1. 24..
//  Copyright (c) 2014년 한상민(개만정벌). All rights reserved.
//

#import "PetCMainViewController.h"
#import "FeedInfo.h"
#import "FeedInCell.h"
#import "HonorInfo.h"
#import "HonorCell.h"



#define CELL_ID @"FEED_CELL"


@interface PetCMainViewController ()
{
        UISegmentedControl *middleSegment;


}
@property (weak, nonatomic) IBOutlet UIView *mypageContainer;

@property (weak, nonatomic) IBOutlet UIView *burgerView;


@property (strong,nonatomic) FeedInfo *feedInfo;
@property (strong,nonatomic) HonorInfo *honorInfo;

@property (weak, nonatomic) IBOutlet UIView *startVoteView;


@property (weak, nonatomic) IBOutlet UITableView *HonorTable;
@property (nonatomic, strong)NSMutableArray *honorImage;

@property (weak, nonatomic) IBOutlet UICollectionView *mainCollection;




@property (weak, nonatomic) IBOutlet UIImageView *leftPet;
@property (weak, nonatomic) IBOutlet UIImageView *rightPet;

@end

@implementation PetCMainViewController

- (IBAction)startVoteClick:(id)sender {

    _startVoteView.hidden = YES;

}


-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{

    NSLog(@"%d",(int)[self.feedInfo feedCount]);
    return 1;

}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{


    NSLog(@"%d",(int)[self.feedInfo feedCount]);

    return [self.feedInfo feedCount];
}


-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{

    FeedInCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CELL_ID forIndexPath:indexPath];

    FeedItem *feedItem = [[FeedInfo defaultFeedInfo]feedAt:(int)indexPath.row];

    [cell setFeed:feedItem];


    return  cell;

}


- (void)viewDidLoad
{
    [super viewDidLoad];

    self.feedInfo = [FeedInfo defaultFeedInfo];

    self.honorInfo = [HonorInfo defaultHonor];
    self.burgerView.hidden = YES;


    [self.mainCollection reloadData];
    [self.HonorTable reloadData];

	// Do any additional setup after loading the view.
}
//segment Action
- (IBAction)petsCupClick:(id)sender {
    
    self.mypageContainer.hidden =YES;
    
}

- (IBAction)mypageClick:(id)sender {
    
    self.mypageContainer.hidden = NO;
    
}


// table view delegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return [self.honorInfo listCount];

}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    HonorCell *cell= [tableView dequeueReusableCellWithIdentifier:@"HONOR_CELL" forIndexPath:indexPath];

    HonorList *list = [[HonorInfo defaultHonor]listAt:(int)indexPath.row];

    [cell setList:list];


    return cell;
}

- (IBAction)burgerShowClick:(id)sender {

    BOOL moveFlag = 0;
    
  
    
    if(moveFlag==YES)
    {
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:1];
        self.burgerView.center = CGPointMake(self.burgerView.center.x-270,self.burgerView.center.y);
        [UIView commitAnimations];
        moveFlag = NO;

    }
    else
    {
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:0.5];
        self.burgerView.center = CGPointMake(self.burgerView.center.x+270, self.burgerView.center.y);
        [UIView commitAnimations];
        moveFlag = YES;


    }
    
        
    
}


- (IBAction)handleSegmentSelection:(id)sender {


}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
