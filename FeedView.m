//
//  FeedView.m
//  ProjectPETMILY
//
//  Created by 한상민(iPhone) on 2014. 1. 29..
//  Copyright (c) 2014년 한상민(개만정벌). All rights reserved.
//

#import "FeedView.h"
#define CELL_ID  @"FEED_CELL"

@implementation FeedView


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

    }
    return self;
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    FeedItem *feedItem = [FeedItem defaultFeedItem];
    NSLog(@"section : %@",feedItem);
    return [feedItem.petImage count];

}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    FeedItem *feedItem = [FeedItem defaultFeedItem];
        NSLog(@"item : %@",feedItem);
    return [feedItem.petImage count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{

    UICollectionViewCell *imageCell = [collectionView dequeueReusableCellWithReuseIdentifier:CELL_ID forIndexPath:indexPath];
    UIImage *image;
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(10,10,50, 80)];

    imageCell.backgroundColor = [UIColor redColor];

    FeedItem *feedItem = [FeedItem defaultFeedItem];

    NSInteger row = indexPath.row;

    image = [UIImage imageNamed:[feedItem.petImage objectAtIndex:row]];

    imageView.image = image;
    NSLog(@"%@",image);

    imageCell.backgroundColor = [UIColor whiteColor];
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
