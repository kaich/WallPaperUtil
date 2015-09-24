//
//  PLPhotoLibrary+util.m
//  aisiweb
//
//  Created by mac on 14-10-11.
//  Copyright (c) 2014年 weiaipu. All rights reserved.
//

#import "PLPhotoLibrary+util.h"
#import <objc/runtime.h>

@implementation PLPhotoLibrary (util)

#define  EXCHANGEMETHOD(ORIGINAL,SWIZZLE) \
id  SELECTOR=nil; \
id  METHOD=SELECTOR; \
Class CLASS =METHOD; \
CLASS= [self class]; \
SEL ORIGINAL##SELECTOR = NSSelectorFromString(ORIGINAL); \
SEL SWIZZLE##SELECTOR = NSSelectorFromString(SWIZZLE); \
Method ORIGINAL##METHOD = class_getInstanceMethod(CLASS, ORIGINAL##SELECTOR); \
Method SWIZZLE##METHOD = class_getInstanceMethod(CLASS, SWIZZLE##SELECTOR); \
BOOL DIDADDMETHOD = \
class_addMethod(CLASS, \
ORIGINAL##SELECTOR, \
method_getImplementation(SWIZZLE##SELECTOR), \
method_getTypeEncoding(SWIZZLE##SELECTOR)); \
if (DIDADDMETHOD) { \
class_replaceMethod(CLASS, \
SWIZZLE##SELECTOR, \
method_getImplementation(ORIGINAL##METHOD), \
method_getTypeEncoding(ORIGINAL##METHOD)); \
} else { method_exchangeImplementations(ORIGINAL##METHOD, SWIZZLE##METHOD); \
}

-(void) exchange
{
    NSString * method1=@"init";
    NSString * method2=@"initReplace";
    EXCHANGEMETHOD(method1, method2);
}

-(void) restore
{
    NSString * method2=@"init";
    NSString * method1=@"initReplace";
    EXCHANGEMETHOD(method1, method2);
}


- (id)initWithTransientContext:(bool)arg1 name:(const char *)arg2
{
    self = [super init];
    if (self) {
      
    }
    
    return  self;
}



-(id) initReplace
{
    self=[super init];
    if (self) {
        
        
    }
    
    return  self;
}


@end
