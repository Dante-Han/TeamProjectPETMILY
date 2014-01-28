//
//  PetCMainViewController.m
//  ProjectPETMILY
//
//  Created by 한상민(iPhone) on 2014. 1. 24..
//  Copyright (c) 2014년 한상민(개만정벌). All rights reserved.
//

#import "PetCMainViewController.h"

@interface PetCMainViewController ()
{
        UISegmentedControl *middleSegment;
}



@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic, strong) NSMutableArray *dogImage;

@property (weak, nonatomic) IBOutlet UITableView *HonorTable;
@property (nonatomic, strong)NSMutableArray *honorImage;




@property (weak, nonatomic) IBOutlet UIImageView *leftPet;
@property (weak, nonatomic) IBOutlet UIImageView *rightPet;

@end

@implementation PetCMainViewController


- (void)viewDidLoad
{
    [super viewDidLoad];

    NSArray *items = @[@"Cute",@"Comedy",@"Fun",@"etc."];
    NSArray *versusPet;

    UIImage *leftPetImage;
    UIImage *rightPetImage;

    _leftPet.image = leftPetImage;
    _rightPet.image = rightPetImage;

    middleSegment = [[UISegmentedControl alloc]initWithItems:items];
    middleSegment.frame = CGRectMake(90, 220, 230, 40);


    _dogImage=[@[@"image1.jpg",@"image2.jpg",@"image3.jpg",@"image4.jpg",
                 @"image5.jpg",@"image6.jpg",@"image7.jpg",@"image8.jpg"]mutableCopy];

    _honorImage = [@[@"image5.jpg",@"line.png",@"image4,jpg",@"line.png",@"image7.jpg"]mutableCopy];
    versusPet = [NSArray arrayWithObjects:@"image1.jpg",@"image2.jpg", nil];


    leftPetImage = [UIImage imageNamed:[versusPet objectAtIndex:0]];
    rightPetImage =[UIImage imageNamed:[versusPet objectAtIndex:1]];

    [self. view addSubview:_leftPet];
    [self. view addSubview:_rightPet];

    [self.view addSubview:middleSegment];


    [self.HonorTable reloadData];
    [self.collectionView reloadData];
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
