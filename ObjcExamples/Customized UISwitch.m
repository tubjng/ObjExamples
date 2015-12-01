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
    [_on setImage:[UIImage imageNamed:@"OnBlack.png"] forState:normal];
    [_off setImage:[UIImage imageNamed:@"OffBlack.png"] forState:normal];
}
- (IBAction)ButtonOnCS:(id)sender {
   if ([_off.currentImage isEqual:[UIImage imageNamed:@"OffWHile.png"]]) {
        [_on setImage:[UIImage imageNamed:@"OnBlack.png"] forState:normal];
        [_off setImage:[UIImage imageNamed:@"OffBlack.png"] forState:normal];

    }
}
- (IBAction)ButtonOffCS:(id)sender {
    if ([_on.currentImage isEqual:[UIImage imageNamed:@"OnBlack.png"]]) {
        [_on setImage:[UIImage imageNamed:@"OnWhite.png"] forState:normal];
        [_off setImage:[UIImage imageNamed:@"OffWhite.png"] forState:normal];
    }
}

@end
