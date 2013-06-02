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
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"RTR" ofType:@"csv"];
    NSString *fileContent = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    NSMutableArray *rowArray = [[NSMutableArray alloc] initWithArray:[fileContent componentsSeparatedByString:@"\n"]];
    [rowArray removeObjectAtIndex:0]; //removes the header titles of each column
    NSMutableArray *cardImageIDs = [[NSMutableArray alloc]init];
    NSMutableArray *cardNames = [[NSMutableArray alloc]init];
    NSMutableArray *cardTypes = [[NSMutableArray alloc]init];
    NSMutableArray *cardCMCs = [[NSMutableArray alloc]init];
    NSMutableArray *cardPs = [[NSMutableArray alloc]init];
    NSMutableArray *cardTs = [[NSMutableArray alloc]init];
    NSMutableArray *cardOracleRulings = [[NSMutableArray alloc]init];
    NSMutableArray *cardSets = [[NSMutableArray alloc]init];
    NSMutableArray *cardRarities = [[NSMutableArray alloc]init];
    
    for(int i=0; i<rowArray.count;i++)
    {
        NSMutableArray *tempArray = [[NSMutableArray alloc]initWithArray:[rowArray[i] componentsSeparatedByString:@"@"]];
        [cardImageIDs addObject:[tempArray objectAtIndex:0]];
        [cardNames addObject:[tempArray objectAtIndex:1]];
        [cardCMCs addObject:[tempArray objectAtIndex:2]];
        [cardTypes addObject:[tempArray objectAtIndex:3]];
        [cardSets addObject:[tempArray objectAtIndex:4]];
        [cardRarities addObject:[tempArray objectAtIndex:5]];
        [cardPs addObject:[tempArray objectAtIndex:6]];
        [cardTs addObject:[tempArray objectAtIndex:7]];
        [cardOracleRulings addObject:[tempArray objectAtIndex:8]];
    }
    cardLibrary = [[NSMutableArray alloc] init];
    for(int i=0;i<cardNames.count;i++)
    {
        BCMagicCard *newMagicCard = [[BCMagicCard alloc]initWithImageID:cardImageIDs[i] AndName:cardNames[i] AndCMC:cardCMCs[i] AndType:cardTypes[i] AndSet:cardSets[i] AndRarity:cardRarities[i] AndPower:cardPs[i] AndToughness:cardTs[i] AndOracleRulings:cardOracleRulings[i]];
        [cardLibrary addObject:newMagicCard];
    }
    //passing cardLibrary to ViewController
    return cardLibrary;
}

@end
