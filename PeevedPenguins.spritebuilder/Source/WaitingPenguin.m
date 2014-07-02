//
//  WaitingPenguin.m
//  PeevedPenguins
//
//  Created by Brandon Richey on 7/2/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "WaitingPenguin.h"

@implementation WaitingPenguin

-(void)didLoadFromCCB
{
    float delay = (arc4random() % 2000) / 1000.0f;
    [self performSelector:@selector(startBlinkAndJump) withObject:nil afterDelay:delay];
}

-(void)startBlinkAndJump
{
    CCAnimationManager *animationManager = self.animationManager;
    [animationManager runAnimationsForSequenceNamed:@"blinkAndJump"];
}

@end
