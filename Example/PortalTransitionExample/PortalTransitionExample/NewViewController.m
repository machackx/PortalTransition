//
//  NewViewController.m
//  PortalTransitionExample
//
//  Created by Ce Yang on 23/05/2015.
//  Copyright (c) 2015 Ce Yang. All rights reserved.
//

#import "NewViewController.h"

@implementation NewViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    imageView.image = [UIImage imageNamed:@"3.png"];
    imageView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin |UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:imageView];
    
    UIButton *returnButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 300, 300)];
    returnButton.center = self.view.center;
    [returnButton setTitle:@"return" forState:UIControlStateNormal];
    [self.view addSubview:returnButton];
    [returnButton addTarget:self action:@selector(dismissVC:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)dismissVC:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
