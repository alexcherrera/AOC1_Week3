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
UIAlertView * stringAlert;
NSString * firstString;
NSString * secondString;
NSString * finalString;
NSString * stringToReturn;
NSString * formatString;
NSMutableString * mutableString;

}
//Functions:
-(int)addInt1:(NSInteger)car1Value addingInt2:(NSInteger)car2Value;
-(BOOL)boolCompare:(NSInteger)totalValue boolComparing2:(NSInteger)maxValue;
-(NSString*)appendStrings:(NSString*)lonelyString appendingToString:(NSString*)combindString;
-(NSString*)displayAlertWithString:(NSString*)displayString;
@end
