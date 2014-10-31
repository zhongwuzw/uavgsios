//
//  TransitionAnimation.m
//  UAVGS
//
//  Created by zhongwu on 14/10/31.
//  Copyright (c) 2014年 mousebird consulting. All rights reserved.
//

#import "TransitionAnimation.h"

@implementation TransitionAnimation

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    DetailCollectionViewController *toViewController = (DetailCollectionViewController *)[transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    PhotoCollectionViewController *fromViewController = (PhotoCollectionViewController *)[transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    toViewController.view.frame = [transitionContext finalFrameForViewController:toViewController];
    toViewController.view.alpha = 0;
    [transitionContext.containerView addSubview:toViewController.view];
    [transitionContext.containerView sendSubviewToBack:toViewController.view];
    
    CGRect transitionViewInitialFrame = [transitionContext.containerView convertRect:self.refereceImage.bounds fromView:fromViewController.imageView];
    
    CGRect transitionViewFinalFrame = CGRectMake(0, 0, [[UIScreen mainScreen] applicationFrame].size.width, [[UIScreen mainScreen] applicationFrame].size.height);
    
    UIImageView *transitionView = [[UIImageView alloc] initWithImage:fromViewController.imageView.image];
    transitionView.frame = transitionViewInitialFrame;
    [transitionContext.containerView addSubview:transitionView];
    [fromViewController.view removeFromSuperview];
    
    [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        toViewController.view.alpha = 1;
        transitionView.frame = transitionViewFinalFrame;
    }completion:^(BOOL finished){
        [transitionView removeFromSuperview];
        [transitionContext completeTransition:YES];
    }];
}

- (id)initWithReferenceImage:(UIImageView *)imageView
{
    if (self = [super init]) {
        self.refereceImage = imageView;
    }
    return self;
}

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return 1;
}

@end
