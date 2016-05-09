//
//  Player.m
//  Snakes_Ladders
//
//  Created by Anthony Coelho on 2016-05-08.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import "Player.h"
#import "Token.h"

@implementation Player

-(instancetype)initWithPlayerNumber:(int)number{
    self = [super init];
    if (self) {
        _playerNumber = number;
        _token = [Token new];
        _token.currentPosition = 0;
    }
    return self;
}

@end
