//
//  BWPuppy.m
//  Man's Best Friend
//
//  Created by Bradley White on 8/14/14.
//  Copyright (c) 2014 Bradley White. All rights reserved.
//

#import "BWPuppy.h"

@implementation BWPuppy

-(void)givePuppyEyes
{
    NSLog(@":(");
}

-(void)bark
{
    NSLog(@"whimper whimper");
    [self givePuppyEyes];
}

@end
