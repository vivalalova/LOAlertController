//
//  ViewController.m
//  example
//
//  Created by Kuo-HsunShih on 2016/4/11.
//  Copyright © 2016年 Lova. All rights reserved.
//

#import "ViewController.h"
#import "UIAlertController+LOAlertController.h"
@interface ViewController ()

@end

@implementation ViewController

- (IBAction)showAlert:(UIButton *)sender {
    [UIAlertController showWithController:self cancelTitle:@"cancel" type:UIAlertControllerStyleActionSheet title:@"title" message:@"message" buttons:@[@"0",@"1",@"2"] complete:^(NSInteger buttonIndex) {
        NSLog(@"%d",(int)buttonIndex);
    }];
}

@end
