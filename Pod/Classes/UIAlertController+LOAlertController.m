//
//  UIAlertController+LOAlertController.m
//  Giish
//
//  Created by Kuo-HsunShih on 2016/2/23.
//  Copyright © 2016年 Lova. All rights reserved.
//

#import "UIAlertController+LOAlertController.h"

@implementation UIAlertController (LOAlertController)

+ (UIAlertController *)showWithController:(UIViewController *)controller type:(UIAlertControllerStyle)type title:(NSString *)title message:(NSString *)message buttons:(NSArray <NSString *> *)buttons complete:(void (^)(NSInteger buttonIndex))complete {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:type];
    
    for (int i = 0; i < buttons.count; i++) {
        NSString *buttonTitle = buttons[i];
        
        UIAlertAction *alertActionOK = [UIAlertAction actionWithTitle:buttonTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action) {
            complete(i);
            
            [alertController dismissViewControllerAnimated:YES completion:nil];
        }];
        
        [alertController addAction:alertActionOK];
    }
    
    
    NSString *buttonTitle = @"Cancel";
    UIAlertAction *alertActionOK = [UIAlertAction actionWithTitle:buttonTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
        complete(-1);
        [alertController dismissViewControllerAnimated:YES completion:nil];
    }];
    
    [alertController addAction:alertActionOK];
    
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [controller presentViewController:alertController animated:YES completion:nil];
    });
    
    return alertController;
}
@end
