//
//  DemoSlider.m
//  ObjcExamples
//
//  Created by tubjng on 11/25/15.
//  Copyright © 2015 tubjng. All rights reserved.
//

#import "DemoSlider.h"

@interface DemoSlider ()

@end

@implementation DemoSlider
{
    NSTimer* _timer;
    __weak IBOutlet UISlider *slider;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _timer =[NSTimer scheduledTimerWithTimeInterval:0.2
                                             target:self
                                           selector:@selector(onTimer)
                                           userInfo:nil
                                            repeats:true];
    slider.transform = CGAffineTransformMakeRotation(-M_PI_2);
    slider.tintColor = [UIColor greenColor];
    slider.thumbTintColor =[UIColor yellowColor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)onTimer {
    slider.value +=0.05;
    if(slider.value >= 1.0){
        slider.value=1;
        [_timer invalidate];
    
    }

}


@end
