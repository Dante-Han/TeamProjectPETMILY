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

#define CELL_ID @"FEED_CELL"


@interface PetCMainViewController ()
{
        UISegmentedControl *middleSegment;


}

@property (strong,nonatomic) FeedInfo *feedInfo;

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


// custom layout
/*-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath // cell의 크기를 정하는 걸로 보인다.
{
    CGSize retVal = CGRectMake(0, 0, CGFloat width, <#CGFloat height#>)
    return retVal;
}*/

/*-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section // cell, header, footer간의 간격을 리턴한다.
{
    return UIEdgeInsetsMake(10,20,1,10);
}*/

-(void)middleSegment
{
    NSArray *items = @[@"All",@"Cute",@"Love",@"Fun",@"With"];
    middleSegment = [[UISegmentedControl alloc]initWithItems:items];
    middleSegment.frame = CGRectMake(90, 220, 300, 40);
     [self.view addSubview:middleSegment];

}

- (void)viewDidLoad
{
    [super viewDidLoad];
 /* _dogImage=[@[@"image1.jpg",@"image2.jpg",@"image3.jpg",@"image4.jpg",
                 @"image5.jpg",@"image6.jpg",@"image7.jpg",@"image8.jpg"]mutableCopy];

    _honorImage = [@[@"image5.jpg",@"line.png",@"image4,jpg",@"line.png",@"image7.jpg"]mutableCopy];
    versusPet = [NSArray arrayWithObjects:@"image1.jpg",@"image2.jpg", nil];*/

    self.feedInfo = [FeedInfo defaultFeedInfo];


    [self middleSegment];
    [self.mainCollection reloadData];
    [self.HonorTable reloadData];
	// Do any additional setup after loading the view.
}
//segment Action



// table view delegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.honorImage.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HONOR_CELL" forIndexPath:indexPath];
    UIImageView *imageView= [[UIImageView alloc]initWithFrame:CGRectMake(3, 3, 40, 40)];
    UIImage *image;

    NSInteger row = indexPath.row;
    image = [UIImage imageNamed:[_honorImage objectAtIndex:row]];
    imageView.image = image;

    [cell addSubview:imageView];
    return cell;
}


- (IBAction)handleSegmentSelection:(id)sender {


}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
