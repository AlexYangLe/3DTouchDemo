//
//  contactViewController.m
//  touchDemo
//
//  Created by 杨乐乐 on 16/7/13.
//  Copyright © 2016年 com.gampTech. All rights reserved.
//

#import "contactViewController.h"

@interface contactViewController ()

@end

@implementation contactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIView *contactView = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [contactView setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:contactView];
}

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
