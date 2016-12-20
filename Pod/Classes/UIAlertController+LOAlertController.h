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
+ (nonnull UIAlertController *)showWithController:(nonnull UIViewController *)controller
                              cancelTitle:(nullable NSString *)cancelTitle
                                     type:(UIAlertControllerStyle)type
                                    title:(nullable NSString *)title
                                  message:(nullable NSString *)message
                                  buttons:(nullable NSArray <NSString *> *)buttons
                                 complete:(nullable void (^)(NSInteger buttonIndex))complete;

@end
