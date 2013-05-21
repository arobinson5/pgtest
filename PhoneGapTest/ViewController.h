//
//  ViewController.h
//  PhoneGapTest
//
//  Created by Alec Robinson on 5/19/13.
//  Copyright (c) 2013 Alec Robinson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyPickerViewController.h"


@interface ViewController : UIViewController <MyPickerViewControllerDelegate>
- (IBAction)userClickedShowPicker:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end
