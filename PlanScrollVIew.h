//
//  PlanScrollVIew.h
//  UAVGS
//
//  Created by zhongwu on 14-10-15.
//  Copyright (c) 2014年 mousebird consulting. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlanScrollVIew : UIView<UIScrollViewDelegate>

@property (nonatomic, strong)UIScrollView *scrollView;
@property (nonatomic, strong)UIButton *addButton;
@property (nonatomic, strong)NSMutableArray *buttonArray;

- (id)initWithFrame:(CGRect)frame planArray:(NSArray *)flyPlanArray;

@end
