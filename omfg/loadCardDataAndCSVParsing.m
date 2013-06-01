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
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"DGM" ofType:@"csv"];
    NSString *fileContent = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    NSMutableArray *rowArray = [[NSMutableArray alloc] initWithArray:[fileContent componentsSeparatedByString:@"\n"]];
    [rowArray removeObjectAtIndex:0]; //removes the header titles of each column
    
    NSMutableArray *cardNames = [[NSMutableArray alloc]init]; //Add however many columns there are
    NSMutableArray *cardTypes = [[NSMutableArray alloc]init];
    NSMutableArray *cardCMCs = [[NSMutableArray alloc]init];
    NSMutableArray *cardPs = [[NSMutableArray alloc]init];
    NSMutableArray *cardTs = [[NSMutableArray alloc]init];
    NSMutableArray *cardRarities = [[NSMutableArray alloc]init];
    NSMutableArray *cardSets = [[NSMutableArray alloc]init];
    NSMutableArray *cardImageNames = [[NSMutableArray alloc]init];
    
    for(int i=0; i<rowArray.count;i++)
    {
        NSMutableArray *tempArray = [[NSMutableArray alloc]initWithArray:[rowArray[i] componentsSeparatedByString:@":"]];
        [cardNames addObject:[tempArray objectAtIndex:0]];
        [cardTypes addObject:[tempArray objectAtIndex:1]];
        [cardCMCs addObject:[tempArray objectAtIndex:2]];
        [cardPs addObject:[tempArray objectAtIndex:3]];
        [cardTs addObject:[tempArray objectAtIndex:4]];
        [cardRarities addObject:[tempArray objectAtIndex:5]];
        [cardSets addObject:[tempArray objectAtIndex:6]];
        [cardImageNames addObject:[NSString stringWithFormat:@"http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=%@&type=card", [tempArray objectAtIndex:7]]];
    }
    cardLibrary = [[NSMutableArray alloc] init];
    for(int i=0;i<cardNames.count;i++)
    {
        BCMagicCard *newMagicCard = [[BCMagicCard alloc] initWithCardName:cardNames[i] AndCardType:cardTypes[i] AndCMC:cardCMCs[i] AndPower:cardPs[i] AndToughness:cardTs[i] AndRarity:cardRarities[i] AndSet:cardSets[i] AndImageName:cardImageNames[i]];
        [cardLibrary addObject:newMagicCard];
    }
    //passing cardLibrary to ViewController
    return cardLibrary;
}

@end
