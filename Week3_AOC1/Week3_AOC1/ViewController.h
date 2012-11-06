//
//  ViewController.h
//  Week3_AOC1
//
//  Created by Alexander Herrera on 11/6/12.
//  Copyright (c) 2012 Alexander Herrera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
//Variables:
int total;
int totalAdd;
int carOne;
int carTwo;
int maxValue;
BOOL compareResults;
NSObject * carValue;

}
//Functions:
-(int)addFunction:(NSInteger)carOne part2Add:(NSInteger)carTwo;
-(BOOL)boolCompare:(NSInteger)totalValue boolCompare2:(NSInteger)maxValue;

@end
