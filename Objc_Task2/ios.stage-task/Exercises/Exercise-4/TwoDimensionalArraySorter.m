#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
    if (![array isKindOfClass:[NSArray class]] || array == nil || array.count == 0) return @[];
    
    NSMutableArray *numbers = [NSMutableArray array];
    NSMutableArray *strings = [NSMutableArray array];
    
    for (NSArray *subArray in array)
    {
        if (![subArray isKindOfClass:[NSArray class]]) return @[];
        
        for (id value in subArray)
        {
            if([value isKindOfClass:[NSNumber class]])
            {
                [numbers addObject:value];
            } else
            {
                [strings addObject:value];
            }
        }
    }
    
    if (!numbers.count)
    {
        return [strings sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    }
    else if (!strings.count)
    {
        return [numbers sortedArrayUsingSelector:@selector(compare:)];
    }
    
    return [NSArray arrayWithObjects:[numbers sortedArrayUsingSelector:@selector(compare:)], [strings sortedArrayUsingDescriptors:@[[NSSortDescriptor sortDescriptorWithKey:nil ascending:NO]]], nil];
}

@end
