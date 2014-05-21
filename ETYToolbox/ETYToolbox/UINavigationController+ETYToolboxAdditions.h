//
//  UINavigationController+ETYToolboxAdditions.h
//  ETYToolbox
//
//  Created by George Webster on 5/21/12.
//  Copyright (c) 2012 George Webster. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UINavigationController (ETYToolboxAdditions)

- (BOOL)isSubViewController:(UIViewController *)vc;

- (NSString *)backButtonTitleForController:(UIViewController *)vc;

- (NSString *)previousControllerTitle;

@end
