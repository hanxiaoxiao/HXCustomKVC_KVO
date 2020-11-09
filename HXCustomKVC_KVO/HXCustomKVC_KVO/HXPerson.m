//
//  HXPerson.m
//  HXCustomKVC_KVO
//
//  Created by han xiao on 2020/11/9.
//

#import "HXPerson.h"

@implementation HXPerson

//+(BOOL)accessInstanceVariablesDirectly{
//    return YES;
//}
//- (void)setName:(NSString *)name{
//    NSLog(@"%s - %@",__func__,name);
//}
//
//- (void)_setName:(NSString *)name{
//    NSLog(@"%s - %@",__func__,name);
//}
//
//- (void)setIsName:(NSString *)name{
//    NSLog(@"%s - %@",__func__,name);
//}

//- (NSString *)name{
//    return NSStringFromSelector(_cmd);
//}

- (void)setNickName:(NSString *)nickName{
    NSLog(@"来到HXPerson的nickName_setter方法:%@",nickName);
    _nickName = nickName;
}
- (void)setName:(NSString *)name{
    NSLog(@"来到HXPerson的name_setter方法:%@",name);
    _name = name;
}
- (void)dealloc
{
    NSLog(@"来到HXPerson的%s方法",__func__);
}
@end
