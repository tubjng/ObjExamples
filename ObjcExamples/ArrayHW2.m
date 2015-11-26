//
//  ArrayHW2.m
//  ObjcExamples
//
//  Created by tubjng on 11/27/15.
//  Copyright © 2015 tubjng. All rights reserved.
//

#import "ArrayHW2.h"

@interface ArrayHW2 ()
@end

@implementation ArrayHW2

- (NSArray*)removeDuplicate:(NSArray *)array{
    
    NSOrderedSet *orderedSet = [NSOrderedSet orderedSetWithArray:array];
    return [orderedSet array];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *array = @[@"A",@2,@"A",@"B",@2];
    NSLog(@"%@", array);
    array = [self removeDuplicate:array];
    
    NSLog(@"%@", array);
    
    
}


@end
