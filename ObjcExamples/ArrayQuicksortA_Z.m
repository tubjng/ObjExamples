//
//  ArrayQuicksortA_Z.m
//  ObjcExamples
//
//  Created by tubjng on 11/27/15.
//  Copyright © 2015 tubjng. All rights reserved.
//

#import "ArrayQuicksortA_Z.h"

@interface ArrayQuicksortA_Z ()

@end

@implementation ArrayQuicksortA_Z

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray* stringArray =@[@"Tubjng",@"Tjngjng",@"Anhbeo",@"Metghe"];
    NSLog(@"Array String :%@",stringArray);
    
    NSMutableArray *keyArray = [[NSMutableArray alloc]init];
    keyArray= [self creatKeyforString:stringArray ];
    NSMutableDictionary *keyAndString = [[NSMutableDictionary alloc] initWithObjects:stringArray forKeys:keyArray];
    
    keyArray =[self quickSort:keyArray];
    NSMutableArray *sortString=[[NSMutableArray alloc] init];
    
    for (NSNumber *a in keyArray ) {
        NSString *s = keyAndString[a];
        [sortString addObject:s];
    }
     NSLog(@"Output String: %@", sortString);
    
}
-(NSMutableArray*)creatKeyforString:(NSArray*) stringArray{
    NSMutableArray *keyArray = [[NSMutableArray alloc] init];
    for (NSString *s in stringArray) {
        int asciiOfChar = [s characterAtIndex:0];
        [keyArray addObject:[NSNumber numberWithInt:asciiOfChar]];
    }
    return keyArray;
    
}
- (NSMutableArray *)quickSort:(NSMutableArray *)unsortedDataArray
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
    int i = 0;
    while (i < [unsortedDataArray count]) {
        NSNumber *num = [unsortedDataArray objectAtIndex:i];
        if (num < pivotValue)
        {
            [lessArray addObject:num];
        }
        else
        {
            [greaterArray addObject:num];
        }
        i++;
    }
    NSMutableArray *sortedArray = [[NSMutableArray alloc] init];
    [sortedArray addObjectsFromArray:[self quickSort:lessArray]];
    [sortedArray addObject:pivotValue];
    [sortedArray addObjectsFromArray:[self quickSort:greaterArray]];
    return sortedArray;
}



@end
