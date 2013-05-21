//
//  ViewController.m
//  PhoneGapTest
//
//  Created by Alec Robinson on 5/19/13.
//  Copyright (c) 2013 Alec Robinson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)userClickedShowPicker:(id)sender {
    
    MyPickerViewController *myPicker = [[MyPickerViewController alloc] init];
    myPicker.delegate = self;
    [self presentViewController:myPicker animated:YES completion:^{}];
    
}

- (void) myPickerViewController:(MyPickerViewController *)picker didFinishWithFilePaths:(NSArray *)filePaths {

    NSMutableString *label = [NSMutableString string];
    for(NSString *s in filePaths) {
        [label appendFormat:@"%@ - ", s];
    }
    [label deleteCharactersInRange:NSMakeRange([label length]-2, 2)];
    
    self.myLabel.text = label;
    [self.myLabel sizeToFit];
    [self dismissViewControllerAnimated:YES completion:^{}];

}

- (void) myPickerViewControllerDidCancel:(MyPickerViewController *)picker{
    self.myLabel.text = @"User Clicked Cancel.";
    [self dismissViewControllerAnimated:YES completion:^{}];
}
@end
