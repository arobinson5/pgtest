//
//  MyPickerViewController.h
//  PhoneGapTest
//
//  Created by Alec Robinson on 5/19/13.
//  Copyright (c) 2013 Alec Robinson. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MyPickerViewController;

@protocol MyPickerViewControllerDelegate <NSObject>

@required
- (void) myPickerViewController:(MyPickerViewController *)picker didFinishWithFilePaths:(NSArray *)filePaths;
- (void) myPickerViewControllerDidCancel:(MyPickerViewController *)picker;

@end

@interface MyPickerViewController : UIViewController
@property (nonatomic, strong) id<MyPickerViewControllerDelegate> delegate;
@end
