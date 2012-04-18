//
//  DCObjectMapping.m
//  DCKeyValueObjectMapping
//
//  Created by Diego Chohfi on 4/16/12.
//  Copyright (c) 2012 dchohfi. All rights reserved.
//

#import "DCObjectMapping.h"

@implementation DCObjectMapping
@synthesize attributeName, keyReference, classReference;


- (id)initWithClass: (Class) _classReference
{
    self = [super init];
    if (self) {
        classReference = _classReference;
    }
    return self;
}

+ (DCObjectMapping *) mapKeyPath: (NSString *) keyPath toAttribute: (NSString *) attributeName onClass: (Class) attributeClass{
    return [[self alloc] initWithKeyPath:keyPath toAttribute:attributeName onClass:attributeClass];
}

- (id)initWithKeyPath: (NSString *) _keyReference toAttribute: (NSString *) _attributeName onClass: (Class) _classReference {
    self = [super init];
    if (self) {
        attributeName = _attributeName;
        keyReference = _keyReference;
        classReference = _classReference;
    }
    return self;
}

- (BOOL) isEqualsForKey: (NSString *) key andClassReference: (Class) _classReference {
    if([self.keyReference isEqualToString:key] && self.classReference == _classReference){
        return YES;
    }
    return NO;
}

@end
