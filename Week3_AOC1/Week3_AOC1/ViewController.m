//
//  ViewController.m
//  Week3_AOC1
//
//  Created by Alexander Herrera on 11/6/12.
//  Copyright (c) 2012 Alexander Herrera. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
	carOne = 25000;
	carTwo = 40000;
	maxValue = 70000;
//Passing the values to get the total sum of both:
	totalAdd = [self addFunction:carOne part2Add:carTwo];
	NSLog(@"total is %i", totalAdd);
//To get YES or NO, pass the values:
	compareResults = [self boolCompare:totalAdd boolCompare2:maxValue];
	//To display the results using an if statement:
		if (compareResults == YES)
		{
			NSLog(@"Yes we can buy both cars together");
		} else
		  {
			NSLog(@"We can only buy one car");
		  }
	
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(int)addFunction:(NSInteger)car1Value part2Add:(NSInteger)car2Value
{
	total = car1Value + car2Value;
	return total;
	
}
-(BOOL)boolCompare:(NSInteger)totalValue boolCompare2:(NSInteger)maxNumValue
{
	if (totalValue < maxNumValue)
	{
		return YES;
	} else
	  {
		return NO;
	  }
	
}
@end
