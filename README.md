HUAnimator
==========

Simple group of classes to demonstrate Custom View Transitions available in iOS 7 (UIViewControllerAnimatedTransitioning Protocol).

The included classes also demonstrate the use of the new UIView snapshot API for quickly creating lightweight views of existing complex view hierarchies that you can animate using the simple uiview animation apis.

To use add the following to your navigationcontroller.delegate

For the standard IOS 6 style push pop use the following.

-(id)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC{

HUTransitionAnimator *animator = [[HUTransitionAnimator alloc] init]; animator.presenting = (operation == UINavigationControllerOperationPop)?NO:YES; return animator;

}

I've also included a couple of other ones I experimented with. To try them just replace [HUTransitionAnimator alloc] with [HUTransitionVerticalLinesAnimator alloc] or whichever class you like.
