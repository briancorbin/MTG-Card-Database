//
//  ViewController.m
//  omfg
//
//  Created by Brian Corbin on 5/29/13.
//  Copyright (c) 2013 Brian Corbin. All rights reserved.
//

#import "ViewController.h"
#import "BCCardInfoViewController.h"
#import "BCMagicCard.h"
#import "loadCardDataAndCSVParsing.h"

@implementation ViewController

@synthesize mySearchBar, myTableView, isFiltered, selectedCard, AllCards, FilteredCards, cardLibrary;

- (void)viewDidLoad
{
    [super viewDidLoad];
    //----- These 2 lines load all of the card data into "cardLibrary"
    loadCardDataAndCSVParsing *loadCard = [[loadCardDataAndCSVParsing alloc]init];
    cardLibrary = [loadCard loadCardData];
    //-----
    
    AllCards = [[NSMutableArray alloc]init];
    
    //populating AllCards with all of the BCMagicCard objects.
    for(int i=0; i<cardLibrary.count;i++)
    {
        [AllCards addObject:[cardLibrary objectAtIndex:i]];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark-tableviewcode
//-----------------------------------------------------------
//----------------------TABLE VIEW CODE----------------------
//-----------------------------------------------------------

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (isFiltered) return [FilteredCards count];
    return [AllCards count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *CardCellIdentifier = @"CardCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CardCellIdentifier];
    
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CardCellIdentifier];
    }
    
    if(isFiltered)
    {
        BCMagicCard *tempMC = (BCMagicCard *)[FilteredCards objectAtIndex:indexPath.row];
        cell.textLabel.text = tempMC.cardName;
    }
    else
    {
        BCMagicCard *tempMC = (BCMagicCard *)[AllCards objectAtIndex:indexPath.row];
        cell.textLabel.text = tempMC.cardName;
    }
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

//Causes selected row to become unselected
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSIndexPath* selection = [self.myTableView indexPathForSelectedRow];
    if(selection)
    {
        [self.myTableView deselectRowAtIndexPath:selection animated:YES];
    }
}

#pragma mark-searchbarcode
//-----------------------------------------------------------
//----------------------Search Bar Code----------------------
//-----------------------------------------------------------

//Searches through the list of allCardsJustStringName and filters through that.
-(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    if(searchText.length == 0)
    {
        //Set boolean flag to NO
        isFiltered = NO;
    }
    else
    {
        //Set boolean flag to YES
        isFiltered = YES;
        
        //Alloc and init our filtered data
        FilteredCards = [[NSMutableArray alloc] init];
        
        //Fast enumeration to loop through values
        for(BCMagicCard *tempMC in AllCards)
        {
            NSRange MCNameRange = [tempMC.cardName rangeOfString:searchText options:NSCaseInsensitiveSearch];
            if(MCNameRange.location != NSNotFound)
            {
                [FilteredCards addObject:tempMC];
            }
        }
    }
    //Reload Table View
    [myTableView reloadData];
}

-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    [mySearchBar resignFirstResponder];
}

-(void)searchBarCancelButtonClicked:(UISearchBar *)searchBar
{
    [mySearchBar resignFirstResponder];
}

#pragma mark-PassSelectedRowDataToBCCardInfoViewController
//-----------------------------------------------------------
//-------------------PassRowDataToBCVC-----------------------
//-----------------------------------------------------------

-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(isFiltered)
    {
        BCMagicCard *tempMC = FilteredCards[indexPath.row];
        self.selectedCard = tempMC;
    }
    else
    {
        BCMagicCard *tempMC = AllCards[indexPath.row];
        self.selectedCard = tempMC;
    }
    return indexPath;
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"CardInfoSegue"])
    {
        BCCardInfoViewController *CIVC = (BCCardInfoViewController *)[segue destinationViewController];
        CIVC.cardInfo = self.selectedCard;
    }
}

@end











