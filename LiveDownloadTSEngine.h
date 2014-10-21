//
//  LiveDownloadTSEngine.h
//  AvassetTest
//
//  Created by zhongwu on 14-10-10.
//  Copyright (c) 2014年 boloomo. All rights reserved.
//

#import "MKNetworkEngine.h"
#import "GPJSON.h"

@interface LiveDownloadTSEngine : MKNetworkEngine
typedef void (^FileBlock)(void);
typedef void (^ArrayBlock)(NSMutableArray *GPMediaArray);
typedef void (^ErrorBlock)(NSError *error);

- (MKNetworkOperation *)downLoadTS:(NSString *)fileName onSucceeded:(FileBlock)succeedBlock errorHandler:(MKNKErrorBlock)errorBlock;

- (MKNetworkOperation *)fetchGPMediaJSON:(ArrayBlock)succeedBlock errorHandler:(ErrorBlock)errorBlock;
@end
