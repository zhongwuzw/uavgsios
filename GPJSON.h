//
//  GPJSON.h
//  UAVGS
//
//  Created by zhongwu on 14-10-13.
//  Copyright (c) 2014年 mousebird consulting. All rights reserved.
//

#import "JSONModel.h"
#import "GPMedia.h"

@interface GPJSON : JSONModel

@property (strong, nonatomic)NSString *d;//存放目录名
@property (strong, nonatomic)NSMutableArray *mediaArray;//存放媒体数据
@property (strong, nonatomic)GPMedia *thisGPMedia;

@end
