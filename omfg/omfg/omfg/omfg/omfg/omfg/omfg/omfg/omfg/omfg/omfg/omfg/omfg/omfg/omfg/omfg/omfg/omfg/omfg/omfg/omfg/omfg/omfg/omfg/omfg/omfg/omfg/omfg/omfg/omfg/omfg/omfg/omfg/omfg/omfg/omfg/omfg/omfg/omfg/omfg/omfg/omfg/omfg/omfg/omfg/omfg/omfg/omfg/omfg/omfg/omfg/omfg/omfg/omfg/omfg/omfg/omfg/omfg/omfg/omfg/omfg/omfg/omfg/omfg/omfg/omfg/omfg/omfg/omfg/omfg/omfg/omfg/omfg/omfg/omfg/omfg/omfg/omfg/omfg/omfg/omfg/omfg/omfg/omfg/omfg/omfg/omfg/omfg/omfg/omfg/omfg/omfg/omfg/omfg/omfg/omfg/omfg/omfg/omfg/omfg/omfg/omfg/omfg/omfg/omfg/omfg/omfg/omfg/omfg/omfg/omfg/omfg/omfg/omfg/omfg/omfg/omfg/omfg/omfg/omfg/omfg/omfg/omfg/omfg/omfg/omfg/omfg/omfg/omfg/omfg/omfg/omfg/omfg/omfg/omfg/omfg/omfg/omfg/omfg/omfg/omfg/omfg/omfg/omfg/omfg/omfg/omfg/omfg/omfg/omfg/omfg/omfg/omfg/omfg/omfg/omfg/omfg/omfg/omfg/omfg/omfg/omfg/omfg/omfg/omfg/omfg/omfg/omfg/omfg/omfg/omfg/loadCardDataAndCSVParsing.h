//
//  loadCardDataAndCSVParsing.h
//  omfg
//
//  Created by Brian Corbin on 5/30/13.
//  Copyright (c) 2013 Brian Corbin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface loadCardDataAndCSVParsing : NSObject

@property (nonatomic, strong) NSMutableArray *cardLibrary;

-(NSMutableArray *)loadCardData;

@end
