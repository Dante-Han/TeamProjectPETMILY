//
//  NotiViewController.m
//  ProjectPETMILY
//
//  Created by Ethan Hansa on 2014. 2. 2..
//  Copyright (c) 2014년 한상민(개만정벌). All rights reserved.
//

#import "NotiViewController.h"
#import <REFrostedViewController.h>


@interface NotiViewController ()

@end

@implementation NotiViewController
- (IBAction)burgerClick:(id)sender {
    [self.frostedViewController presentMenuViewController];

    
}

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
