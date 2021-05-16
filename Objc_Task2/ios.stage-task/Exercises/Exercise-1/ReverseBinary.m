#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    NSUInteger reversedBinary = 0;
    for (NSUInteger index = 0; index < 8; index++)
    {
        if (n/2 >= 0) {
            if(n%2){
                reversedBinary += pow(2, 7 - index);
            }
            n /= 2;
        } else break;
    }
    
    return reversedBinary;
}
