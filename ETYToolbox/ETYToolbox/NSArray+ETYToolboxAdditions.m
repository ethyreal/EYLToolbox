//
//  NSArray+ETYToolboxAdditions.m
//  ETYToolbox
//
//  Created by George Webster on 5/21/12.
//  Copyright (c) 2012 George Webster. All rights reserved.
//

#import "NSArray+ETYToolboxAdditions.h"

@implementation NSArray (ETYToolboxAdditions)


#pragma mark - Ordering Helpers

- (NSArray *)arrayReversed
{
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:[self count]];
    
    NSEnumerator *enumerator = [self reverseObjectEnumerator];
    
    for (id element in enumerator) {
        [array addObject:element];
    }
    
    return array;
}

- (NSArray *)arrayRandomized
{
    NSMutableArray *shuffled = [NSMutableArray arrayWithCapacity:[self count]];
	
	NSMutableArray *copy = [self mutableCopy];
	
	while ([copy count] > 0) {
		int index = arc4random() % [copy count];
		
		id objectToMove = [copy objectAtIndex:index];
		[shuffled addObject:objectToMove];
		[copy removeObjectAtIndex:index];
	}

	return shuffled;
}

@end
