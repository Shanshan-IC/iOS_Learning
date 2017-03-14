//
//  ViewController.m
//  DemoApp
//
//  Created by 傅珊珊 on 16/1/26.
//  Copyright © 2016年 傅珊珊. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)extracted_method {
    // Do any additional setup after loading the view, typically from a nib.
    UIImage *uiimag = [UIImage imageNamed:@"pic"];
    UIImageView *view = [[UIImageView alloc] initWithImage:uiimag];
    [self.view addSubview:view];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self extracted_method];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(orientationChanged)
                                                 name:UIDeviceOrientationDidChangeNotification object:nil];
}

- (void) orientationChanged
{
    switch ([[UIDevice currentDevice] orientation]) {
        case UIDeviceOrientationPortrait:
            NSLog(@">>>>>>>>>>>>>>>UIDeviceOrientationPortrait");
            break;
        case UIDeviceOrientationPortraitUpsideDown:
            NSLog(@">>>>>>>>>>>>>>>UIDeviceOrientationPortraitUpsideDown");
            break;
        case UIDeviceOrientationLandscapeLeft:
            NSLog(@">>>>>>>>>>>>>>>>>>UIDeviceOrientationLandscapeLeft");
            break;
        case UIDeviceOrientationLandscapeRight:
            NSLog(@">>>>>>>>>>>>>>>>>>UIDeviceOrientationLandscapeRight");
            break;
        case UIDeviceOrientationFaceDown:
            NSLog(@">>>>>>>>>>>>>>>>>>UIDeviceOrientationFaceDown");
            break;
        case UIDeviceOrientationFaceUp:
            NSLog(@">>>>>>>>>>>>>>>>>>UIDeviceOrientationFaceUp");
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
