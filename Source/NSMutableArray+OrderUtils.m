//
//  NSMutableArray+OrderUtils.m
//  
//
//  Created by Hector Zarate Rea (@hecktorzr) on 1/2/12.
//  Copyright (c) 2012 hector.mieldemaple.com. All rights reserved.
//

#import "NSMutableArray+OrderUtils.h"

@implementation NSMutableArray (OrderUtils)


/* Fisher–Yates shuffle */

-(void)shuffle
{
    for (int i = ([self count]-1); i >= 1; --i)
    {
        int j = arc4random() % i;
        
        id tempObject = [[self objectAtIndex:j] retain];
        
        [self replaceObjectAtIndex:j withObject: [self objectAtIndex:i] ];
        [self replaceObjectAtIndex:i withObject:tempObject];
        
        [tempObject release];
    }

}
    

-(void)reverse
{
    for (int i = 0; i < [self count] / 2; ++i) 
    {
        int j = [self count] - i - 1;
        
        id tempObject = [[self objectAtIndex:i] retain];
        
        [self replaceObjectAtIndex:i withObject:[self objectAtIndex:j]];
        [self replaceObjectAtIndex:j withObject:tempObject];
        
        [tempObject release];
    }
}

@end
