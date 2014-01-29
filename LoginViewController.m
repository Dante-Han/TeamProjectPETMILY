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


@property (nonatomic) EasyTableView *horizontalView;

@end



@implementation LoginViewController

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
        label.text = [NSString stringWithFormat:@"%i", (int)indexPath.row];
	BOOL isSelected = (easyTableView.selectedIndexPath) ? ([easyTableView.selectedIndexPath compare:indexPath] == NSOrderedSame) : NO;
	[self borderIsSelected:isSelected forView:view];

}

- (void)viewDidLoad
{
    [super viewDidLoad];


    [self setupHorizontalView];

	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
