//
//  ViewController.m
//  Progress
//
//  Created by crazypoo on 14/8/13.
//  Copyright (c) 2014年 crazypoo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSTimer *sliderTimer;
    UISlider *slider;
    float i;
}

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    slider = [[UISlider alloc] initWithFrame:CGRectMake(0, 100, 200, 10)];
    [slider setThumbImage:[UIImage imageNamed:@"image_SideHome"] forState:UIControlStateNormal];
    slider.minimumValue = 0;
    slider.maximumValue = 100;
    [self.view addSubview:slider];
    
    sliderTimer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(updateSlider) userInfo:nil repeats:YES];
    i=0;
}

-(void)updateSlider
{
    i++;
    slider.value = i;
    if (slider.value == 100) {
        [sliderTimer invalidate];
        [slider removeFromSuperview];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
