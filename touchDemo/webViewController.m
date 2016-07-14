//
//  webViewController.m
//  touchDemo
//
//  Created by 杨乐乐 on 16/7/14.
//  Copyright © 2016年 com.gampTech. All rights reserved.
//

#import "webViewController.h"

@interface webViewController ()
//@property (nonatomic, strong) UIWebView *webView;

@end

@implementation webViewController

//-(UIWebView *)webView{
//    if (!_webView) {
////        _webView = [[UIWebView alloc] initWithFrame:[UIScreen mainScreen].bounds];
//        _webView = [[UIWebView alloc] init];
//    }
//    return _webView;
//}

//-(NSString *)urlStr{
//    if (!_urlStr) {
//        _urlStr = [[NSString alloc] init];
//    }
//    return _urlStr;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.urlStr = @"http://www.baidu.com";
    UIWebView *webView = [[UIWebView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    NSURL *url = [NSURL URLWithString:self.urlStr];
    NSLog(@"urlStr %@", self.urlStr);
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [webView loadRequest:urlRequest];
    [self.view addSubview:webView];
}

-(NSArray<id<UIPreviewActionItem>> *)previewActionItems{
    UIPreviewAction *itemOne = [UIPreviewAction actionWithTitle:@"👍" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"已👍");
    }];
    UIPreviewAction *itemTwo = [UIPreviewAction actionWithTitle:@"举报" style:UIPreviewActionStyleSelected handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"举报成功");
    }];
    UIPreviewAction *itemThree = [UIPreviewAction actionWithTitle:@"收藏" style:UIPreviewActionStyleDestructive handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"收藏成功");
    }];
//    [self performSelector:@selector(hideHub) withObject:nil afterDelay:1];
    return @[itemOne, itemTwo, itemThree];
}

//-(void)hideHub{
//    NSLog(@"取消显示的提示窗口");
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
