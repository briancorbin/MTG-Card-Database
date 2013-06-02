//
//  loadCardDataAndCSVParsing.m
//  omfg
//
//  Created by Brian Corbin on 5/30/13.
//  Copyright (c) 2013 Brian Corbin. All rights reserved.
//

#import "loadCardDataAndCSVParsing.h"
#import "BCMagicCard.h"
#import "ViewController.h"

@implementation loadCardDataAndCSVParsing
@synthesize cardLibrary;

-(NSMutableArray *)loadCardData
{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"savetest" ofType:@"txt"];
    NSString *fileContent = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    NSMutableArray *rowArray = [[NSMutableArray alloc] initWithArray:[fileContent componentsSeparatedByString:@"\n"]];
    [rowArray removeObjectAtIndex:0]; //removes the header titles of each column
    NSMutableArray *cardNames = [[NSMutableArray alloc]init]; //Add however many columns there are
    NSMutableArray *cardTypes = [[NSMutableArray alloc]init];
    NSMutableArray *cardCMCs = [[NSMutableArray alloc]init];
    NSMutableArray *cardPTs = [[NSMutableArray alloc]init];
    NSMutableArray *cardTexts = [[NSMutableArray alloc]init];
    NSMutableArray *cardSetsRarities = [[NSMutableArray alloc]init];
    
    for(int i=0; i<rowArray.count;i++)
    {
        NSMutableArray *tempArray = [[NSMutableArray alloc]initWithArray:[rowArray[i] componentsSeparatedByString:@"@"]];
        [cardNames addObject:[tempArray objectAtIndex:0]];
        [cardTypes addObject:[tempArray objectAtIndex:1]];
        [cardCMCs addObject:[tempArray objectAtIndex:2]];
        [cardPTs addObject:[tempArray objectAtIndex:3]];
        [cardTexts addObject:[tempArray objectAtIndex:4]];
        [cardSetsRarities addObject:[tempArray objectAtIndex:5]];
    }
    NSLog(@"%@",cardSetsRarities[0]);
    cardLibrary = [[NSMutableArray alloc] init];
    for(int i=0;i<cardNames.count;i++)
    {
        BCMagicCard *newMagicCard = [[BCMagicCard alloc]initWithCardName:cardNames[i] AndCardType:cardTypes[i] AndCMC:cardCMCs[i] AndPT:cardPTs[i] AndText:cardTexts[i] AndSetRarity:cardSetsRarities[i] AndImageName:@""];
        [cardLibrary addObject:newMagicCard];
    }
    //passing cardLibrary to ViewController
    return cardLibrary;
}

@end
