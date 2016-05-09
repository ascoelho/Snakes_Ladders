//
//  Player.h
//  Snakes_Ladders
//
//  Created by Anthony Coelho on 2016-05-08.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cell.h"
#import "Token.h"

@interface Player : NSObject

@property (strong, nonatomic) Token *token;
@property (copy, nonatomic) NSString *diceRoll;
@property int playerNumber;

-(instancetype)initWithPlayerNumber:(int)number;



@end
