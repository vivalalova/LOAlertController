//
//  UIAlertController+LOAlertController.h
//  Giish
//
//  Created by Kuo-HsunShih on 2016/2/23.
//  Copyright © 2016年 Lova. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (LOAlertController)
// buttonIndex -1 == cancel
+ (UIAlertController *)showWithController:(UIViewController *)controller cancelTitle:(NSString *)cancelTitle type:(UIAlertControllerStyle)type title:(NSString *)title message:(NSString *)message buttons:(NSArray <NSString *> *)buttons complete:(void (^)(NSInteger buttonIndex))complete;

@end
