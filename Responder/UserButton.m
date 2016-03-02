//
//  UserButton.m
//  Responder
//
//  Created by DaysSummer on 16/3/2.
//  Copyright © 2016年 SayDy. All rights reserved.
//

#import "UserButton.h"
#import "UIView+Responder.h"

@implementation UserButton

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];

    }
    return self;
}

- (void)back:(UIButton *)sender {
    [[self getNavigation] popViewControllerAnimated:YES];
}

- (void)dealloc {
    NSLog(@"%s" ,__func__);
}
@end
