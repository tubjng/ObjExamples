//
//  ArrayHW2RemoveDuplicate.m
//  ObjcExamples
//
//  Created by tubjng on 11/27/15.
//  Copyright © 2015 tubjng. All rights reserved.
//

#import "ArrayHW2RemoveDuplicate.h"

@interface ArrayHW2RemoveDuplicate ()

@end

@implementation ArrayHW2RemoveDuplicate
- (NSArray*)removeDuplicate:(NSArray *)array{
    
    NSOrderedSet *orderedSet = [NSOrderedSet orderedSetWithArray:array];
    return [orderedSet array];
}

@end
