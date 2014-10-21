//
//  JSONModel.h
//  UAVGS
//
//  Created by zhongwu on 14-10-13.
//  Copyright (c) 2014年 mousebird consulting. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JSONModel : NSObject <NSCoding,NSCopying,NSMutableCopying>

-(id) initWithDictionary:(NSMutableDictionary*) jsonObject;

@end
