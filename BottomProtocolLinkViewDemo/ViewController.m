//
//  ViewController.m
//  BottomProtocolLinkViewDemo
//
//  Created by liupenghui on 2021/9/18.
//

#import "ViewController.h"

#import "WLoginProtocolLinkView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSArray * array = @[
        @{
            @"title":@"用户协议",
            @"link":@"www.baidu.com"
        }
    ];
    //以此方式存储协议 传进去即可
    
    
    WLoginProtocolLinkView * linkView = [WLoginProtocolLinkView initWithProtocolList:[WLoginProtocolLinkModel linkItemArrayWith:array] checkBtnClickCallBack:^(BOOL checkBtnSelected) {
        NSLog(@"%d",checkBtnSelected);
    } protocolTapCallBack:^(NSInteger protocolTapIndex, NSString * _Nullable protocolTapLink) {
        NSLog(@"%ld---%@",protocolTapIndex,protocolTapLink);
    }];
    
    linkView.frame = CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, [linkView protocolLinkViewHeight]);
    [self.view addSubview:linkView];
    
    
    NSArray * array3 = @[
        @{
            @"title":@"用户协议",
            @"link":@"www.baidu.com"
        },
        @{
            @"title":@"用户协议",
            @"link":@"www.baidu.com"
        },
        @{
            @"title":@"用户协议",
            @"link":@"www.baidu.com"
        },
        @{
            @"title":@"用户协议",
            @"link":@"www.baidu.com"
        },
        @{
            @"title":@"用户协议",
            @"link":@"www.baidu.com"
        },
        @{
            @"title":@"用户协议",
            @"link":@"www.baidu.com"
        },
    ];
    linkView.protocoListArr = [WLoginProtocolLinkModel linkItemArrayWith:array3];
    linkView.frame = CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, [linkView protocolLinkViewHeight]);
    // Do any additional setup after loading the view.
}


@end
