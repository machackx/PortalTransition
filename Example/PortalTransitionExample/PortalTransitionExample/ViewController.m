//
//  ViewController.m
//  PortalTransitionExample
//
//  Created by Ce Yang on 23/05/2015.
//  Copyright (c) 2015 Ce Yang. All rights reserved.
//

#import "ViewController.h"
#import "NewViewController.h"
#import "UIViewController+PortalTransition.h"
#import "CYViewControllerTransitioningDelegate.h"

@interface ViewController ()

@property (nonatomic, strong) CYViewControllerTransitioningDelegate *viewControllerTransitionDelegate;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.viewControllerTransitionDelegate = [CYViewControllerTransitioningDelegate new];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)gotoNewVC:(id)sender{
    NewViewController *newVC = [NewViewController new];
    newVC.modalPresentationStyle = UIModalPresentationCustom;
    self.viewControllerTransitionDelegate.viewController = newVC;
    //[self presentViewController:newVC animated:YES completion:nil];
    //Or you can call this catogory method
    [self presentPortalTransitionViewController:newVC completion:nil];
}

@end
