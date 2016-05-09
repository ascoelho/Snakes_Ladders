//
//  Cell.m
//  Snakes_Ladders
//
//  Created by Anthony Coelho on 2016-05-08.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import "Cell.h"

@implementation Cell


- (instancetype)initWithContent:(CellContent *)content {
    self = [super init];
    if (self) {
        _content = content;
    }
    return self;
}

@end
