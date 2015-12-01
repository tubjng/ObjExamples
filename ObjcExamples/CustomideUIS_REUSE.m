//
//  CustomideUIS_REUSE.m
//  ObjcExamples
//
//  Created by tubjng on 12/1/15.
//  Copyright © 2015 tubjng. All rights reserved.
//

#import "CustomideUIS_REUSE.h"
#import "CustomizedUISwitch.h"

@interface CustomideUIS_REUSE ()

@end

@implementation CustomideUIS_REUSE
{
    CustomizedUISwitch *mySwitch;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    mySwitch =[[CustomizedUISwitch alloc]initWithFrame:CGRectMake(0,0,216,80 )];
    mySwitch.center = CGPointMake(self.view.bounds.size.width*0.5, 120);
    [mySwitch addTarget:self action:@selector(switchChange:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:mySwitch];
    
}
-(void) switchChange :(CustomizedUISwitch*) customSwitch{
    NSLog(@"%d",customSwitch.value);}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
