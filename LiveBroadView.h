//
//  LiveBroadView.h
//  UAVGS
//
//  Created by zhongwu on 14-9-24.
//  Copyright (c) 2014年 mousebird consulting. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface LiveBroadView : UIView

@property (nonatomic, strong) AVPlayer *player;

- (void)setVideoFillMode:(NSString *)fillMode;

@end
