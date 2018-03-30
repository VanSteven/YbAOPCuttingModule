//
//  YBAOPManager.h
//  YbAOPCuttingModule
//
//  Created by 杨少 on 2018/3/30.
//  Copyright © 2018年 杨波. All rights reserved.
//

#import <Foundation/Foundation.h>

/* 用法：
    当你需要使用多个对象(target)来承接一些方法的实现，初始化 YBAOPManager 实例，将这些对象实例添加到
  YBAOPManager 实例中(addTarget)，最后将 YBAOPManager 实例作为这些方法的第一承接者。剩下的方法分发工作就交给该类了。
 */

NS_ASSUME_NONNULL_BEGIN

@interface YBAOPManager : NSObject

- (void)addTarget:(id)target;
- (void)removeTarget:(id)target;

@property (nonatomic, strong, readonly) NSPointerArray *targets;

@end

NS_ASSUME_NONNULL_END
