//
//  SkewImage.m
//  ObjcExamples
//
//  Created by tubjng on 11/25/15.
//  Copyright © 2015 tubjng. All rights reserved.
//

#import "SkewImage.h"

@interface SkewImage ()
@property (weak, nonatomic) IBOutlet UIImageView *SkewImage;
@property (weak, nonatomic) IBOutlet UISlider *SliderSkew;

@end

@implementation SkewImage

- (void)viewDidLoad {
    [super viewDidLoad];
    _SliderSkew.value =0;
    _SliderSkew.maximumValue = 360;
    _SliderSkew.minimumValue =0;
}
- (IBAction)Skew:(id)sender {
    CATransform3D t =CATransform3DIdentity;
    t.m34 = -0.005;
    t = CATransform3DRotate(t, _SliderSkew.value* M_PI/180, 0.0, 10.0, 0.0);
    self.SkewImage.layer.transform = t;

}
@end
