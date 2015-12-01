//
//  CustomizedUISwitch.m
//  ObjcExamples
//
//  Created by tubjng on 11/29/15.
//  Copyright © 2015 tubjng. All rights reserved.
//

#import "CustomizedUISwitch.h"

@implementation CustomizedUISwitch
{
UIButton *_buttonon;
UIButton *_buttonoff;
}
- (instancetype) initWithFrame:(CGRect)frame{
    self = [super initWithFrame:CGRectMake(frame.origin.x, frame.origin.y, 216, 80)];
    _buttonon = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 89, 74)];
    _buttonoff= [[UIButton alloc]initWithFrame:CGRectMake(71, 0, 89, 74)];
    
    [_buttonoff addTarget:self action:@selector(pressOFF) forControlEvents:UIControlEventTouchUpInside];
    [_buttonon addTarget:self action:@selector(pressON) forControlEvents:UIControlEventTouchUpInside];
    
    [self addSubview:_buttonoff];
    [self addSubview:_buttonon];
    self.value =false;
    return self;
}
-(void) pressOFF{
        self.value =false;
    }
-(void) pressON{
        self.value =TRUE;
    }

-(void) setValue:(BOOL)value{
        _value = value;
        
        if (_value) {
            [_buttonoff setImage:[UIImage imageNamed:@"OffBlack.png"] forState:UIControlStateNormal];
            [_buttonon setImage:[UIImage imageNamed:@"OnBlack.png"] forState:UIControlStateNormal];
        } else
        {
            [_buttonoff setImage:[UIImage imageNamed:@"OffWhite.png"] forState:UIControlStateNormal];
            [_buttonon setImage:[UIImage imageNamed:@"OnWhite.png"] forState:UIControlStateNormal];
}
    [self sendActionsForControlEvents:UIControlEventValueChanged];
}
-(BOOL)getValue{
    return  _value;
}






@end
