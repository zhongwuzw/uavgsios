//
//  PlanScrollVIew.m
//  UAVGS
//
//  Created by zhongwu on 14-10-15.
//  Copyright (c) 2014年 mousebird consulting. All rights reserved.
//

#import "PlanScrollVIew.h"

#define buttonTagStart 100

@implementation PlanScrollVIew

- (id)initWithFrame:(CGRect)frame planArray:(NSArray *)flyPlanArray
{
    self = [super initWithFrame:frame];
    
    self.buttonArray = [NSMutableArray array];
    
    if (self) {
        self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width - 70, self.frame.size.height)];
        int width = 0;
        for (int i = 0; i < flyPlanArray.count; i++) {
            UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.backgroundColor = [UIColor greenColor];
            button.titleLabel.font = [UIFont systemFontOfSize:15];
            button.titleLabel.textColor = [UIColor redColor];
            [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            
            button.tag = buttonTagStart + i;
            button.frame = CGRectMake(width, 5, 20, 25);
            
            
            if (i != 0) {
                UIButton *tempButton = (UIButton *)[self.scrollView viewWithTag:buttonTagStart + i - 1];
                UIView *lineView = [[UIView alloc] initWithFrame:CGRectMake(tempButton.frame.origin.x + button.frame.size.width, button.frame.origin.y + button.frame.size.height / 2, button.frame.origin.x - tempButton.frame.origin.x - tempButton.frame.size.width, 2)];
    //            CGRect rect = button.frame;
//                UIView *lineView = [[UIView alloc] initWithFrame:CGRectMake(rect.origin.x - 100, rect.origin.y + rect.size.height / 2, 100, 2)];
                lineView.backgroundColor = [UIColor whiteColor];
                [self.scrollView addSubview:lineView];
            }
            
            [button addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
            [self.scrollView addSubview:button];
            [self.buttonArray addObject:button];
            
            UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(width, 30, 70, 30)];
            label.text = [flyPlanArray objectAtIndex:i];
            label.textColor = [UIColor whiteColor];
            [self.scrollView addSubview:label];
            
            width += 120;
        }
        self.scrollView.delegate = self;
        self.scrollView.opaque = NO;
        self.scrollView.contentSize = CGSizeMake(width, 25);
        self.scrollView.showsHorizontalScrollIndicator = NO;
        self.scrollView.backgroundColor = [UIColor blackColor];
        
        self.addButton = [UIButton buttonWithType:UIButtonTypeContactAdd];
        self.addButton.frame = CGRectMake(frame.size.width - 60, 18, 60, 25);
        self.addButton.backgroundColor = [UIColor blackColor];
        [self.addButton addTarget:self action:@selector(handleAddClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.addButton];
        
        [self addSubview:self.scrollView];
        
        [self setOpaque:NO];
        self.alpha = 0.5;
        self.backgroundColor = [UIColor blackColor];
    }
    
    return self;
}

- (void)handleAddClick:(id)sender
{
    NSLog(@"点击了添加按钮");
}

- (void)onClick:(id)sender
{
    NSLog(@"点击了计划");
    UIButton *btn = (UIButton *)sender;

}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
