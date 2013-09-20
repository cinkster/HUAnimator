//
//  HUViewController.m
//  HUAnimatorDemo
//
//  Created by Christian Inkster on 20/09/13.
//  Copyright (c) 2013 Christian Inkster. All rights reserved.
//

#import "HUViewController.h"
#import "HUTransitionAnimator.h"

@interface HUViewController ()

@end

@implementation HUViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.navigationController.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)changeTransition:(UIButton *)sender{
    self.transitionType = (HUTransitionType)sender.tag;
    NSString *message = [NSString stringWithFormat:@"%@ selected",sender.titleLabel.text];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Transition Selected" message:message delegate:self cancelButtonTitle:@"Sweet!" otherButtonTitles:nil];
    [alert show];
}

- (id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC{
    
    HUTransitionAnimator *animator;
    
    switch (self.transitionType) {
        case TransitionGhost:
            animator = [[HUTransitionGhostAnimator alloc] init];
            break;
        case TransitionVerticalLines:
            animator = [[HUTransitionVerticalLinesAnimator alloc] init];
            break;
        case TransitionHorizontalLines:
            animator = [[HUTransitionHorizontalLinesAnimator alloc] init];
            break;
        default:
            animator = [[HUTransitionAnimator alloc] init];
            break;
    }
    animator.presenting = (operation == UINavigationControllerOperationPop)?NO:YES;
    return animator;
    
}

- (void)dealloc
{
    NSLog(@"dealloc");
}

@end
