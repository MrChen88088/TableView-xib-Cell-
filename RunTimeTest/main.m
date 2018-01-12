//
//  main.m
//  RunTimeTest
//
//  Created by chope on 2018/1/12.
//  Copyright © 2018年 chope. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <objc/runtime.h>
#import "ViewController.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
        
        
        
    }
}
