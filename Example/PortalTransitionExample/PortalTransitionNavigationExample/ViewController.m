//
//  ViewController.m
//  PortalTransitionNavigationExample
//
//  Created by Ce Yang on 24/05/2015.
//  Copyright (c) 2015 Ce Yang. All rights reserved.
//

#import "ViewController.h"
#import "UINavigationController+PortalTransition.h"
#import "CYNavigationControllerDelegate.h"

@interface ViewController ()

@property (nonatomic, strong) CYNavigationControllerDelegate *navDelegate;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //As a root view controller, set its navigationController Delegate
    self.navDelegate = [[CYNavigationControllerDelegate alloc]init];
    self.navDelegate.navController = self.navigationController;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)portalPushVC:(id)sender {
    UIViewController *vc = [UIViewController new];
    UIImageView *aImageView = [[UIImageView alloc] initWithFrame:vc.view.bounds];
    aImageView.image = [UIImage imageNamed:@"1.jpg"];
    aImageView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [vc.view addSubview:aImageView];
    //Or you can call this custom category method
    [self.navigationController pushPortalTransitionViewController:vc completion:nil];
    //[self.navigationController pushViewController:vc animated:YES];
}

@end
