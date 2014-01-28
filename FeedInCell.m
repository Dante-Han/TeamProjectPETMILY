//
//  FeedInCell.m
//  ProjectPETMILY
//
//  Created by 한상민(iPhone) on 2014. 1. 28..
//  Copyright (c) 2014년 한상민(개만정벌). All rights reserved.
//

#import "FeedInCell.h"

#define CELL_ID @"HONOR_CELL"

@implementation FeedInCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}



-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return _dogImage.count;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return  _dogImage.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *imageCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"IMAGE_CELL" forIndexPath:indexPath];
    UIImage *image;
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(10,10,95, 135)];

    NSInteger row = indexPath.row;
    image = [UIImage imageNamed:[_dogImage objectAtIndex:row]];

    imageView.image = image;

    //    imageCell.backgroundColor = [UIColor whiteColor];
    [imageCell addSubview:imageView];
    return imageCell;
}


// custom layout
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath // cell의 크기를 정하는 걸로 보인다.
{
    CGSize retVal = CGSizeMake(100,150);
    return retVal;
}

-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section // cell, header, footer간의 간격을 리턴한다.
{
    return UIEdgeInsetsMake(10,20,1,10);
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
