//
//  Student.h
//  ObjcExamples
//
//  Created by tubjng on 11/26/15.
//  Copyright © 2015 tubjng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
@property (nonatomic, strong) NSString *fullName;
@property (nonatomic, strong) NSString *studentID;

- (instancetype) init: (NSString*) fullName and: (NSString*) studentID;
- (void) sayYourName;


@end
