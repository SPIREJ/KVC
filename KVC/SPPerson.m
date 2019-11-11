//
//  SPPerson.m
//  KVC
//
//  Created by JackMa on 2019/11/11.
//  Copyright © 2019 fire. All rights reserved.
//

#import "SPPerson.h"

@implementation SPPerson

#pragma mark - 设值

- (void)setName:(NSString *)name {
    NSLog(@"%s --- name:%@", __func__, name);
}

- (void)_setName:(NSString *)name {
    NSLog(@"%s --- name:%@", __func__, name);
}

- (void)setIsName:(NSString *)name {
    NSLog(@"%s --- name:%@", __func__, name);
}


#pragma mark - 取值

- (NSString *)getName {
    NSLog(@"%s", __func__);
    return NSStringFromSelector(_cmd);
}

- (NSString *)name{
    NSLog(@"%s",__func__);
    return NSStringFromSelector(_cmd);
}

- (NSString *)isName{
    NSLog(@"%s",__func__);
    return NSStringFromSelector(_cmd);
}

- (NSString *)_name{
    NSLog(@"%s",__func__);
    return NSStringFromSelector(_cmd);
}

#pragma mark - 异常

- (id)valueForUndefinedKey:(NSString *)key {
    NSLog(@"出现异常，不存在key: %@", key);
    return nil;
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    NSLog(@"出现异常，不存在key: %@", key);
}

- (void)setNilValueForKey:(NSString *)key {
    NSLog(@"出现异常，不能将%@的值设置为nil", key);
}

#pragma mark - 关闭或开启实例变量赋值

+ (BOOL)accessInstanceVariablesDirectly {
    return YES;
}


#pragma mark - 键值验证

- (BOOL)validateValue:(inout id  _Nullable __autoreleasing *)ioValue forKey:(NSString *)inKey error:(out NSError *__autoreleasing  _Nullable *)outError {
    
    if (*ioValue == nil || inKey == nil || inKey.length == 0) {
          NSLog(@"value可能为nil, 或者key为nil或者空值");
          return NO;
      }
    return YES;
}

@end
