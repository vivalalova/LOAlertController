//
//  UIAlertController+LOAlertController.h
//  Giish
//
//  Created by Kuo-HsunShih on 2016/2/23.
//  Copyright © 2016年 Gino Shen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (LOAlertController)

+(UIAlertController*)showWithController:(UIViewController*)controller type:(UIAlertControllerStyle)type title:(NSString*)title message:(NSString*)message buttons:(NSArray<NSString*>*)buttons complete:(void(^)(NSInteger buttonIndex))complete;

@end
