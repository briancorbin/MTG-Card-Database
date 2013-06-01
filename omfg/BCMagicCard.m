//
//  BCMagicCard.m
//  omfg
//
//  Created by Brian Corbin on 5/30/13.
//  Copyright (c) 2013 Brian Corbin. All rights reserved.
//

#import "BCMagicCard.h"

@implementation BCMagicCard
@synthesize cardName, cardType, cmc, power, toughness, rarity, set, imageName;

-(id)initWithCardName:(NSString *)aCardName AndCardType:(NSString *)aCardType AndCMC:(NSString *)aCMC AndPower:(NSString *)aPower AndToughness:(NSString *)aToughness AndRarity:(NSString *)aRarity AndSet:(NSString *)aSet AndImageName:(NSString *)aImageName
{
    if(self = [super init])
    {
        self.cardName = aCardName;
        self.cardType = aCardType;
        self.cmc = aCMC;
        self.power = aPower;
        self.toughness = aToughness;
        self.rarity = aRarity;
        self.set = aSet;
        self.imageName = aImageName;
    }
    return self;
}

@end
