//
//  LoginViewController.m
//  Responder
//
//  Created by DaysSummer on 16/3/2.
//  Copyright © 2016年 SayDy. All rights reserved.
//

#import "LoginViewController.h"
#import "UserButton.h"

@interface LoginViewController ()
@property (nonatomic ,strong) UserButton *btn;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    [self.view addSubview:self.btn];
}

- (UserButton *)btn {
    if (!_btn) {
        UserButton *userBtn = [[UserButton alloc] initWithFrame:CGRectMake(0, 64, 100, 44)];
        userBtn.backgroundColor = [UIColor cyanColor];
        [userBtn setTitle:@"返回" forState:UIControlStateNormal];
        self.navigationController popViewControllerAnimated:YES
        _btn = userBtn;
    }
    return _btn;
}

- (void)dealloc {
    NSLog(@"%s" ,__func__);
}
@end

