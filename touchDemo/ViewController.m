//
//  ViewController.m
//  touchDemo
//
//  Created by 杨乐乐 on 16/7/11.
//  Copyright © 2016年 com.gampTech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//@property(nonatomic, strong) NSMutableArray *dataArray;

@end


@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [self.view setBackgroundColor:[UIColor purpleColor]];

}


//-(NSMutableArray *)dataArray{
//    if (!_dataArray) {
//        _dataArray = [NSMutableArray new];
//        int i = 0;
//        while (i < 30) {
//            [_dataArray addObject:@"http://www.baidu.com"];
//            i++;
//        }
//    }
//    return _dataArray;
//}


//
//-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//    return self.dataArray.count;
//}
//
//
//-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    static NSString *cellID = @"cell";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
//    if (!cell) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
//    }
//    cell.textLabel.text = [NSString stringWithFormat:@"模拟第%ld个知识点", indexPath.row];
////    NSLog(@"cell text %@", [NSString stringWithFormat:@"模拟第%ld个知识点", indexPath.row]);
////    UIForceTouchCapability检测是否支持3D touch功能
//    if(self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable){
//        //系统所有的cell 可实现预览（peek）
//        [self registerForPreviewingWithDelegate:self sourceView:cell];
//    }
//    return cell;
//}
//
//-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    [tableView deselectRowAtIndexPath:indexPath animated:YES];
//    UIWebView *webVC = [UIWebView new];
//    NSString *urlStr = self.dataArray[indexPath.row];
//    NSURL *url = [NSURL URLWithString:urlStr];
//    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
//    [webVC loadRequest:urlRequest];
//    [self.navigationController pushViewController:webVC animated:YES];
//    
//}
//
//#pragma mark -UIViewControllerPreviewingDelegate
//
//-(nullable UIViewController*)previewingContext:(id<UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location{
//    UIWebView *webView = [[UIWebView alloc] init];
//    location = [self.tableView convertPoint:location fromView:[previewingContext sourceView]];
//    //根据locaton 获取位置
//    NSIndexPath *path = [self.tableView indexPathForRowAtPoint:location];
//    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.dataArray[path.row]]]];
//    return webView;
//}
//
//
//-(void)previewingContext:(id<UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit{
//    viewControllerToCommit.hidesBottomBarWhenPushed = YES;
//    [self.navigationController pushViewController:viewControllerToCommit animated:YES];
//}
//
//-(NSArray<id<UIPreviewActionItem>> *)previewActionItems{
//    UIPreviewAction *itemOne = [UIPreviewAction actionWithTitle:@"👍" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
//        NSLog(@"已👍");
//    }];
//    UIPreviewAction *itemTwo = [UIPreviewAction actionWithTitle:@"举报" style:UIPreviewActionStyleSelected handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
//        NSLog(@"举报成功");
//    }];
//    UIPreviewAction *itemThree = [UIPreviewAction actionWithTitle:@"收藏" style:UIPreviewActionStyleSelected handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
//        NSLog(@"收藏成功");
//    }];
//    [self performSelector:@selector(hideHub) withObject:nil afterDelay:1];
//    return @[itemOne, itemTwo, itemThree];
//}
//

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
