//
//  YJSafeUtils.m
//  YJJSonsafe
//
//  Created by huahaniOSCode on 2019/1/29.
//  Copyright © 2019年 YJ. All rights reserved.
//

#import "YJSafeUtils.h"

@implementation NSArray (YJSafeUtils)

- (id)YJ_safeObjectAtIndex:(NSUInteger)index
{
    if (index >= [self count]) {
        return nil;
    }
    id value = [self objectAtIndex:index];
    if (value == [NSNull null]) {
        return nil;
    }
    return value;
}

- (id)YJ_safeObjectAtIndex:(NSUInteger)index class:(Class)aClass
{
    id value = [self YJ_safeObjectAtIndex:index];
    if ([value isKindOfClass:aClass]) {
        return value;
    }
    return nil;
}

- (BOOL)YJ_boolAtIndex:(NSUInteger)index
{
    id value = [self YJ_safeObjectAtIndex:index];
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
        return [value boolValue];
    }
    return NO;
}

- (CGFloat)YJ_floatAtIndex:(NSUInteger)index
{
    id value = [self YJ_safeObjectAtIndex:index];
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
        return [value floatValue];
    }
    return 0;
}

- (NSInteger)YJ_integerAtIndex:(NSUInteger)index
{
    id value = [self YJ_safeObjectAtIndex:index];
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
        return [value integerValue];
    }
    return 0;
}

- (NSString *)YJ_stringAtIndex:(NSUInteger)index
{
    return [self YJ_safeObjectAtIndex:index class:[NSString class]];
}

- (NSDictionary *)YJ_dictionaryAtIndex:(NSUInteger)index
{
    return [self YJ_safeObjectAtIndex:index class:[NSDictionary class]];
}

- (NSArray *)YJ_arrayAtIndex:(NSUInteger)index
{
    return [self YJ_safeObjectAtIndex:index class:[NSArray class]];
}

@end


@implementation NSMutableArray (YJSafeUtils)

- (void)YJ_safeAddObject:(id)anObject
{
    if (anObject) {
        [self addObject:anObject];
    }
}

- (void)YJ_safeInsertObject:(id)anObject atIndex:(NSUInteger)index
{
    if (anObject && index <= self.count) {
        [self insertObject:anObject atIndex:index];
    }
}

@end


@implementation NSDictionary (YJSafeUtils)

- (id)YJ_safeObjectForKey:(id)key
{
    if (key == nil) {
        return nil;
    }
    id value = [self objectForKey:key];
    if (value == [NSNull null]) {
        return nil;
    }
    return value;
}

- (id)YJ_safeObjectForKey:(id)key class:(Class)aClass
{
    id value = [self YJ_safeObjectForKey:key];
    if ([value isKindOfClass:aClass]) {
        return value;
    }
    return nil;
}

- (BOOL)YJ_boolForKey:(id)key
{
    id value = [self YJ_safeObjectForKey:key];
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
        return [value boolValue];
    }
    return NO;
}

- (CGFloat)YJ_floatForKey:(id)key
{
    id value = [self YJ_safeObjectForKey:key];
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
        return [value floatValue];
    }
    return 0;
}

- (NSInteger)YJ_integerForKey:(id)key
{
    id value = [self YJ_safeObjectForKey:key];
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
        return [value integerValue];
    }
    return 0;
}

- (NSString *)YJ_stringForKey:(id)key
{
    return [self YJ_safeObjectForKey:key class:[NSString class]];
}

- (NSDictionary *)YJ_dictionaryForKey:(id)key
{
    return [self YJ_safeObjectForKey:key class:[NSDictionary class]];
}

- (NSArray *)YJ_arrayForKey:(id)key
{
    return [self YJ_safeObjectForKey:key class:[NSArray class]];
}

- (id)YJ_safeValueForKey:(NSString *)key
{
    return [self YJ_safeObjectForKey:key];
}

- (void)YJ_safeSetValue:(id)value forKey:(NSString *)key
{
    if (key && [key isKindOfClass:[NSString class]]) {
        [self setValue:value forKey:key];
    }
}

@end

@implementation NSMutableDictionary (YJSafeUtils)

- (void)YJ_safeSetObject:(id)anObject forKey:(id)key
{
    if (key && anObject) {
        [self setObject:anObject forKey:key];
    }
}

@end
