//
//  ViewController.m
//  dentaku
//
//  Created by 大野　有以 on 13/11/07.
//  Copyright (c) 2013年 univercityofkitakyu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    int value;
    int calcFlug;
}

@synthesize buttonNumber;

@synthesize countNumber;


- (void)viewDidLoad
{
    [super viewDidLoad];
    value = 0;
    self.countNumber = 0;
    calcFlug = 0;
    self.buttonNumber = 0;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushedClearButton:(id)sender {
    
    value = 0;
    self.countNumber = 0;
    calcFlug =0;
    self.buttonNumber = 0;
    
    [self labelOutput];
}

- (IBAction)pushedDividButton:(id)sender {
    
    value /= self.countNumber;
    self.countNumber = 0;
    calcFlug = 4;
    NSLog(@"value:%d",value);
}

- (IBAction)pushedMultiplyButton:(id)sender {
    
    value *= self.countNumber;
    self.countNumber = 0;
    calcFlug = 3;
    NSLog(@"value:%d",value);
    
}

- (IBAction)pushedDeleatButton:(id)sender {
}

- (IBAction)pushedSubButton:(id)sender {
    
    value -= self.countNumber;
    self.countNumber = 0;
    calcFlug = 2;
    NSLog(@"value:%d",value);
}

- (IBAction)pushedSumButton:(id)sender {
    
    value += self.countNumber;
    self.countNumber = 0;
    calcFlug = 1;
    NSLog(@"value:%d",value);
}

- (IBAction)pushedEqualButton:(id)sender {
    NSLog(@"value:%d",value);
    switch (calcFlug) {
            
        case 1: //足し算
            value += self.countNumber;
            break;
            
        case 2: //引き算
            value -= self.countNumber;
            break;
            
        case 3: //かけ算
            value *= self.countNumber;
            break;
            
        case 4: //割り算
            value /= self.countNumber;
            break;
            
        default:
            break;
    }
    
    
    NSString *print = [[NSString alloc] initWithFormat:@"%d", value];
    resultLabel.text = print;
    
}

- (IBAction)pushedPointButton:(id)sender {
}

- (IBAction)pushedZeroButton:(id)sender {
    
    self.buttonNumber = 0;
    [self labelOutput];
    }

- (IBAction)pushedOneButton:(id)sender {
    
    self.buttonNumber = 1;
    
    [self labelOutput];
    
    }

- (IBAction)pushedTwoButton:(id)sender {
    
    self.buttonNumber = 2;
    
    [self labelOutput];
}


- (IBAction)pushedThreeButton:(id)sender {
    
    self.buttonNumber = 3;
    
    [self labelOutput];
}

- (IBAction)pushedFourButton:(id)sender {
    
    self.buttonNumber = 4;
    
    [self labelOutput];
}

- (IBAction)pushedFiveButton:(id)sender {
    
    self.buttonNumber = 5;
    
    [self labelOutput];
    
}

- (IBAction)pushedSixButton:(id)sender {
    
    self.buttonNumber = 6;
    
    [self labelOutput];
    
}

- (IBAction)pushedSevenButton:(id)sender {
    
    self.buttonNumber = 7;
    
    [self labelOutput];
    
}

- (IBAction)pushedEightButton:(id)sender {
    
    self.buttonNumber = 8;
    
    [self labelOutput];
    
}

- (IBAction)pushedNineButton:(id)sender {
    
    self.buttonNumber = 9;
    
    [self labelOutput];
    
}


- (void)labelOutput{
    
    self.countNumber = (self.countNumber * 10) + self.buttonNumber;
    NSString *print = [[NSString alloc] initWithFormat:@"%d", self.countNumber];
    resultLabel.text = print;
    
}


- (IBAction)waru:(id)sender {
}


@end
