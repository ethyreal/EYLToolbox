//
//  UINavigationController+ETYToolboxAdditions.m
//  ETYToolbox
//
//  Created by George Webster on 5/21/12.
//  Copyright (c) 2012 George Webster. All rights reserved.
//

#import "UINavigationController+ETYToolboxAdditions.h"

@implementation UINavigationController (ETYToolboxAdditions)

- (BOOL)isSubViewController:(UIViewController *)vc
{
    NSUInteger idx = [self.navigationController.viewControllers indexOfObject:vc];
    
    return ( idx != NSNotFound && idx > 0 );
}

- (NSString *)backButtonTitleForController:(UIViewController *)vc
{
    NSString *previousTitle = nil;
    
    if ([self isSubViewController:vc]) {
        
        previousTitle = [self previousControllerTitle];
    }
    
    return (previousTitle != nil) ? previousTitle : NSLocalizedString(@"Back", nil);
}


- (NSString *)previousControllerTitle
{
    NSString *previousTitle = nil;
    
    NSUInteger idx = NSNotFound;
    
    if (self.topViewController) {
        idx = [self.viewControllers indexOfObject:self.topViewController];
    }
    
    if (idx != NSNotFound && idx > 0) {
        UIViewController *pvc = [self.viewControllers objectAtIndex:(idx - 1)];
        
        if (pvc) {
            previousTitle = pvc.title;
        }
    }
    
    return previousTitle;
}

@end
