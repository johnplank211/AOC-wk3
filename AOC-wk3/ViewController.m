//
//  ViewController.m
//  AOC-wk3
//
//  Created by john plank on 2/21/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    // ------ AOC-wk3 ------
    
    self.view.backgroundColor = [UIColor greenColor];
    
    NSInteger addition = [self addOne:20 addTwo:20];
    
    //Give it some text for the title. The message will read, "The number is 00". Replace the 00 with the integer passed into the function.
    
    [self displayAlertWithString:[NSString stringWithFormat:@"The number is %@",[[[NSNumber alloc] initWithInt:addition] stringValue]]];
    
    //2 integer values
    
    NSInteger compareOne = 20;
    NSInteger compareTwo = 20;
    
    BOOL compareBoth = [self intValueOne:compareOne intValueTwo:compareTwo];
    
    // %d expects an interger.
    // Call the Compare function with two integer values.
    //Call the Append function with two NSStrings. Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
    //Bundle the returned integer into an NSNumber and then convert it to a NSString and pass it to the DisplayAlertWithString function.
    //Call the Compare function with two integer values. If Compare returns YES, display an UIAlertView both with the input values and the result using the DisplayAlertWithString function
    
    NSString *stringInfo = [NSString stringWithFormat:@"%@! %d + %d I know this one!", compareBoth? @"YES":@"NO", compareOne, compareTwo];
    if (compareBoth)
    {
        [self displayAlertWithString:stringInfo];
    } else
    {
        NSLog(@"Something went wrong!");
    }
    
    [self displayAlertWithString:[self appendOne:@"Looks like were" appendTwo:@" Lost in Space!"]];
    
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Create a function called Add. This function will take two NSInteger or int types and return the result of an addition between these two.

-(NSInteger)addOne:(NSInteger)x addTwo:(NSInteger)y;
{
    return ((NSInteger)x + (NSInteger)y);
}

//Create a BOOL function called Compare that takes two NSInteger values. Return YES or NO based on whether the values are equal.

-(BOOL)intValueOne:(NSInteger)x intValueTwo:(NSInteger)y;
{
    if ((NSInteger)x == (NSInteger)y){
        return YES;
    }
    else{
        return NO;
    }
}

//Create a function called Append. This function will take two NSStrings and return a new NSString containing the appended strings using an NSMutableString and the Append method.

-(NSString*)appendOne:(NSString*)resultOne appendTwo:(NSString*)resultTwo
{
    NSMutableString *append = [NSMutableString stringWithString:resultOne];
    [append appendString:resultTwo];
    return append;
}

//Create a function called DisplayAlertWithString. This function will take as a parameter an NSString.

-(void)displayAlertWithString:(NSString*)string
{
    
    //Create an UIAlertView
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Danger Will Robinson!" message:string delegate:nil cancelButtonTitle:@"Escape" otherButtonTitles:nil];
    
    if (alertView != nil)
    {
        [alertView show];
    }
}

@end