//
//  GPMedia.h
//  UAVGS
//
//  Created by zhongwu on 14-10-13.
//  Copyright (c) 2014年 mousebird consulting. All rights reserved.
//

#import "JSONModel.h"

@interface GPMedia : JSONModel

@property (strong, nonatomic) NSString *n;//媒体名称
@property (strong, nonatomic) NSString *ls;//判断是否可播放

@end
