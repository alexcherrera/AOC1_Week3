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
//Calling, passing, and capturing the values to get the total sum of both:
	totalAdd = [self addInt1:carOne addingInt2:carTwo];
	NSLog(@"total is %d", totalAdd);
//NSNumber and converting to NSString:
	bundleInt = [[NSNumber alloc]initWithInt:(int)totalAdd];
	convertToString = [bundleInt stringValue];
//Initializing, calling, and passing of the appending strings:
	firstString = [[NSString alloc]initWithString:@"The final value"];
	secondString = [[NSString alloc]initWithFormat:@" would be $%@", convertToString];
	finalString = [[NSString alloc]init];
	finalString = [self appendStrings:firstString appendingToString:secondString];
//Captured the result and passing to be displayed (UIAlertView):
	[self displayAlertWithString:finalString];
	NSLog(@"%@",finalString);
//To get YES or NO, Call the function and pass the values:
	compareResults = [self boolCompare:totalAdd boolComparing2:maxValue];
	//To display the results using an if statement:
		twoValueBool = [[NSString alloc]initWithFormat:@"Value 1 is %d, value 2 is %d, and the result for both is %d",(int)carOne, (int)carTwo, (int)totalAdd];
		if (compareResults)
		{
			[self displayAlertWithString:twoValueBool];
			NSLog(@"Yes");
		} else
		  {
			NSLog(@"No");
		  }
	
	[super viewDidLoad];
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
//Appending strings to get final string:
-(NSString*)appendStrings:(NSString*)lonelyString appendingToString:(NSString*)combindString
{
	mutableString = [[NSMutableString alloc]initWithString:lonelyString];
	stringToCapture = [[NSString alloc]init];
	stringToCapture = [mutableString stringByAppendingString:combindString];
	return stringToCapture;
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
-(NSString*)displayAlertWithString:(NSString*)displayString
{
	stringAlert = [[UIAlertView alloc] initWithTitle:@"Car Result" message:displayString delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
	if(stringAlert !=nil)
	{
		[stringAlert show];
	}
	
	return 0;
}
@end
