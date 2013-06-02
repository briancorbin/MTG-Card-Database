//
//  BCFullDatabaseSearchTableViewController.m
//  MTG Card Database
//
//  Created by Brian Corbin on 6/2/13.
//  Copyright (c) 2013 Brian Corbin. All rights reserved.
//

#import "BCFullDatabaseSearchTableViewController.h"

@interface BCFullDatabaseSearchTableViewController ()

@end

@implementation BCFullDatabaseSearchTableViewController


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)doneButtonPressed:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
