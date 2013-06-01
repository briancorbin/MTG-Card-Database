//
//  BCCardInfoViewController.h
//  omfg
//
//  Created by Brian Corbin on 5/29/13.
//  Copyright (c) 2013 Brian Corbin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BCMagicCard.h"

@interface BCCardInfoViewController : UIViewController

- (IBAction)doneButtonPressed:(id)sender;

@property (weak, nonatomic) IBOutlet UINavigationBar *navBarCardTitle;
@property (weak, nonatomic) IBOutlet UIImageView *imgCardView;

@property BCMagicCard *cardInfo;

@end
