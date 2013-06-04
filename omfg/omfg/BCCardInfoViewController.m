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

@synthesize cardInfo, imgCardView;

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
    imgCardView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=%@&type=card",cardInfo.imageID ]]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
