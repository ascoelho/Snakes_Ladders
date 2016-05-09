//
//  GameController.h
//  Snakes_Ladders
//
//  Created by Anthony Coelho on 2016-05-08.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cell.h"
#import "Player.h"

@interface GameController : NSObject



@property (nonatomic, weak) Cell *start;

- (instancetype)initWithBoardSize:(int)size;

-(Cell *)generateBoardWithSize:(int)size;

-(void)printBoard;

-(void)printBoardWithPlayer1:(Player *)P1 player2:(Player *)P2;

-(void)movePlayer:(Player *)player unitsForward:(int)units;
    

@end
