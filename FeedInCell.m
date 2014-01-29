//
//  FeedInCell.m
//  ProjectPETMILY
//
//  Created by 한상민(iPhone) on 2014. 1. 29..
//  Copyright (c) 2014년 한상민(개만정벌). All rights reserved.
//

#import "FeedInCell.h"
#import "FeedItem.h"

@interface FeedInCell()

@property (weak, nonatomic) IBOutlet UIImageView *petImageView;


@end


@implementation FeedInCell


-(void)setFeed:(FeedItem *)item
{
    self.petImageView.image = [UIImage imageNamed:item.petImage];

}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
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
