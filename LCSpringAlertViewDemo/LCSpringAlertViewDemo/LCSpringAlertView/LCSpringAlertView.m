//
//  LCSpringAlertView.m
//  LCSpringAlertViewDemo
//
//  Created by chenli on 16/9/9.
//  Copyright © 2016年 Lyc. All rights reserved.
//

#import "LCSpringAlertView.h"
#import "NSString+Size.h"

@interface LCSpringAlertView ()
@property (strong, nonatomic) UIView *alertView;
@property (strong, nonatomic) UILabel *titleLabel;
@property (strong, nonatomic) UILabel *messageLabel;
@property (assign, nonatomic) CGFloat messageHeight;

@end

@implementation LCSpringAlertView

+ (instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message {
    LCSpringAlertView *alertVc = [[LCSpringAlertView alloc] init];
//    alertVc.messageHeight = [message heightWithFont:[UIFont systemFontOfSize:15] constrainedToWidth:([UIScreen mainScreen].bounds.size.width - 80)] + 10;
    [alertVc setupAlertView];
//    alertVc.titleLabel.text = title;
//    alertVc.messageLabel.text = message;
    return alertVc;
}

- (void)setupAlertView {
    self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
}

- (void)addActionWithTitle:(NSString *)title style:(LCAlertActionStyle)style handler:(void (^)())handler {
    
}


- (void)show {
    [[UIApplication sharedApplication].keyWindow addSubview:self];
    self.frame = [UIScreen mainScreen].bounds;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self touchesMoved:touches withEvent:event];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self removeFromSuperview];
}
@end
