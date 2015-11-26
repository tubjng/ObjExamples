//
//  ArrayHW1.m
//  ObjcExamples
//
//  Created by tubjng on 11/27/15.
//  Copyright © 2015 tubjng. All rights reserved.
//

#import "ArrayHW1.h"

@interface ArrayHW1 ()

@end

@implementation ArrayHW1

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray * Array= [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"ArrayHW1" ofType:@"plist" ]];
    NSMutableArray *mainteam=[NSMutableArray arrayWithArray:Array];
    while (mainteam.count>11) {
        [mainteam removeObjectAtIndex:arc4random_uniform(mainteam.count)];
    }
    int i =0;
    NSLog(@"main team :");
    for(NSDictionary *a in mainteam){
        i++;
        NSLog(@"%d-%@,",i,a[@"name"]);
    
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
