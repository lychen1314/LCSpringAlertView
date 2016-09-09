//
//  LCSpringAlertView.h
//  LCSpringAlertViewDemo
//
//  Created by chenli on 16/9/9.
//  Copyright © 2016年 Lyc. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, LCAlertActionStyle) {
    LCAlertActionStyleDefault = 0,
    LCAlertActionStyleCancel
};

@interface LCSpringAlertView : UIView
+ (instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message;
- (void)addActionWithTitle:(NSString *)title style:(LCAlertActionStyle)style handler:(void(^)())handler;

- (void)show;


@end
