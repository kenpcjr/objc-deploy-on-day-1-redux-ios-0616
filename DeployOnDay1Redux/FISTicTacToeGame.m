//
//  FISTicTacToeGame.m
//  DeployOnDay1Redux
//
//  Created by Timothy Clem on 9/22/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import "FISTicTacToeGame.h"

@interface FISTicTacToeGame ()

@property (nonatomic, strong) NSMutableArray *board;

@end


@implementation FISTicTacToeGame

-(instancetype)init
{
    self = [super init];
    if(self) {
        
        _board =[@[
                      [@[@"",@"",@""]mutableCopy],
                      [@[@"",@"",@""]mutableCopy],
                      [@[@"",@"",@""]mutableCopy]]mutableCopy];
    }

    return self;
}

-(void)resetBoard
{
    
    self.board =[@[
                  [@[@"",@"",@""]mutableCopy],
                  [@[@"",@"",@""]mutableCopy],
                  [@[@"",@"",@""]mutableCopy]]mutableCopy];

}

-(NSString *)playerAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    NSString *playerPosition = @"";
    playerPosition = self.board[column][row];
    
    
    return playerPosition;
    NSLog(@"%@", playerPosition);
}

-(BOOL)canPlayAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    if ([self.board[column][row]isEqualToString:@""]) {
        return YES;
    }
    return NO;
}

-(void)playXAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    self.board[column][row]=@"X";

}

-(void)playOAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    self.board[column][row]=@"O";

}

-(NSString *)winningPlayer
{
    if ([self.board[0] isEqual:@[@"X",@"X",@"X"]]) {
        return @"X";
    }
    if ([self.board[1] isEqual:@[@"X",@"X",@"X"]]) {
        return @"X";
    }
    if ([self.board[2] isEqual:@[@"X",@"X",@"X"]]) {
        return @"X";
    }
    NSString *xColumn0 = [NSString stringWithFormat:@"%@,%@,%@",self.board[0][0],self.board[1][0],self.board[2][0]];
    if ([xColumn0 isEqualToString:@"X,X,X"]) {
        return @"X";
    }
    NSString *xColumn1 = [NSString stringWithFormat:@"%@,%@,%@",self.board[0][1],self.board[1][1],self.board[2][1]];
    if ([xColumn1 isEqualToString:@"X,X,X"]) {
        return @"X";
    }
    NSString *xColumn2 = [NSString stringWithFormat:@"%@,%@,%@",self.board[0][2],self.board[1][2],self.board[2][2]];
    if ([xColumn2 isEqualToString:@"X,X,X"]) {
        return @"X";
    }
    NSString *xDiagonal0 = [NSString stringWithFormat:@"%@,%@,%@",self.board[0][0],self.board[1][1],self.board[2][2]];
    if ([xDiagonal0 isEqualToString:@"X,X,X"]) {
        return @"X";
    }
    NSString *xDiagonal2 = [NSString stringWithFormat:@"%@,%@,%@",self.board[0][2],self.board[1][1],self.board[2][0]];
    if ([xDiagonal2 isEqualToString:@"X,X,X"]) {
        return @"X";
    }
    
    if ([self.board[0] isEqual:@[@"O",@"O",@"O"]]) {
        return @"O";
    }
    if ([self.board[1] isEqual:@[@"O",@"O",@"O"]]) {
        return @"O";
    }
    if ([self.board[2] isEqual:@[@"O",@"O",@"O"]]) {
        return @"O";
    }
    NSString *oColumn0 = [NSString stringWithFormat:@"%@,%@,%@",self.board[0][0],self.board[1][0],self.board[2][0]];
    if ([oColumn0 isEqualToString:@"O,O,O"]) {
        return @"O";
    }
    NSString *oColumn1 = [NSString stringWithFormat:@"%@,%@,%@",self.board[0][1],self.board[1][1],self.board[2][1]];
    if ([oColumn1 isEqualToString:@"O,O,O"]) {
        return @"O";
    }
    NSString *oColumn2 = [NSString stringWithFormat:@"%@,%@,%@",self.board[0][2],self.board[1][2],self.board[2][2]];
    if ([oColumn2 isEqualToString:@"O,O,O"]) {
        return @"O";
    }
    NSString *oDiagonal0 = [NSString stringWithFormat:@"%@,%@,%@",self.board[0][0],self.board[1][1],self.board[2][2]];
    if ([oDiagonal0 isEqualToString:@"O,O,O"]) {
        return @"O";
    }
    NSString *oDiagonal2 = [NSString stringWithFormat:@"%@,%@,%@",self.board[0][2],self.board[1][1],self.board[2][0]];
    if ([oDiagonal2 isEqualToString:@"O,O,O"]) {
        return @"O";
    }
    return @"";
}

-(BOOL)isADraw
{
    if ([self.board[0] containsObject:@""] || [self.board[1] containsObject:@""] || [self.board[2] containsObject:@""] ) {
        return NO;
    }
    return YES;
}

@end
