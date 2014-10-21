//
//  PhotoCollectionViewController.h
//  UAVGS
//
//  Created by zhongwu on 14-10-14.
//  Copyright (c) 2014年 mousebird consulting. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PhotoCollectionViewCell.h"
#import "DetailCollectionViewController.h"

@interface PhotoCollectionViewController : UICollectionViewController<UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource,UINavigationControllerDelegate>

@property (nonatomic, strong)NSMutableArray *photoArray;

@end
