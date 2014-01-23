//
//  LoginViewController.m
//  ProjectPETMILY
//
//  Created by 한상민(iPhone) on 2014. 1. 23..
//  Copyright (c) 2014년 한상민(개만정벌). All rights reserved.
//


#import <UIKit/UIKit.h>
#import "LoginViewController.h"

@interface LoginViewController ()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property (nonatomic, strong) NSMutableArray *dogimage;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation LoginViewController



- (void)viewDidLoad
{
    [super viewDidLoad];

    _dogimage = [@[@"image1.jpg",@"image2.jpg",@"image3.jpg",@"image4.jpg",@"image5.jpg",@"image6.jpg",@"image7.jpg",@"image8.jpg"]mutableCopy];

//    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"IMAGE_CELL" ];

    [self.collectionView reloadData];
	// Do any additional setup after loading the view.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return _dogimage.count;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return  _dogimage.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *imageCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"IMAGE_CELL" forIndexPath:indexPath];
    UIImage *image;
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(10,10,120, 150)];

    int row = indexPath.row;
    image = [UIImage imageNamed:[_dogimage objectAtIndex:row]];
    NSLog(@"%d",row);
    imageView.image = image;

//    imageCell.backgroundColor = [UIColor whiteColor];
    [imageCell addSubview:imageView];
    return imageCell;
}

// custom layout
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath // cell의 크기를 정하는 걸로 보인다.
{
    CGSize retVal = CGSizeMake(140,170);
    return retVal;
}

-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section // cell, header, footer간의 간격을 리턴한다.
{
    return UIEdgeInsetsMake(10,20,1,10);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
