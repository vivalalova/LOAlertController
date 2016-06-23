# LOAlertController

[![CI Status](http://img.shields.io/travis/vivalalova/LOAlertController.svg?style=flat)](https://travis-ci.org/vivalalova/LOAlertController)
[![Version](https://img.shields.io/cocoapods/v/LOAlertController.svg?style=flat)](http://cocoapods.org/pods/LOAlertController)
[![License](https://img.shields.io/cocoapods/l/LOAlertController.svg?style=flat)](http://cocoapods.org/pods/LOAlertController)
[![Platform](https://img.shields.io/cocoapods/p/LOAlertController.svg?style=flat)](http://cocoapods.org/pods/LOAlertController)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

LOAlertController is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "LOAlertController"
```

## Getting start

One method to set alertController

```
    [UIAlertController showWithController:self cancelTitle:@"cancel action title" type:UIAlertControllerStyleActionSheet title:@"title" message:@"message" buttons:@[@"action 1 title", @"action 2 title"] complete:^(NSInteger buttonIndex) {
        //return -1 if cancel action pressed
        if (buttonIndex == -1) {
            return;
        }
        
        //button index as bottons
        switch (buttonIndex) {
            case 0:
                //to something
                break;
                
            case 1:
                //to something
                break;
                
            default:
                return;
                break;
        }
    }];
```

## Author

vivalalova, vivalalova0@gmail.com

## License

LOAlertController is available under the MIT license. See the LICENSE file for more info.
