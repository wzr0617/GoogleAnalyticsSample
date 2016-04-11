//
//  ViewController.m
//  GoogleAnalyticsSample
//
//  Created by wzr on 2016/04/12.
//  Copyright © 2016年 wzr. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Screen A";
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker set:kGAIScreenName value:@"Screen A"];
    [tracker send:[[GAIDictionaryBuilder createScreenView] build]];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
