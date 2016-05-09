//
//  main.m
//  Snakes_Ladders
//
//  Created by Anthony Coelho on 2016-05-08.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameController.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        GameController *game = [[GameController alloc] initWithBoardSize:6];
        
        Player *player1 = [[Player alloc] initWithPlayerNumber:1];
        Player *player2 = [[Player alloc] initWithPlayerNumber:2];
        
        [game printBoardWithPlayer1:player1 player2:player2];
        
        [game movePlayer:player1 unitsForward:10];
        [game movePlayer:player2 unitsForward:10];
        
        [game printBoardWithPlayer1:player1 player2:player2];

//        NSLog(@"Please enter a board size: ");
//        NSLog(@"> ");
//        char str[100];
//        fgets (str, 100, stdin);
//        
//        NSString *inputString = [[NSString alloc] initWithUTF8String:str];
//        inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return 0;
}
