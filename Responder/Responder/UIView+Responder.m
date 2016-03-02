//
//  UIView+Responder.m
//  Responder
//
//  Created by DaysSummer on 16/3/2.
//  Copyright © 2016年 SayDy. All rights reserved.
//

#import "UIView+Responder.h"

@implementation UIView (Responder)
- (UINavigationController *)getNavigation {
    // 取出下一个响应者
    id obj = [self nextResponder];
    do {
        // 判断是否为UINavigationController类型
        if ([obj isKindOfClass:[UINavigationController class]]) {
            // 是返回这个对象
            return obj;
        }
        // 否则继续使用本次取到的对象,取下一个响应者
        obj = [obj nextResponder];
        // 如果下一个响应者存在,继续循环
    } while (obj);
    // 没有找到,返回空
    return nil;
}
@end
