//
//  BCMagicCard.m
//  omfg
//
//  Created by Brian Corbin on 5/30/13.
//  Copyright (c) 2013 Brian Corbin. All rights reserved.
//

#import "BCMagicCard.h"

@implementation BCMagicCard
@synthesize cardName, cardType, cmc, PT, text, setrarity, imageName;

-(id)initWithCardName:(NSString *)aCardName AndCardType:(NSString *)aCardType AndCMC:(NSString *)aCMC AndPT:(NSString *)aPT AndText:(NSString *) aText AndSetRarity:(NSString *)aSetRarity AndImageName:(NSString *)aImageName
{
    self.cardName = aCardName;
    self.cardType = aCardType;
    self.cmc = aCMC;
    self.PT = aPT;
    self.text = aText;
    self.setrarity = aSetRarity;
    self.imageName = aImageName;
    
    return self;
}

@end
