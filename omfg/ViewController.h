//
//  ViewController.h
//  omfg
//
//  Created by Brian Corbin on 5/29/13.
//  Copyright (c) 2013 Brian Corbin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BCMagicCard.h"
#import "loadCardDataAndCSVParsing.h"

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate>

@property (weak, nonatomic) IBOutlet UISearchBar *mySearchBar;
@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@property (nonatomic, strong) NSMutableArray *AllCards; //Stores all BCMagicCard's
@property (nonatomic, strong) NSMutableArray *FilteredCards; //Stores BCMagicCard's after they have been filtered
@property BOOL isFiltered; //Boolean to denote if card list is filtered or not
@property BCMagicCard *selectedCard; //Stores the currently selected BCMagicCard to pass to BCCardInfoViewController

@property NSMutableArray *cardLibrary;

@end
