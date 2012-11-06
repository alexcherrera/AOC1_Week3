//
//  ViewController.m
//  Week3_AOC1
//
//  Created by Alexander Herrera on 11/6/12.
//  Copyright (c) 2012 Alexander Herrera. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
//Passing the values to get the total sum of both:
	totalAdd = [self addFunction:25000 part2Add:40000];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(int)addFunction:(NSInteger)carOne part2Add:(NSInteger)carTwo {
	total = carOne + carTwo;
	return total;
}
@end
