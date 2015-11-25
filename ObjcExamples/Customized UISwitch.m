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
    self.view.backgroundColor = [UIColor yellowColor];
    UIImage *test =[UIImage imageNamed:@"OnBlack.png"];
  //   _on = [[UIButton alloc] init];
    
    [self.on setImage:test forState:UIControlStateNormal];
    [self.on setImage:[UIImage imageNamed:@"OnWhite.png"] forState:UIControlStateSelected];
    [self.off setImage:[UIImage imageNamed:@"OffBlack.png"] forState:UIControlStateNormal];
    [self.off setImage:[UIImage imageNamed:@"OffWhite.png"] forState:UIControlStateSelected];
}
- (void) buttonTap {
    _on.selected = !_off.selected;
}
@end
