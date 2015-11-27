//
//  BootLogic.m
//  TechmasterApp
//
//  Created by techmaster on 9/7/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

#import "BootLogic.h"
#import "MainScreen.h"


@implementation BootLogic
+ (void) boot: (UIWindow*) window
{
    MainScreen* mainScreen = [[MainScreen alloc] initWithStyle:UITableViewStyleGrouped];
    //--------- From this line, please customize your menu data -----------
    NSDictionary* basic = @{SECTION: @"Basic", MENU: @[
                                     @{TITLE: @"Function", CLASS: @"DemoFunction"},
                                     @{TITLE: @"Selector", CLASS: @"DemoSelector"},
                                     @{TITLE: @"CvsObcFunction", CLASS: @"CvsObcFunction"},
                                     @{TITLE: @"Slider", CLASS: @"DemoSlider"},
                                     @{TITLE: @"UISwitch", CLASS: @"Customized_UISwitch"},
                                     @{TITLE: @"SkewImage", CLASS: @"SkewImage"}
                          ]};
    NSDictionary* intermediate = @{SECTION: @"Array", MENU: @[
                                     @{TITLE: @"CreateArray", CLASS: @"CreateArray"},
                                     @{TITLE: @"QueryArray", CLASS: @"QueryArray"},
                                     @{TITLE: @"cArray", CLASS: @"cArray"},
                                     @{TITLE: @"ArrayHW1", CLASS: @"ArrayHW1"},
                                     @{TITLE: @"ArrayHW2", CLASS: @"ArrayHW2"},
                                     @{TITLE: @"ArrayQuicksort8x8", CLASS: @"ArrayQuicksort8x8"},
                                     @{TITLE: @"ArrayQuicksortA_Z ", CLASS: @"ArrayQuicksortA_Z"},
                                  ]};
    NSDictionary* advanced = @{SECTION: @"Advanced", MENU: @[
                                    @{TITLE: @"Advanced C", CLASS: @"AdvancedC"}
                             ]};
    
    mainScreen.menu = @[basic, intermediate, advanced];
    mainScreen.title = @"ObjcExample";
    mainScreen.about = @"This is demo bootstrap demo app. It is collection of sample code of AVFoundation";
    //--------- End of customization -----------
    UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController: mainScreen];
    
    window.rootViewController = nav;
}
@end
