//
//  CreateArray.m
//  ObjcExamples
//
//  Created by tubjng on 11/26/15.
//  Copyright © 2015 tubjng. All rights reserved.
//

#import "CreateArray.h"

@interface CreateArray ()

@end

@implementation CreateArray

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *arr1 =[[NSArray alloc] init];
    NSLog(@"arr1 has %ld elements",arr1.count);
    NSArray* arr2 = @[@"ABC", @3.14, [UIImage imageWithData:
                                    [NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://i.ytimg.com/vi/DXUAyRRkI6k/maxresdefault.jpg"]]]];
    NSLog(@"arr2 has %ld elements",arr2.count);
    NSArray* arr3 = [NSArray arrayWithArray:arr2];
    NSLog(@"%p-%p",arr2,arr3);
     NSLog(@"%p-%p",arr2[2],arr3[2]);
    NSArray* arr4  =[NSArray arrayWithContentsOfFile:[[NSBundle mainBundle]
                        pathForResource:@"Data" ofType:@"plist"]];
    NSLog(@"%@",arr4);
    for(NSDictionary* item in arr4){
        NSLog(@"%@- %@",item[@"name"],item[@"job"]);
    }
    NSArray*arr5=[NSArray arrayWithObjects: @1, @2, @3, @4,nil];
    NSLog(@"%@",arr5);
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
