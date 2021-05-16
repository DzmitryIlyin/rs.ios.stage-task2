#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    if ([numbersArray isKindOfClass:[NSNull class]] || numbersArray.count == 0) {
        return @"";
    }
    
    NSMutableArray *formatedArray = [NSMutableArray array];
    
    for (NSNumber *number in numbersArray)
    {
        if (number.intValue < 0)
        {
            return @"Negative numbers are not valid for input.";
        } else if (number.intValue > 255)
        {
            return @"The numbers in the input array can be in the range from 0 to 255.";
        } else [formatedArray addObject:number];
    }
    
    if (formatedArray.count > 4) {
        while(formatedArray.count > 4)
        {
            [formatedArray removeLastObject];
        }
    } else {
        while(formatedArray.count < 4)
        {
            [formatedArray addObject:@0];
        }
    }
    
    return [formatedArray componentsJoinedByString:@"."];
}

@end
