//
//  BCCardInfoViewController.m
//  omfg
//
//  Created by Brian Corbin on 5/29/13.
//  Copyright (c) 2013 Brian Corbin. All rights reserved.
//

#import "BCCardInfoViewController.h"
#import "ViewController.h"
#import "BCMagicCard.h"

@implementation BCCardInfoViewController

@synthesize cardInfo, navBarCardTitle, imgCardView;

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
    navBarCardTitle.topItem.title = cardInfo.cardName;
    //NSString *imgName = cardInfo.imageName;
    //imgCardView.image = [UIImage imageNamed:imgName];
    NSLog(@"%@", cardInfo.imageName);
    imgCardView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:cardInfo.imageName]]];
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
