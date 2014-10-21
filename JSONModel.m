//
//  JSONModel.m
//  UAVGS
//
//  Created by zhongwu on 14-10-13.
//  Copyright (c) 2014年 mousebird consulting. All rights reserved.
//

#import "JSONModel.h"

@implementation JSONModel

-(id) initWithDictionary:(NSMutableDictionary*) jsonObject
{
    if((self = [super init]))
    {
        [self setValuesForKeysWithDictionary:jsonObject];
    }
    return self;
}

-(BOOL) allowsKeyedCoding
{
    return YES;
}

- (id) initWithCoder:(NSCoder *)decoder
{
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder
{
}

- (id)mutableCopyWithZone:(NSZone *)zone
{
    JSONModel *newModel = [[JSONModel allocWithZone:zone] init];
    return newModel;
}

-(id) copyWithZone:(NSZone *)zone
{
    JSONModel *newModel = [[JSONModel allocWithZone:zone] init];
    return newModel;
}

- (id)valueForUndefinedKey:(NSString *)key
{
    NSLog(@"Undefined Key: %@", key);
    return nil;
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    NSLog(@"Undefined Key: %@", key);
}


@end
