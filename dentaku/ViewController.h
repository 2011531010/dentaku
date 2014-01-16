//
//  ViewController.h
//  dentaku
//
//  Created by 大野　有以 on 13/11/07.
//  Copyright (c) 2013年 univercityofkitakyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    IBOutlet UILabel *resultLabel;
    int count;
}
@property (nonatomic, assign) NSInteger buttonNumber;
@property (nonatomic, assign) NSInteger countNumber;

- (IBAction)pushedClearButton:(id)sender;
- (IBAction)pushedDividButton:(id)sender;
- (IBAction)pushedMultiplyButton:(id)sender;
- (IBAction)pushedDeleatButton:(id)sender;
- (IBAction)pushedSubButton:(id)sender;
- (IBAction)pushedSumButton:(id)sender;
- (IBAction)pushedEqualButton:(id)sender;
- (IBAction)pushedPointButton:(id)sender;
- (IBAction)pushedZeroButton:(id)sender;
- (IBAction)pushedOneButton:(id)sender;
- (IBAction)pushedTwoButton:(id)sender;
- (IBAction)pushedThreeButton:(id)sender;
- (IBAction)pushedFourButton:(id)sender;
- (IBAction)pushedFiveButton:(id)sender;
- (IBAction)pushedSixButton:(id)sender;
- (IBAction)pushedSevenButton:(id)sender;
- (IBAction)pushedEightButton:(id)sender;
- (IBAction)pushedNineButton:(id)sender;

- (void)calcmethod;


@end
