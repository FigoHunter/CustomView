//
//  ZYViewController.m
//  CustomView
//
//  Created by zhangyuc on 13-5-21.
//  Copyright (c) 2013年 zhangyuc. All rights reserved.
//

#import "ZYViewController.h"

@interface ZYViewController ()

@end

@implementation ZYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"CustomView" owner:self options:nil];
    UIView *tmpCustomView = [nib objectAtIndex:0];
    
    CGRect tmpFrame = [[UIScreen mainScreen] bounds];
    [tmpCustomView setCenter:CGPointMake(tmpFrame.size.width / 2, tmpFrame.size.height / 2)];
    
    [self.view addSubview:tmpCustomView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
