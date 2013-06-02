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
    NSString *PT;
    NSString *text;
    NSString *setrarity;
    NSString *imageName;
}

@property (nonatomic) NSString *cardName;
@property (nonatomic) NSString *cardType;
@property (nonatomic) NSString *cmc;
@property (nonatomic) NSString *PT;
@property (nonatomic) NSString *text;
@property (nonatomic) NSString *setrarity;
@property (nonatomic) NSString *imageName;

-(id)initWithCardName:(NSString *) aCardName AndCardType:(NSString *) aCardType AndCMC:(NSString *) aCMC AndPT:(NSString *) aPT AndText:(NSString *) aText AndSetRarity:(NSString *) aSetRarity AndImageName:(NSString *) aImageName;

@end
