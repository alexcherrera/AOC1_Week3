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
	twoIntValues = [NSArray arrayWithObjects:carOne, carTwo, nil];
	//twoIntValues = []
//Calling, passing, and capturing the values to get the total sum of both:
	totalAdd = [self addInt1:carOne addingInt2:carTwo];
	NSLog(@"total is %i", totalAdd);
//To get YES or NO, Call the function and pass the values:
	compareResults = [self boolCompare:totalAdd boolComparing2:maxValue];
	//To display the results using an if statement:
		if (compareResults == YES)
		{
			[self displayAlertWithString:(NSString*)carOne];
			NSLog(@"Yes we can buy both cars together");
		} else
		  {
			NSLog(@"We can only buy one car");
		  }
//Initializing, calling, and passing of the appending strings:
	firstString = [[NSString alloc]initWithString:@"We want to buy"];
	secondString = [[NSString alloc]initWithString:@" both of the cars"];
	finalString = [self appendStrings:firstString appendingToString:secondString];
	formatString = [[NSString alloc]initWithFormat:@"%@ and if the price is $%i we will buy it today!",finalString, totalAdd ];
	NSLog(@"%@",finalString);
	NSLog(@"%@", formatString);

//Displaying with an alert:
	//UIAlertView * stringAlert = [[UIAlertView alloc] initWithTitle:
	//Captured the result and passing to be displayed (UIAlertView):
	[self displayAlertWithString:formatString];
	
//NSNumber and converting to NSString:
	bundleInt = [[NSNumber alloc]initWithInt:totalAdd];
	convertToString = [bundleInt stringValue];
	[self displayAlertWithString:convertToString];
	
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//Addition Function:
-(int)addInt1:(NSInteger)car1Value addingInt2:(NSInteger)car2Value;
{
	total = car1Value + car2Value;
	return total;
	
}
//Boolean Comparison Function:
-(BOOL)boolCompare:(NSInteger)totalValue boolComparing2:(NSInteger)maxNumValue
{
	if (totalValue < maxNumValue)
	{
		return YES;
	} else
	  {
		return NO;
	  }
}
//Appending strings to get final string:
-(NSString*)appendStrings:(NSString*)lonelyString appendingToString:(NSString*)combindString
{
	mutableString = [[NSMutableString alloc]initWithString:lonelyString];
	stringToCapture = [[NSString alloc]init];
	stringToCapture = [mutableString stringByAppendingString:combindString];
	//[self displayAlertWithString:stringToCapture];
	return stringToCapture;
}
-(NSString*)displayAlertWithString:(NSString*)displayString
{
	stringAlert = [[UIAlertView alloc] initWithTitle:@"Car Result" message:displayString delegate:nil cancelButtonTitle:@"Buy Now" otherButtonTitles:nil, nil];
	if(stringAlert !=nil)
	{
		[stringAlert show];
	}
	/*if (displayString === convertToString)
	{
		
	}*/
	return 0;
}
@end
