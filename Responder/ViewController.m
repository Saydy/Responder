//
//  ViewController.m
//  Responder
//
//  Created by DaysSummer on 16/3/2.
//  Copyright © 2016年 SayDy. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"跳转");
    [self.navigationController pushViewController:[[LoginViewController alloc] init] animated:YES];
}
@end
