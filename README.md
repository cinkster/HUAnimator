HUAnimator
==========

Simple group of classes to demonstrate UIViewControllerAnimatedTransitioning Protocol use.

Class that demonstrates a few navigation push pop animations.
 
To use add the following to your navigationcontroller.delegate
 
For the standard IOS 6 style push pop use the following.

- (id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC{
    
    HUTransitionAnimator *animator = [[HUTransitionAnimator alloc] init];
    animator.presenting = (operation == UINavigationControllerOperationPop)?NO:YES;
    return animator;
    
}
 
I've also included a couple of other ones I experimented with.  To try them just replace [HUTransitionAnimator alloc] with [HUTransitionVerticalLinesAnimator alloc] or whichever class you like.
