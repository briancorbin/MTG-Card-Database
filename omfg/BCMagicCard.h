//
//  BCMagicCard.h
//  omfg
//
//  Created by Brian Corbin on 5/30/13.
//  Copyright (c) 2013 Brian Corbin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BCMagicCard : NSObject
{
    NSString *cardName;
    NSString *cardType;
    NSString *cmc;
    NSString *power;
    NSString *toughness;
    NSString *rarity;
    NSString *set;
    NSString *imageName;
}

@property (nonatomic) NSString *cardName;
@property (nonatomic) NSString *cardType;
@property (nonatomic) NSString *cmc;
@property (nonatomic) NSString *power;
@property (nonatomic) NSString *toughness;
@property (nonatomic) NSString *rarity;
@property (nonatomic) NSString *set;
@property (nonatomic) NSString *imageName;

-(id)initWithCardName:(NSString *) aCardName AndCardType:(NSString *) aCardType AndCMC:(NSString *) aCMC AndPower:(NSString *) aPower AndToughness:(NSString *) aToughness AndRarity:(NSString *) aRarity AndSet:(NSString *) aSet AndImageName:(NSString *) aImageName;

@end
