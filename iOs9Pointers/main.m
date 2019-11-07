//
//  main.m
//  iOs9Pointers
//
//  Created by William Chen on 11/7/19.
//  Copyright © 2019 William Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        printf("Hello  iOS9!\n");
        
        // Primitives
        // C programming language
        // C data types
        
        float piFloat = 3.14159265359;
        double piDouble = 3.14159265359; //2x bytes compared to float (can store much bigger)
        
        //32-bit (4 bytes) to 64-bit (8 bytes)
        //1 byte = 8 bits
        // 0 0 0 0 0 0 0 0 // On/Off Yes/No true/false
        // 1 2 3 4 5 6 7 8 // Index
        // Binary = 1's and 0's
        
        printf("pifloat: %f\n", piFloat);
        printf("piDouble: %.8f\n", piDouble);
        
        

        long value = 42;
        
        printf("value: %li\n", value);
        
        // Address of Operator (&value)
        long *addressOfValue = &value;
        printf("addressOfValue: %p\n", addressOfValue);
        printf("&addressOfValue: %p\n", addressOfValue);
        
        /// Pointrs (dereference operator =  *value)
        printf("*addressOfValue: %li\n", *addressOfValue);
        printf("value: %li\n", value);
        
        *addressOfValue = 75;
        printf("CHANGED value: %li\n", value);
        
    }
    return 0;
}
