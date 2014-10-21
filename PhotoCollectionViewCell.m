//
//  PhotoCollectionViewCell.m
//  UAVGS
//
//  Created by zhongwu on 14-10-14.
//  Copyright (c) 2014年 mousebird consulting. All rights reserved.
//

#import "PhotoCollectionViewCell.h"

@implementation PhotoCollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self != nil)
    {
        // create our image view so that is matches the height and width of this cell
        _imageView = [[UIImageView alloc] initWithFrame:self.bounds];
        
        self.imageView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        self.imageView.contentMode = UIViewContentModeScaleAspectFill;
        self.imageView.clipsToBounds = YES;
        
        // add a white frame around the image
        self.imageView.layer.borderWidth = 3.0;
        self.imageView.layer.borderColor = [UIColor whiteColor].CGColor;
        
        // Define how the edges of the layer are rasterized for each of the four edges
        // (left, right, bottom, top) if the corresponding bit is set the edge will be antialiased
        //
        self.imageView.layer.edgeAntialiasingMask =
        kCALayerLeftEdge | kCALayerRightEdge | kCALayerBottomEdge | kCALayerTopEdge;
        
        [[self contentView] addSubview:self.imageView];
        
        self.selectedBackgroundView = [[UIView alloc] initWithFrame:self.frame];
        self.selectedBackgroundView.backgroundColor = [UIColor colorWithWhite:0.3 alpha:0.5];
    }
    return self;
}

@end
