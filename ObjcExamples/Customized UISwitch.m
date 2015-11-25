//
//  Customized UISwitch.m
//  ObjcExamples
//
//  Created by tubjng on 11/25/15.
//  Copyright © 2015 tubjng. All rights reserved.
//

#import "Customized UISwitch.h"

@interface Customized_UISwitch ()
@property (weak, nonatomic) IBOutlet UIButton *on;
@property (weak, nonatomic) IBOutlet UIButton *off;

@end

@implementation Customized_UISwitch

- (void)viewDidLoad {
    [super viewDidLoad];
    [_on setImage:[UIImage imageNamed:@"OnBlack"] forState:UIControlStateNormal];
    [_on setImage:[UIImage imageNamed:@"OnWhite"] forState:UIControlStateSelected];
    [_off setImage:[UIImage imageNamed:@"OffBlack"] forState:UIControlStateNormal];
    [_off setImage:[UIImage imageNamed:@"OffWhite"] forState:UIControlStateSelected];
}
- (void) buttonTap {
    _on.selected = !_off.selected;
}
@end
