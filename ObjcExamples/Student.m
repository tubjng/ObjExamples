//
//  Student.m
//  ObjcExamples
//
//  Created by tubjng on 11/26/15.
//  Copyright © 2015 tubjng. All rights reserved.
//

#import "Student.h"

@implementation Student
- (instancetype) init: (NSString*) fullName and: (NSString*) studentID {
    if (self = [super init]) {
        self.fullName = fullName;
        self.studentID = studentID;
    }
    return self;
}

- (BOOL) isEqual:(id)object {
    if ([object isMemberOfClass: [Student class]]) {
        Student* temp = (Student*) object;
        if ([self.fullName isEqual:temp.fullName] && [self.studentID isEqual:temp.studentID]) {
            return true;
        } else {
            return false;
        }
    } else {
        return false;
    }
}
- (void) sayYourName {
    NSLog(@"My name is %@", self.fullName);
}

@end
