//
//  cArray.m
//  ObjcExamples
//
//  Created by tubjng on 11/27/15.
//  Copyright © 2015 tubjng. All rights reserved.
//

#import "cArray.h"

@interface cArray ()

@end

@implementation cArray

- (void)viewDidLoad {
    [super viewDidLoad];
    [self demoCarray];
    NSArray* CArray= @[@1,@2,@3,@4,@5];
    NSNumber* numbers[5] ={@1,@2,@3,@4,@5};
    
    for (id num in CArray ) {
        NSLog(@"%d",[num intValue]+1000);
    }
//    for (id num in numbers ) {
//        NSLog(@"%d",[num intValue]+1000);
//    }
    for (int i=0; i<5; i++) {
        NSLog(@"%d",[numbers[i] intValue]+9);
    }
      __strong  NSNumber ** pNumber = numbers;
        for (int i=0; i<5; i++) {
            NSLog(@"%d",[numbers[i] intValue]+9);
}
}
-(void) demoCarray{
    int n[10];
    int i,j;
    for (i=0; i<10; i++) {
        n[i]=i+100;
    }
    for (j=0; j<10; j++) {
        printf("Element[%d]=%d\n",j,n[j]);
    }
    


}

@end
