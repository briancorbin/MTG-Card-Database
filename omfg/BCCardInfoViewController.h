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

@property (weak, nonatomic) IBOutlet UIImageView *imgCardView;

@property BCMagicCard *cardInfo;

@end
