//
//  MyPickerViewController.m
//  PhoneGapTest
//
//  Created by Alec Robinson on 5/19/13.
//  Copyright (c) 2013 Alec Robinson. All rights reserved.
//

#import "MyPickerViewController.h"

@interface MyPickerViewController ()

@end

@implementation MyPickerViewController

- (void) userClickedSelect:(id)sender {
    NSArray *filePaths = [NSArray arrayWithObjects:@"filePath/image1.jpg", @"filePath/image2.jpg", @"filePath/image3.jpg", nil];
    [self.delegate myPickerViewController:self didFinishWithFilePaths:filePaths];
}

- (void) userClickedCancel:(id)sender {
    [self.delegate myPickerViewControllerDidCancel:self];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    UIButton *select = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 300, 50)];
    [select setTitle:@"Return File Paths" forState:UIControlStateNormal];
    [select addTarget:self action:@selector(userClickedSelect:) forControlEvents:UIControlEventTouchUpInside];
    //[select sizeToFit];
    select.center = CGPointMake(self.view.frame.size.width*0.5, self.view.frame.size.height*0.5-40.0);
    [self.view addSubview:select];

    UIButton *cancel= [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    [cancel setTitle:@"Cancel" forState:UIControlStateNormal];
    [cancel addTarget:self action:@selector(userClickedCancel:) forControlEvents:UIControlEventTouchUpInside];
    cancel.center = CGPointMake(self.view.frame.size.width*0.5, self.view.frame.size.height*0.5+40.0);
    [self.view addSubview:cancel];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
