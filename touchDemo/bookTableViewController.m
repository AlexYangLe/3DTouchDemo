//
//  bookTableViewController.m
//  touchDemo
//
//  Created by 杨乐乐 on 16/7/13.
//  Copyright © 2016年 com.gampTech. All rights reserved.
//

#import "bookTableViewController.h"
#import "webViewController.h"

@interface bookTableViewController ()

@property(nonatomic, strong) NSMutableArray *dataArray;

@end

@implementation bookTableViewController

-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
        int i = 0;
        while (i < 30) {
            [_dataArray addObject:@"http://www.baidu.com"];
            i++;
        }
    }
    return _dataArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"模拟第%ld个知识点", indexPath.row];
    //    NSLog(@"cell text %@", [NSString stringWithFormat:@"模拟第%ld个知识点", indexPath.row]);
    //    UIForceTouchCapability检测是否支持3D touch功能
    if(self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable){
        //系统所有的cell 可实现预览（peek）
        [self registerForPreviewingWithDelegate:self sourceView:cell];
    }
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"alex indexpath.row is %ld, url is %@", (long)indexPath.row, self.dataArray[indexPath.row]);;
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    webViewController *webVC = [[webViewController alloc] init];
    webVC.urlStr = self.dataArray[indexPath.row];
    NSLog(@"webVC urlStr %@", webVC.urlStr);
    [self.navigationController pushViewController:webVC animated:YES];
    
}

#pragma mark -UIViewControllerPreviewingDelegate

-(nullable UIViewController*)previewingContext:(id<UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location{
    
    webViewController *webVC = [[webViewController alloc] init];
    location = [self.tableView convertPoint:location fromView:[previewingContext sourceView]];
    //根据locaton 获取位置
    NSIndexPath *path = [self.tableView indexPathForRowAtPoint:location];
    webVC.urlStr = self.dataArray[path.row];
    return webVC;
}


-(void)previewingContext:(id<UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit{
    viewControllerToCommit.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:viewControllerToCommit animated:YES];
}

@end
