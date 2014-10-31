//
//  TransitionAnimation.h
//  UAVGS
//
//  Created by zhongwu on 14/10/31.
//  Copyright (c) 2014年 mousebird consulting. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhotoCollectionViewController.h"
#import "DetailCollectionViewController.h"

@interface TransitionAnimation : NSObject<UIViewControllerAnimatedTransitioning>
@property (nonatomic, weak)UIImageView *refereceImage;
- (id)initWithReferenceImage:(UIImageView *)imageView;
@end
