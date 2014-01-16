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
    float value;
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

- (IBAction)pushedClearButton:(id)sender {  //オールクリア
    
    value = 0;
    self.countNumber = 0;
    calcFlug =0;
    self.buttonNumber = 0;
    
    [self labelOutput];
}

- (IBAction)pushedDividButton:(id)sender {  //割り算
    
    if(calcFlug != 0){
        [self calcmethod];
    }
    
    value = [resultLabel.text intValue];
    self.countNumber = 0;
    calcFlug = 4;
    
}

- (IBAction)pushedMultiplyButton:(id)sender {  //かけ算
    
    if(calcFlug != 0){
        [self calcmethod];
    }
    
    value = [resultLabel.text intValue];
    self.countNumber = 0;
    calcFlug = 3;
    //NSLog(@"value:%d",value);
    
}

- (IBAction)pushedDeleatButton:(id)sender {  //クリア
    
    resultLabel.text = [NSString stringWithFormat:@"%g", value];
    
}

- (IBAction)pushedSubButton:(id)sender {  //引き算
    
    if(calcFlug != 0){
        [self calcmethod];
    }
    
    value = [resultLabel.text intValue];
    self.countNumber = 0;
    calcFlug = 2;
    
}

- (IBAction)pushedSumButton:(id)sender {  //足し算
    
    if(calcFlug != 0){
        [self calcmethod];
    }
    
    value = [resultLabel.text intValue];
    self.countNumber = 0;
    calcFlug = 1;
    
}

- (IBAction)pushedEqualButton:(id)sender {  //イコール
    
    [self calcmethod];
    
    
    
}

- (void)calcmethod{
    switch (calcFlug) {
            
        case 1: //足し算
            
            value = value + [resultLabel.text floatValue];
            break;
            
        case 2: //引き算
            
            value = value - [resultLabel.text floatValue];
            break;
            
        case 3: //かけ算
            value = value * [resultLabel.text floatValue];
            break;
            
        case 4: //割り算
            
            value = value / [resultLabel.text floatValue];
            break;
            
        default:
            break;
    }
    
    
    NSString *print = [[NSString alloc] initWithFormat:@"%g", value];
    resultLabel.text = print;
    
    calcFlug = 0;
}


- (IBAction)pushedPointButton:(id)sender {  //プラスマイナス
 
    value = -[resultLabel.text intValue];
    NSString *print = [[NSString alloc] initWithFormat:@"%g", value];
    resultLabel.text = print;

    
}

- (IBAction)pushedZeroButton:(id)sender {  //以下数字の設定
    
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


- (void)labelOutput{ //数字の表示設定
    
    self.countNumber = (self.countNumber * 10) + self.buttonNumber;
    NSString *print = [[NSString alloc] initWithFormat:@"%d", self.countNumber];
    resultLabel.text = print;
    
}



@end
