//
//  ViewController.m
//  GIF
//
//  Created by 于晓鹏 on 15/5/13.
//  Copyright (c) 2015年 roc. All rights reserved.
//

#import "ViewController.h"
#import "FLAnimatedImage.h"
#import "YLGIFImage.h"
#import "YLImageView.h"
#import "AnimatedGIFImageSerialization.h"
//#import "OLImageView.h"
//#import "OLImage.h"
#import "UIImage+animatedGIF.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    FLAnimatedImage *image = [FLAnimatedImage animatedImageWithGIFData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://raphaelschaad.com/static/nyan.gif"]]];
    FLAnimatedImageView *imageView = [[FLAnimatedImageView alloc] init];
    imageView.animatedImage = image;
    imageView.frame = CGRectMake(0.0, 20.0, 100.0, 100.0);
    [self.view addSubview:imageView];
    
    // 下载图片慢适合使用本地图
    YLImageView* yLImageView = [[YLImageView alloc] initWithFrame:CGRectMake(100, 20, 100, 100)];
    yLImageView.image = [YLGIFImage imageNamed:@"storm.gif"];
    [self.view addSubview:yLImageView];
    
    
    // 使用方便只需要将将文件引入即可使UIImage支持GIF，还可以将数据序列化为NSData，但缺点是引入头文件后会将整个项目的UIImage方法进行提扩展有可能与其他代码产生冲突
    UIImage *animatedImage = [UIImage imageNamed:@"animated.gif"];
    UIImageView *animatedImageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    animatedImageView.contentMode = UIViewContentModeCenter;
    animatedImageView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    animatedImageView.image = animatedImage;
    [self.view addSubview:animatedImageView];
    
    // OLImageView 与 AFNetworking兼容与YLImageView冲突
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
