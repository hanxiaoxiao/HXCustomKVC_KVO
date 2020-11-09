//
//  NSObject+HXKVO.h
//  HXCustomKVC_KVO
//
//  Created by han xiao on 2020/11/9.
//

#import <Foundation/Foundation.h>

typedef void(^LGKVOBlock)(id observer,NSString *keyPath,id oldValue,id newValue);


@interface NSObject (HXKVO)

//响应式编程
- (void)hx_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(nullable void *)context;

- (void)hx_observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context;

- (void)hx_removeObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath;

//函数式编程
- (void)hx_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath handleBlock:(LGKVOBlock)block;


@end


