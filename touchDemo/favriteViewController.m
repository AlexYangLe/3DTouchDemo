//
//  favriteViewController.m
//  touchDemo
//
//  Created by 杨乐乐 on 16/7/13.
//  Copyright © 2016年 com.gampTech. All rights reserved.
//

#import "favriteViewController.h"

@interface favriteViewController ()

@end

@implementation favriteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    UIView *favriteView = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
//    [favriteView setBackgroundColor:[UIColor redColor]];
//    [self.view addSubview:favriteView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = touches.anyObject;
    
    NSLog(@"%.2f,%2f", touch.force, touch.maximumPossibleForce);
    
    CGFloat radio = touch.force / touch.maximumPossibleForce;
    self.view.backgroundColor = [UIColor colorWithRed:radio green:radio blue:radio alpha:1];
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
