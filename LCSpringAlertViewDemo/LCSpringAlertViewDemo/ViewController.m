//
//  ViewController.m
//  LCSpringAlertViewDemo
//
//  Created by chenli on 16/9/9.
//  Copyright © 2016年 Lyc. All rights reserved.
//

#import "ViewController.h"
#import "LCSpringAlertView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    LCSpringAlertView *alertVc= [LCSpringAlertView alertControllerWithTitle:@"付款确认" message:@"本次挂号需要支付14.00元，是否进行支付？\n\n注意：若未在规定时间内就诊且24小时内未及时退费，以后将无法再行退费。\n支付完成后请点击按钮，查看是否成功！"];
    [alertVc addActionWithTitle:@"支付" style:LCAlertActionStyleDefault handler:^{
        
    }];
    [alertVc addActionWithTitle:@"关闭" style:LCAlertActionStyleCancel handler:nil];
    [alertVc show];
}

@end
