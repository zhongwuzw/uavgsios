//
//  GPJSON.m
//  UAVGS
//
//  Created by zhongwu on 14-10-13.
//  Copyright (c) 2014年 mousebird consulting. All rights reserved.
//

#import "GPJSON.h"

@implementation GPJSON

- (id)init
{
    self = [super init];
    if (self) {
        self.mediaArray = [NSMutableArray array];
//        self.mediaArray = [[NSMutableArray alloc] init];
    }
    
    return self;
}

-(id) initWithDictionary:(NSMutableDictionary*) jsonObject
{
    if((self = [super init]))
    {
        self.mediaArray = [NSMutableArray array];
        [self setValuesForKeysWithDictionary:jsonObject];
    }
    return self;
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    [super setValue:value forUndefinedKey:key];
}

- (void)setValue:(id)value forKey:(NSString *)key
{
    if ([key isEqualToString:@"fs"]) {
        for (NSMutableDictionary *mediaDict in value) {
            self.thisGPMedia = [[GPMedia alloc] initWithDictionary:mediaDict];
//            GPMedia *thisGPMedia = [[GPMedia alloc] initWithDictionary:mediaDict];
            if (!self.thisGPMedia.ls) {
                self.thisGPMedia.ls = @"-1";
            }
            [self.mediaArray addObject:self.thisGPMedia];
        }
    }
    else
        [super setValue:value forKey:key];
}

@end
