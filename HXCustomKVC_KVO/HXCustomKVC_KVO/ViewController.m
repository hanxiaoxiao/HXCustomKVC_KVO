//
//  ViewController.m
//  HXCustomKVC_KVO
//
//  Created by han xiao on 2020/11/9.
//

#import "ViewController.h"
#import "HXViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"kvc&kvo Demo";
    
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(150, 200, 60, 60);
    [btn setTitle:@"测试" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn.titleLabel setFont:[UIFont systemFontOfSize:20]];
   
    [btn addTarget:self action:@selector(clickAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    // Do any additional setup after loading the view.
}
-(void)clickAction{
    HXViewController* vc = [HXViewController new];
    [self.navigationController pushViewController:vc animated:YES];
    
}

@end
