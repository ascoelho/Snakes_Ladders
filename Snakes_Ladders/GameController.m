//
//  GameController.m
//  Snakes_Ladders
//
//  Created by Anthony Coelho on 2016-05-08.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (instancetype)initWithBoardSize:(int)size;
{
    self = [super init];
    if (self) {
        // generate game path

        _start = [self generateBoardWithSize:size];
        
        
    }
    return self;
}




-(Cell *)generateBoardWithSize:(int)size {
    
    Cell *start = [[Cell alloc] initWithContent:nil];
    Cell *boardMain =[[Cell alloc] initWithContent:nil];
    
    Cell *main = start;
    
    for (int i = 0; i < size ; i++) {
        
        main.cellLevel = [[Cell alloc] init];
        main = main.cellLevel;
       
        //NSLog(@"Level %d", i+1);
        boardMain = main;
        
        for (int j = 0; j < size ; j++) {
            CellContent *randContent = [self randomContent];
            
            boardMain.boardcell= [[Cell alloc] initWithContent:randContent];
            boardMain = boardMain.boardcell;
            
            //NSLog(@"Board Cell %d", i+1);
        }
        boardMain = nil;
        
        
    }
    
    return start;
}

-(void)printBoardWithPlayer1:(Player *)p1 player2:(Player *)p2 {
    
    Cell *level = self.start;
    Cell *boardCell = self.start.cellLevel;
    
    int i = 1;
    int j = 1;

    while (level.cellLevel != NULL) {


        printf("L%d ",i);

        while (boardCell.boardcell != NULL) {
            if (j == p1.token.currentPosition && j == p2.token.currentPosition) {
                printf("P%d&P%d (%d) ",p1.playerNumber,p2.playerNumber,j);
            }
            else if (j == p1.token.currentPosition) {
                printf("P%d (%d) ",p1.playerNumber,j);
                
            }
            else if (j == p2.token.currentPosition) {
                printf("P%d (%d) ",p2.playerNumber,j);
                
            } else {
                printf("_ (%d) ",j);
            }
            boardCell = boardCell.boardcell;
            j +=1;
        }
        printf("\n");


        level = level.cellLevel;
        boardCell = level;
        i += 1;
    }
    printf("\n");
}

-(CellContent *)randomContent {
    
    
    CellContent *randContent = [[CellContent alloc] init];
    
    if (arc4random_uniform(10) < 3) {
        
        randContent.hasLadder = YES;
        return randContent;
    }
    else if (arc4random_uniform(10) > 5) {
        
        randContent.hasSnake = YES;
        return randContent;
    }
    else {
        return nil;
    }
    
}

-(void)movePlayer:(Player *)player unitsForward:(int)units{
    
    player.token.currentPosition += units;
    

    
}


@end
