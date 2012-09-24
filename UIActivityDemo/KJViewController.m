//
//  KJViewController.m
//  UIActivityDemo
//
//  Created by Kenji Hamada on 2012/09/24.
//  Copyright (c) 2012年 Kenji Hamada. All rights reserved.
//

#import "KJViewController.h"

@interface KJViewController ()

@end

@implementation KJViewController

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

- (IBAction)shareImageButtonPressed:(id)sender {
	
    NSArray *activityItems = @[self.imageView.image];
	NSArray *excludeActivities = @[UIActivityTypePostToWeibo];
	
	[self shareWithItems:activityItems activities:nil excludes:excludeActivities];	
}

- (IBAction)shareTextButtonPressed:(id)sender {
	
	NSString *shareText = @"hogehoge";
    NSArray *activityItems = @[shareText];
	NSArray *excludeActivities = @[UIActivityTypePostToWeibo];
	
	[self shareWithItems:activityItems activities:nil excludes:excludeActivities];
}

- (IBAction)shareURLButtonPressed:(id)sender {

    NSURL *shareURL = [NSURL URLWithString:@"http://www.apple.com"];
    NSArray *activityItems = @[shareURL];
	NSArray *excludeActivities = @[UIActivityTypePostToWeibo];
		
	[self shareWithItems:activityItems activities:nil excludes:excludeActivities];
}


- (IBAction)shareAllButtonPressed:(id)sender {

	NSString *shareText = @"hogehoge";
    NSURL *shareURL = [NSURL URLWithString:@"http://catpaint.info"];
    NSArray *activityItems = @[self.imageView.image, shareText, shareURL];
	NSArray *excludeActivities = @[UIActivityTypePostToWeibo];
		
	[self shareWithItems:activityItems activities:nil excludes:excludeActivities];
}


-(void)shareWithItems:(NSArray *)items activities:(NSArray*)activities excludes:(NSArray*)excludes{
	
	// view controller 生成
	UIActivityViewController *activityController = [[UIActivityViewController alloc] initWithActivityItems:items applicationActivities:activities];
	
	// 除外サービスを指定
    activityController.excludedActivityTypes = excludes;
	
    // modalで表示
	[self presentViewController:activityController animated:YES completion:^{
		NSLog(@"Activity complete!!");
	}];

	
}

@end
