# Portal Transition

[![Build Status](https://travis-ci.org/machackx/PortalTransition.svg?branch=master)](https://travis-ci.org/machackx/PortalTransition.svg?branch=master)

Inspired by Apple's keynote portal animation, it is an iOS implementation of Portal like UIViewController transition.

Portrait: [![](http://img.ceyang.me/portrait.gif)](http://img.ceyang.me/portrait.gif)

Landscape: [![](http://img.ceyang.me/landscape.gif)](http://img.ceyang.me/landscape.gif)

## Requirements

PortalTransition supports iOS 7.0 and later,

Dependencies:

* CoreGraphics.framework
* QuartzCore.framework

## Usage

### Copy PortalTransition folder to your project

### Present a UIViewController

#### Set a viewControllerTransitionDelegate
```objective-c
#import "CYViewControllerTransitioningDelegate.h"

@interface ViewController ()

@property (nonatomic, strong) CYViewControllerTransitioningDelegate *viewControllerTransitionDelegate;

@end


// Instatiate transitionDelegate
self.viewControllerTransitionDelegate = [CYViewControllerTransitioningDelegate new];

NewViewController *newVC = [NewViewController new];
newVC.modalPresentationStyle = UIModalPresentationCustom;
// Set the presentedViewController to delegate's viewController, it will implemente delegate methods for you
self.viewControllerTransitionDelegate.viewController = newVC;
// Just push your viewController
[self presentViewController:newVC animated:YES completion:nil];

```
#### Use custom category methods

```objective-c
#import "UIViewController+PortalTransition.h"

// Just call the custom present method
[self presentPortalTransitionViewController:newVC completion:nil];



```
