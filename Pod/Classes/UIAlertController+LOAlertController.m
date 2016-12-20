//
//  UIAlertController+LOAlertController.m
//  Giish
//
//  Created by Kuo-HsunShih on 2016/2/23.
//  Copyright © 2016年 Lova. All rights reserved.
//

#import "UIAlertController+LOAlertController.h"

@implementation UIAlertController (LOAlertController)

+ (nonnull UIAlertController *)showWithController:(nonnull UIViewController *)controller cancelTitle:(nullable NSString *)cancelTitle type:(UIAlertControllerStyle)type title:(nullable NSString *)title message:(nullable NSString *)message buttons:(nullable NSArray <NSString *> *)buttons complete:(nullable void (^)(NSInteger buttonIndex))complete {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:type];
    
    if (buttons) {
        for (int i = 0; i < buttons.count; i++) {
            NSString *buttonTitle = buttons[i];
            
            UIAlertAction *alertActionOK = [UIAlertAction actionWithTitle:buttonTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action) {
                if (complete) {
                    complete(i);
                }
                
                [alertController dismissViewControllerAnimated:YES completion:nil];
            }];
            
            [alertController addAction:alertActionOK];
        }
    }
    
    //cancel
    NSString *buttonTitle = cancelTitle ? cancelTitle : @"Cancel";
    UIAlertAction *alertActionOK = [UIAlertAction actionWithTitle:buttonTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
        if (complete) {
            complete(-1);
        }
        
        [alertController dismissViewControllerAnimated:YES completion:nil];
    }];
    
    [alertController addAction:alertActionOK];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [controller presentViewController:alertController animated:YES completion:nil];
    });
    
    return alertController;
}

@end
