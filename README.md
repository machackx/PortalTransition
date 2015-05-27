# Portal Transition

[![Build Status](https://travis-ci.org/machackx/PortalTransition.svg?branch=master)](https://travis-ci.org/machackx/PortalTransition.svg?branch=master)

Inspired by Apple's keynote portal animation, it is an iOS implementation of Portal like UIViewController transition.

Portrait: 

[![](http://img.ceyang.me/portrait.gif)](http://img.ceyang.me/portrait.gif)

Landscape: 

[![](http://img.ceyang.me/landscape.gif)](http://img.ceyang.me/landscape.gif)

## Requirements

PortalTransition supports iOS 7.0 and later,

Dependencies:

* CoreGraphics.framework
* QuartzCore.framework

## Usage

#### Copy PortalTransition folder to your project

### Present a UIViewController

Set a viewControllerTransitionDelegate
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
Use custom category methods

```objective-c
#import "UIViewController+PortalTransition.h"

// Just call the custom present method
[self presentPortalTransitionViewController:newVC completion:nil];

```

Push a UIViewController to your UINavigationController's viewcontroller stack

Set a viewControllerTransitionDelegate
```objective-c
#import "CYNavigationControllerDelegate.h"

@interface ViewController ()

@property (nonatomic, strong) CYNavigationControllerDelegate *navDelegate;

@end


// Instatiate transitionDelegate
self.navDelegate = [CYNavigationControllerDelegate new];

NewViewController *newVC = [NewViewController new];
// Set your navigation controller to your navDelegate
self.navDelegate.navController = self.navigationController;
[self presentViewController:newVC animated:YES completion:nil];

```
Use custom category method

```objective-c
#import "UINavigationController+PortalTransition.h""

// Just call the custom present method
[self.navigationController pushPortalTransitionViewController:vc completion:nil];

```

## Custom animator parameters configuration
```objective-c
/**
*  Gap between the target view and reflection, default is 8.0
*/
@property (nonatomic, assign) CGFloat reflectionGap;


/**
*  ReflectionHeight / targetViewHeight, default is 0.5
*/
@property (nonatomic, assign) CGFloat reflectionScale;

/**
*  Opacity of reflectionView, default is 0.5
*/
@property (nonatomic, assign) CGFloat reflectionAlpha;

/**
*  Target view size / origin view size, default is 0.5
*/
@property (nonatomic, assign) CGFloat targetViewScale;

/**
*  Portal animation duration, default is 2.0
*/
@property (nonatomic, assign) CGFloat portalAnimationDuration;

/**
*  Animation duration, default is 3.O
*/
@property (nonatomic, assign) CGFloat scaleAnimationDuration;

/**
*  Target view scale animation delay after portal animation, default is 0.5
*/
@property (nonatomic, assign) CGFloat delay;

/**
*  UIViewController Transition Style, support UINavigationViewController Push, UIViewController present
*/
@property (nonatomic, assign) CYPortalTransitionStyle portalTransitionStyle;
```

## TODO

* Implemente interactive transition for pop & dismiss view controller
* Cocoapods
* Unit Test
