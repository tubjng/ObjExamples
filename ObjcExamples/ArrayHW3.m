//
//  ArrayHW3.m
//  ObjcExamples
//
//  Created by tubjng on 11/28/15.
//  Copyright © 2015 tubjng. All rights reserved.
//

#import "ArrayHW3.h"
#define ARRAY_SIZE( array ) sizeof( array ) / sizeof(array[0])


@interface ArrayHW3 ()
@property NSMutableArray *array;

@end

@implementation ArrayHW3

- (void)viewDidLoad {
    [super viewDidLoad];
    self.array=[[NSMutableArray alloc]init];
    int arrayNumberC[] ={15,132,44,75,63};
    int d = ARRAY_SIZE(arrayNumberC);
    for (int i=0; i<d; i++) {
        [self print:arrayNumberC[i]];
    }
    NSLog(@"%@",_array);
}

- (void) print:(int) num {
    char digit [21][10] = { "", "one", "two", "three", "four", "five", "six", "seven",
        "eight", "nine", "ten", "eleven", "twelve", "thirteen",
        "fourteen", "fifteen", "sixteen", "seventeen", "eighteen",
        "nineteen"};
    char tens [11][10] = { "", "", "twenty", "thirty", "forty", "fifty", "sixty",
        "seventy", "eighty", "ninety"};
    char str[1000] = {0};
    int prev=0, div=1000;
    strcpy(str, "");
    
    while(div) {
        
        if ((num / div) % 10 > 0 || (div == 10 && (num%100) > 0)) {
            
            if (prev) {
                strcat(str, "-");
                prev = 0;
            }
            
            switch(div) {
                case 1000:
                    strcat(str, digit[(num / div) % 10]);
                    strcat(str, "-thousand");
                    prev = 1;
                    break;
                case 100:
                    strcat(str, digit[(num / div) % 10]);
                    strcat(str, "-hundred");
                    prev = 1;
                    break;
                case 10:
                    if ( (num%100) >= 10 && (num%100) <= 19)
                        strcat(str, digit[num%100]);
                    else {
                        strcat(str, tens[(num%100)/10]);
                        strcat(str, digit[num%10]);
                    }
                    break;
            }
        }
        
        div /= 10;
    }
    printf("%d %s\n", num, str);
    
    NSString *string = [[NSString alloc] initWithBytes:str length:sizeof(str) encoding:NSASCIIStringEncoding];
    
    [_array  addObject:string];
    
}


@end
