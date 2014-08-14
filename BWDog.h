//
//  BWDog.h
//  Man's Best Friend
//
//  Created by Bradley White on 8/14/14.
//  Copyright (c) 2014 Bradley White. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BWDog : NSObject

@property (nonatomic) int age;
@property (nonatomic, strong) NSString *breed;
@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSString *name;

-(void) bark;
-(void) barkNumberOfTimes:(int)number;
-(void) changeBreedToWerewolf;
-(void) barkNumberOfTimes:(int)number loudly:(BOOL) isLoud;
-(int) ageInDogYearsFromAge:(int)regularAge;

-(instancetype) initWithName:(NSString *)name breed:(NSString *)breed image:(UIImage *)image age:(int)age;

@end
