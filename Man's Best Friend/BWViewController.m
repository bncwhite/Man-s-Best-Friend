//
//  BWViewController.m
//  Man's Best Friend
//
//  Created by Bradley White on 8/14/14.
//  Copyright (c) 2014 Bradley White. All rights reserved.
//

#import "BWViewController.h"
#import "BWDog.h"
#import "BWPuppy.h"

@interface BWViewController ()

@end

@implementation BWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    BWDog *firstDog = [[BWDog alloc] initWithName:@"Nana" breed:@"St. Bernard" image:[UIImage imageNamed:@"St.Bernard.JPG"] age:1];
    
    BWDog *secondDog = [[BWDog alloc] initWithName:@"Wishbone" breed:@"Jack Russell Terrier" image:[UIImage imageNamed:@"JRT.jpg"] age:1];
    
    BWDog *thirdDog = [[BWDog alloc] initWithName:@"Lassie" breed:@"Collie" image:[UIImage imageNamed:@"BorderCollie.jpg"] age:1];

    BWDog *fourthDog = [[BWDog alloc] initWithName:@"Angel" breed:@"Greyhound" image:[UIImage imageNamed:@"ItalianGreyhound.jpg"] age:1];
    
    BWPuppy *littlePuppy = [[BWPuppy alloc] initWithName:@"Bo" breed:@"Portuguese Water Dog" image:[UIImage imageNamed:@"Bo.jpg"] age:1];
    
    self.myDogs = [NSMutableArray new];
    [self.myDogs addObject:firstDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:fourthDog];
    [self.myDogs addObject:littlePuppy];
    
    self.randomIndex = arc4random() % [self.myDogs count];
    
    [littlePuppy bark];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender
{
    int dogTotal = [self.myDogs count];
    int randomNum = arc4random() % dogTotal;
    
    do {
        randomNum = arc4random() % dogTotal;
    } while (self.randomIndex == randomNum);
    
    BWDog *dog = self.myDogs[self.randomIndex];
    
//    self.breedLabel.text = dog.breed;
//    self.nameLabel.text = dog.name;
//    self.myImageView.image = dog.image;
    
    [UIView transitionWithView:self.view duration:1.0 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.breedLabel.text = dog.breed;
        self.nameLabel.text = dog.name;
        self.myImageView.image = dog.image;
    } completion:^(BOOL finished) {
        
    }];
    sender.title = @"And Another...";
    
    self.randomIndex = randomNum;

 }
@end
