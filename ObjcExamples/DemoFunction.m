//
//  DemoFunction.m
//  ObjcExamples
//
//  Created by tubjng on 11/24/15.
//  Copyright © 2015 tubjng. All rights reserved.
//

#import "DemoFunction.h"

@interface DemoFunction ()

@end

@implementation DemoFunction

- (void)viewDidLoad {
    [super viewDidLoad];
    [self writeln:@"Demo Function"];
    [self writeln:@"Hello world"];
    [self sayfirstName:@"steve" andlastName:@"jobs"];
    float tempDegree =30.1;
    NSString* result =[NSString stringWithFormat:@"%2.1f degree equal to %3.1f F",
                       tempDegree,[self celciusFahrenheigt:tempDegree]];
    [self writeln:result];
    [self performSelector:@selector(celciusFahrenheigt)];
    [self performSelector:@selector(celciusFahrenheigt2:) withObject:@(30.1)];
    
}

-(void) sayfirstName: (NSString*) firstName andlastName:(NSString*) lastName{
    NSLog(@"%@ %@",firstName,lastName);
}
-(float) celciusFahrenheigt: (float) degree{
    return degree * 1.8 +32.0;
    
}
-(void)celciusFahrenheigt{
    NSLog(@"do nothing");
}
-(void) celciusFahrenheigt2: (NSNumber*) degree{
    float result= [degree floatValue]* 1.8+32.0;
    NSLog(@"result =%2.1f",result);
}
@end
