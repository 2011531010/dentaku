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

@implementation ViewController

@synthesize buttonNumber;

@synthesize countNumber;

- (void)viewDidLoad
{
    [super viewDidLoad];
    count = 0;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushedClearButton:(id)sender {
}

- (IBAction)pushedDividButton:(id)sender {
}

- (IBAction)pushedMultiplyButton:(id)sender {
}

- (IBAction)pushedDeleatButton:(id)sender {
}

- (IBAction)pushedSubButton:(id)sender {
}

- (IBAction)pushedSumButton:(id)sender {
    
    count++;
    resultLabel.text = [NSString stringWithFormat:@"%d", count];
}

- (IBAction)pushedEqualButton:(id)sender {
}

- (IBAction)pushedPointButton:(id)sender {
}

- (IBAction)pushedZeroButton:(id)sender {
}

- (IBAction)pushedOneButton:(id)sender {
    
    self.countNumber = (self.countNumber * 10) + 1;
    NSString *print = [[NSString alloc] initWithFormat:@"%d", self.countNumber];
    resultLabel.text = print;
    
    }

- (IBAction)pushedTwoButton:(id)sender {
    
   self.countNumber = (self.countNumber * 10) + 2;
    NSString *print = [[NSString alloc] initWithFormat:@"%d", self.countNumber];
    resultLabel.text = print;
    
}

- (IBAction)pushedThreeButton:(id)sender {
}

- (IBAction)pushedFourButton:(id)sender {
}

- (IBAction)pushedFiveButton:(id)sender {
}

- (IBAction)pushedSixButton:(id)sender {
}

- (IBAction)pushedSevenButton:(id)sender {
}

- (IBAction)pushedEightButton:(id)sender {
}

- (IBAction)pushedNineButton:(id)sender {
}

- (IBAction)waru:(id)sender {
}
@end
