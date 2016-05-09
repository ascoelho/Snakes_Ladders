//
//  Cell.h
//  Snakes_Ladders
//
//  Created by Anthony Coelho on 2016-05-08.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CellContent.h"

@interface Cell : NSObject


@property (nonatomic, strong) CellContent *content;
@property (nonatomic, strong) Cell *cellLevel;
@property (nonatomic, strong) Cell *boardcell;


- (instancetype)initWithContent:(CellContent *)content;

@end
