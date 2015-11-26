//
//  QueryArray.m
//  ObjcExamples
//
//  Created by tubjng on 11/26/15.
//  Copyright © 2015 tubjng. All rights reserved.
//

#import "QueryArray.h"
#import "Student.h"

@interface QueryArray ()

@end

@implementation QueryArray

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *photo=[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://i.ytimg.com/vi/DXUAyRRkI6k/maxresdefault.jpg"]]];
    NSArray *array2 =@[@"ABC",@3.14,photo];
    if ([array2 containsObject:@"ABC"]) {
        NSLog(@"array2 contains picture");
    }
    Student* a = [[Student alloc] init:@"John Kim" and:@"01"];
    Student* b = [[Student alloc] init:@"Jack Ma" and:@"02"];
    Student* c = [[Student alloc] init:@"James Hall" and:@"03"];
    
    NSArray* arr3 = @[a, b, c];
    Student* x = [[Student alloc] init:@"Jack Ma" and:@"02"];
    NSLog(@"We found Jack Ma at %ld", [arr3 indexOfObject:x]);   //Find equal object
    
    if ([arr3 indexOfObjectIdenticalTo:x] == NSNotFound) {   //Find identical object
        NSLog(@"We cannot find Jack Ma");
    }
    
    
    Student* temp = [arr3 firstObject];
    if (temp == arr3[0]) {
        NSLog(@"Same");
    }
    
    NSUInteger foundIndex = [arr3 indexOfObjectPassingTest:^BOOL(id obj, NSUInteger idx, BOOL *stop) {
        Student *student = (Student*) obj;
        if ([student.fullName isEqualToString:@"James Hall"]) {
            return true;
        } else {
            return false;
        }
    }];
    if (foundIndex == NSNotFound) {
        NSLog(@"not Found ");
    }else
    {
    NSLog(@"Found %ld", foundIndex);
    }
    
}


@end
