//
//  CvsObcFunction.m
//  ObjcExamples
//
//  Created by tubjng on 11/26/15.
//  Copyright © 2015 tubjng. All rights reserved.
//

#import "CvsObcFunction.h"
//#import "util.h"
#import "UtilObject.h"

@interface CvsObcFunction ()

@end

@implementation CvsObcFunction

- (void)viewDidLoad {
    [super viewDidLoad];
    int result = add(10, 20);
    NSLog(@"%d",result);
    UtilObject* util =[UtilObject new];
    result = [self addA:10 andB:30 ];
    NSLog(@"%ld",factorial(5));
    NSLog(@"%ld",[util factorial:5]);
}
long factorial(long a) {
    if (a < 2) {
        return 1;
    } else {
        return factorial(a-1) * a;
    }
}

-(int) addA:(int)a andB:(int)b{
    return a+b;
}
int add(int a, int b){
    return a+b;
}



@end
