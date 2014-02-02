//
//  PostViewController.m
//  ProjectPETMILY
//
//  Created by Ethan Hansa on 2014. 1. 31..
//  Copyright (c) 2014년 한상민(개만정벌). All rights reserved.
//

#import "PostViewController.h"

@interface PostViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *profileImage;
@property (weak, nonatomic) IBOutlet UIImageView *petImage;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;


@end

@implementation PostViewController

    


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *currentDate;
    int year;
    int month;
    int day;
    NSDate *date=[NSDate date];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components =[calendar components:NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit fromDate:date];
    
    year = (int)[components year];
    month = (int)[components month];
    day = (int)[components day];
    
    currentDate = [NSString stringWithFormat:@"%d년 %d월 %d일",year,month,day];
    
    self.dateLabel.text = currentDate;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
