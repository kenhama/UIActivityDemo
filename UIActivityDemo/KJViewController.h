//
//  KJViewController.h
//  UIActivityDemo
//
//  Created by Kenji Hamada on 2012/09/24.
//  Copyright (c) 2012年 Kenji Hamada. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KJViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)shareImageButtonPressed:(id)sender;
- (IBAction)shareTextButtonPressed:(id)sender;
- (IBAction)shareURLButtonPressed:(id)sender;
- (IBAction)shareAllButtonPressed:(id)sender;


@end
