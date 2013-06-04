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
    NSString *P;
    NSString *T;
    NSString *oracleRulings;
    NSString *set;
    NSString *rarity;
    NSString *imageID;
}

@property (nonatomic) NSString *cardName;
@property (nonatomic) NSString *cardType;
@property (nonatomic) NSString *cmc;
@property (nonatomic) NSString *P;
@property (nonatomic) NSString *T;
@property (nonatomic) NSString *oracleRulings;
@property (nonatomic) NSString *set;
@property (nonatomic) NSString *rarity;
@property (nonatomic) NSString *imageID;

-(id)initWithImageID:(NSString *) aImageID AndName:(NSString *) aCardName AndCMC:(NSString *) aCMC AndType:(NSString *) aCardType AndSet:(NSString *) aSet AndRarity:(NSString *) aRarity AndPower:(NSString *) aP AndToughness:(NSString *) aT AndOracleRulings:(NSString *) aOracleRulings;

@end
