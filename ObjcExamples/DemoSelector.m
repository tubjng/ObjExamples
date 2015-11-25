//
//  DemoSelector.m
//  ObjcExamples
//
//  Created by tubjng on 11/24/15.
//  Copyright © 2015 tubjng. All rights reserved.
//

#import "DemoSelector.h"

@interface DemoSelector ()
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation DemoSelector

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)oncrunchData:(id)sender {
    [self performSelectorOnMainThread:@selector(doCrunchData) withObject:nil waitUntilDone:false];
}
-(void) doCrunchData{
    [NSThread sleepForTimeInterval:2];
}

@end
