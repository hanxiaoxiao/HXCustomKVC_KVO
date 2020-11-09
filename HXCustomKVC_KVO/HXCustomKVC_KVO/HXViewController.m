//
//  HXViewController.m
//  HXCustomKVC_KVO
//
//  Created by han xiao on 2020/11/9.
//

#import "HXViewController.h"
#import "HXPerson.h"
#import "NSObject+HXKVO.h"

@interface HXViewController ()

@property(nonatomic,strong) HXPerson* person;

@end

@implementation HXViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"kvc&kvo";
    self.person = [[HXPerson alloc]init];
//    [self.person addObserver:self forKeyPath:@"nickName" options:(NSKeyValueObservingOptionNew) context:NULL];
//    [self.person addObserver:self forKeyPath:@"name" options:(NSKeyValueObservingOptionNew) context:NULL];
    [self.person hx_addObserver:self forKeyPath:@"nickName" handleBlock:^(id observer, NSString *keyPath, id oldValue, id newValue) {
        NSLog(@"nickName: %@ - %@", oldValue, newValue);
    }];
    
    [self.person hx_addObserver:self forKeyPath:@"name" handleBlock:^(id observer, NSString *keyPath, id oldValue, id newValue) {
        NSLog(@"name: %@ - %@", oldValue, newValue);
    }];
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    self.person.nickName = [NSString stringWithFormat:@"%@+",self.person.nickName];
    self.person.name = [NSString stringWithFormat:@"%@$",self.person.name];
}

//- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
//{
//    NSLog(@"%@",change);
//}
-(void)dealloc{
    NSLog(@"vc 走了");
//    [self.person removeObserver:self forKeyPath:@"nickName"];
//    [self.person removeObserver:self forKeyPath:@"name"];
    
}

@end
