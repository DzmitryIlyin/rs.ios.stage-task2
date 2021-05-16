#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    int count = 0;
    for (NSUInteger i = 0; i<array.count; i++)
    {
        for(NSUInteger j = i+1; j<array.count; j++)
        {
            if (ABS((array[i].intValue - array[j].intValue)) == number.intValue) count++;
        }
    }
    
    return count;
}

@end
