//
//  BWDog.m
//  Man's Best Friend
//
//  Created by Bradley White on 8/14/14.
//  Copyright (c) 2014 Bradley White. All rights reserved.
//

#import "BWDog.h"

@implementation BWDog

-(void) bark
{
    NSLog(@"Bark! BARK!!!");
}

-(void) barkNumberOfTimes:(int)number
{
    do {
        [self bark];
        number--;
    } while (number > 0);
}

-(void) changeBreedToWerewolf
{
    self.breed = @"Werewolf";
}

-(void) barkNumberOfTimes:(int)number loudly:(BOOL) isLoud
{
    if (!isLoud) {
        [self barkNumberOfTimes:number];
    } else {
        do {
            NSLog(@"yip yip");
            number--;
        } while (number > 0);
    }
}

-(int) ageInDogYearsFromAge:(int)regularAge
{
    return regularAge * 7;
}

-(instancetype) initWithName:(NSString *)name breed:(NSString *)breed image:(UIImage *)image age:(int)age
{
    self = [super init];
    
    self.name = name;
    self.breed = breed;
    self.image = image;
    self.age = age;
    
    return self;
    
}

@end
