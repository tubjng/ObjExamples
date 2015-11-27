//
//  ArrayQuicksort8x8.m
//  ObjcExamples
//
//  Created by tubjng on 11/27/15.
//  Copyright © 2015 tubjng. All rights reserved.
//

#import "ArrayQuicksort8x8.h"

@interface ArrayQuicksort8x8 ()

@end

@implementation ArrayQuicksort8x8

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray * arrayNumber =[[NSMutableArray alloc] init];
    int Carray[8][8];
    for (int i=8; i>0; i--) {
        for (int j=8; j>0; j--) {
            Carray[i][j] = arc4random_uniform(64);
            [arrayNumber addObject:[NSNumber numberWithInt:Carray[i][j]]];
            NSLog(@"%@",arrayNumber);
            }
        }
    NSArray* arrayNumberQuicksort = [self quicksort:arrayNumber];
    for (NSNumber *a in arrayNumberQuicksort) {
        NSLog(@"%@",a);
    }
}
-(NSArray *)quicksort:(NSMutableArray *)unsortedDataArray
{
    NSMutableArray *lessArray = [[NSMutableArray alloc] init] ;
    NSMutableArray *greaterArray =[[NSMutableArray alloc] init] ;
    if ([unsortedDataArray count] <1)
    {
        return nil;
    }
    int randomPivotPoint = arc4random() % [unsortedDataArray count];
    NSNumber *pivotValue = [unsortedDataArray objectAtIndex:randomPivotPoint];
    [unsortedDataArray removeObjectAtIndex:randomPivotPoint];
    for (NSNumber *num in unsortedDataArray)
    {
        // quickSortCount++; //This is required to see how many iterations does it take to sort the array using quick sort
        if (num < pivotValue)
        {
            [lessArray addObject:num];
        }
        else
        {
            [greaterArray addObject:num];
        }
    }
    NSMutableArray *sortedArray = [[NSMutableArray alloc] init] ;
    [sortedArray addObjectsFromArray:[self quicksort:lessArray]];
    [sortedArray addObject:pivotValue];
    [sortedArray addObjectsFromArray:[self quicksort:greaterArray]];
    return sortedArray;
}

@end
