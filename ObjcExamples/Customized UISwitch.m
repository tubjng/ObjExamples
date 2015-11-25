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
    UIImage* imageOnBlack =[UIImage imageNamed:@"OnBlack.png"];
    UIImage* imageOffBlack=[UIImage imageNamed:@"OffBlack.png"];
    UIImage* imageOnWhite=[UIImage imageNamed:@"OnWhite.png"];
    UIImage* imageOffWhite=[UIImage imageNamed:@"OffWhite.png"];
    
    
    
    [_on setImage:imageOnBlack forState:UIControlStateNormal];
    [_on setImage:imageOffWhite forState:UIControlStateNormal];
    [_off setImage:imageOffBlack forState:UIControlStateNormal];
    [_off setImage:imageOffWhite forState:UIControlStateNormal];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
