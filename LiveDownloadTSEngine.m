//
//  LiveDownloadTSEngine.m
//  AvassetTest
//
//  Created by zhongwu on 14-10-10.
//  Copyright (c) 2014年 boloomo. All rights reserved.
//

#import "LiveDownloadTSEngine.h"
#define GOPRO_FILE_URL(__C1__) [NSString stringWithFormat:@"live/%@", __C1__]
#define GOPRO_JSON_URL @"gp/gpMediaList"

@implementation LiveDownloadTSEngine

- (MKNetworkOperation *)downLoadTS:(NSString *)fileName onSucceeded:(FileBlock)succeedBlock errorHandler:(MKNKErrorBlock)errorBlock
{
    MKNetworkOperation *op = [self operationWithPath:GOPRO_FILE_URL(fileName)];
    
    [op addCompletionHandler:^(MKNetworkOperation *completionOperation){

    }errorHandler:^(MKNetworkOperation *errorOp,NSError *error){
        errorBlock(error);
        NSLog(@"download Failed");
    }];
    
    [self enqueueOperation:op];
    return op;
}

- (MKNetworkOperation *)fetchGPMediaJSON:(ArrayBlock)succeedBlock errorHandler:(ErrorBlock)errorBlock
{
    MKNetworkOperation *op = (MKNetworkOperation *)[self operationWithPath:GOPRO_JSON_URL];
    
    [op addCompletionHandler:^(MKNetworkOperation *completionOperation){
        NSMutableDictionary *responseDictionary = [completionOperation responseJSON];
        NSMutableArray *GPMediaJson = [responseDictionary objectForKey:@"media"];
        
        NSLog(@"json is %@",GPMediaJson);
        
        NSMutableArray *GPMediaArray = [NSMutableArray array];
        
        [GPMediaJson enumerateObjectsUsingBlock:^(id obj,NSUInteger idx,BOOL *stop){
            [GPMediaArray addObject:[[GPJSON alloc] initWithDictionary:obj]];
             }];
        
        succeedBlock(GPMediaArray);
        }errorHandler:^(MKNetworkOperation *errorOp,NSError *error){
            errorBlock(error);
            NSLog(@"download Failed");
        }];
    
    [self enqueueOperation:op];
    return op;
        
}

@end
