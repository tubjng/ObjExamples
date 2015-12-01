//
//  UtilObject.m
//  ObjcExamples
//
//  Created by tubjng on 11/26/15.
//  Copyright © 2015 tubjng. All rights reserved.
//

#import "UtilObject.h"

@implementation UtilObject
-(int) addA: (int)a andB:(int)b {
    return a + b;
}

- (long) factorial: (long) a {
    if (a < 2) {
        return 1;
    } else {
        return [self factorial: a - 1] * a;
    }
}

- (void) secretTalk {
    NSLog(@"I am silent");
}
@end