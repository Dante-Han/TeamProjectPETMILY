//
//  LoginViewController.m
//  ProjectPETMILY
//
//  Created by 한상민(iPhone) on 2014. 1. 24..
//  Copyright (c) 2014년 한상민(개만정벌). All rights reserved.
//

#import "LoginViewController.h"
#import <EasyTableView.h>

#define HORIZONTAL_TABLEVIEW_HEIGHT 50
#define TABLE_BACKGROUND_COLOR  [UIColor clearColor]
#define BORDER_VIEW_TAG				10

#define INTERFACE_IS_PHONE   ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)

@interface LoginViewController () <EasyTableViewDelegate>

{
    EasyTableView *horizontalView;

    NSMutableArray *imageData1;
    NSMutableArray *imageData2;



}

-(void)setupHorizontalView;
-(void)setupGridView;

@property (nonatomic) EasyTableView *horizontalView;

@end



@implementation LoginViewController


/*-(void)setupGridView
{
    GMGridView *gmGridView = [[GMGridView alloc]initWithFrame:CGRectMake(160, 300, 160, 150)];

    gmGridView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    gmGridView.backgroundColor = [UIColor clearColor];
                                  [self.view addSubview:gmGridView];
                                   _gmGridView = gmGridView;
    NSInteger spacing = INTERFACE_IS_PHONE ? 10 : 15;

            _gmGridView.style = GMGridViewStyleSwap;
            _gmGridView.itemSpacing = spacing;
            _gmGridView.minEdgeInsets = UIEdgeInsetsMake(spacing, spacing, spacing, spacing);
            _gmGridView.centerGrid = YES;
            _gmGridView.actionDelegate = self;
                _gmGridView.sortingDelegate = self;
    _gmGridView.transformDelegate = self;
            _gmGridView.dataSource = self;


    [self.view addSubview:gmGridView];
}

-(NSInteger)numberOfItemsInGMGridView:(GMGridView *)gridView
{
    return [_currentData count];
}

-(CGSize)GMGridView:(GMGridView *)gridView sizeForItemsInInterfaceOrientation:(UIInterfaceOrientation)orientation
{

   // if (INTERFACE_IS_PHONE)
    //{
        if (UIInterfaceOrientationIsLandscape(orientation))
        {
            return CGSizeMake(160, 135);
        }
        else
        {
            return CGSizeMake(140, 110);
        }
    //}
    /*else
    {
        if (UIInterfaceOrientationIsLandscape(orientation))
        {
            return CGSizeMake(285, 205);
        }
        else
        {
            return CGSizeMake(230, 175);
        }
    }

}


- (GMGridViewCell *)GMGridView:(GMGridView *)gridView cellForItemAtIndex:(NSInteger)index
{
    //NSLog(@"Creating view indx %d", index);

    CGSize size = [self GMGridView:gridView sizeForItemsInInterfaceOrientation:[[UIApplication sharedApplication] statusBarOrientation]];

    GMGridViewCell *cell = [gridView dequeueReusableCell];

    if (!cell)
    {
        cell = [[GMGridViewCell alloc] init];
        cell.deleteButtonIcon = [UIImage imageNamed:@"close_x.png"];
        cell.deleteButtonOffset = CGPointMake(-15, -15);

        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 80, size.height)];
        view.backgroundColor = [UIColor clearColor];
        view.layer.masksToBounds = NO;
        view.layer.cornerRadius = 10;

        cell.contentView = view;
    }

    [[cell.contentView subviews] makeObjectsPerformSelector:@selector(removeFromSuperview)];

    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, size.width, size.height)];
    UIImage *image = [UIImage imageNamed:[_currentData objectAtIndex:index]];

    NSLog(@"%@",[_currentData objectAtIndex:index]);

    imageView.image = image;

    [cell.contentView addSubview:imageView];

    return cell;
}


- (BOOL)GMGridView:(GMGridView *)gridView canDeleteItemAtIndex:(NSInteger)index
{
    return YES; //index % 2 == 0;
}


*/



- (void)borderIsSelected:(BOOL)selected forView:(UIView *)view {
	UIImageView *borderView		= (UIImageView *)[view viewWithTag:BORDER_VIEW_TAG];
	NSString *borderImageName	= (selected) ? @"selected_border.png" : @"image_border.png";
	borderView.image			= [UIImage imageNamed:borderImageName];
}


-(void)setupHorizontalView
{
    CGRect frameRect = CGRectMake(0,200, 320, HORIZONTAL_TABLEVIEW_HEIGHT);

    EasyTableView *view = [[EasyTableView alloc]initWithFrame:frameRect numberOfColumns:10 ofWidth:180];
    self.horizontalView = view;

    horizontalView.delegate						= self;
	horizontalView.tableView.backgroundColor	= TABLE_BACKGROUND_COLOR;
	horizontalView.tableView.allowsSelection	= YES;
	horizontalView.tableView.separatorColor		= [UIColor clearColor];
	horizontalView.cellBackgroundColor			= [UIColor clearColor];
	horizontalView.autoresizingMask				= UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleWidth;

	[self.view addSubview:horizontalView];
}
-(NSUInteger)numberOfCellsForEasyTableView:(EasyTableView *)view inSection:(NSInteger)section
{
    return 10;
}
-(NSUInteger)numberOfSectionsInEasyTableView:(EasyTableView *)easyTableView
{
    return 1;
}

-(UIView*)easyTableView:(EasyTableView *)easyTableView viewForRect:(CGRect)rect
{
    CGRect labelRect = CGRectMake(10, 10, 20 , 20);
    UILabel *label  = [[UILabel alloc]initWithFrame:labelRect];

    label.textColor = [UIColor whiteColor];
    label.font  = [UIFont boldSystemFontOfSize:60];

    UIImageView *borderView = [[UIImageView alloc]initWithFrame:label.bounds];
    borderView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;

    [label addSubview:borderView];

    return  label;
}

-(void)easyTableView:(EasyTableView *)easyTableView setDataForView:(UIView *)view forIndexPath:(NSIndexPath *)indexPath
{
    UILabel *label = (UILabel *)view;
        label.text = [NSString stringWithFormat:@"%i", indexPath.row];
	BOOL isSelected = (easyTableView.selectedIndexPath) ? ([easyTableView.selectedIndexPath compare:indexPath] == NSOrderedSame) : NO;
	[self borderIsSelected:isSelected forView:view];

}

- (void)viewDidLoad
{
    [super viewDidLoad];

    imageData1 =[NSMutableArray arrayWithObjects:@"image1.jpg",@"image2.jpg",@"image3.jpg",@"image4.jpg",@"image5.jpg",@"image6.jpg",@"image7.jpg",@"image8.jpg", nil];


    _currentData = imageData1;

    [self setupHorizontalView];
    [self setupGridView];


	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
