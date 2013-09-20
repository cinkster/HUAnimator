//
//  HUViewController.h
//  HUAnimatorDemo
//
//  Created by Christian Inkster on 20/09/13.
//  Copyright (c) 2013 Christian Inkster. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, HUTransitionType) {
    Transition6Style,
    TransitionGhost,
    TransitionVerticalLines,
    TransitionHorizontalLines,
};

@interface HUViewController : UIViewController<UINavigationControllerDelegate>
@property HUTransitionType transitionType;

-(IBAction)changeTransition:(UIButton *)sender;
@end
