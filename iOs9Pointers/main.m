//
//  main.m
//  iOs9Pointers
//
//  Created by William Chen on 11/7/19.
//  Copyright © 2019 William Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
void cStringExercise(void);



//
//  main.m
//  iOS9-Pointers
//
//  Created by Paul Solt on 11/7/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

// Function declaration

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        printf("Hello iOS9!\n");

        // Primitives
        // C programming language
        // C data types

        float piFloat = 3.14159265359;
        double piDouble = 3.14159265359;  // 2x bytes (can store much bigger)

        // 32-bit (4 bytes) to 64-bit (8 bytes)
        // 1 byte = 8 bits

        // 0 0 0 0 0 0 1 1  // On/Off YES/NO true/false
        // 1 2 3 4 5 6 7 8  // Index
        // Binary = 1's and 0's

        printf("piFloat: %0.8f\n", piFloat);
        printf("piDouble: %.8f\n", piDouble);

        long value = 42;

        printf("value: %li\n", value);
        
        // Address of Operator (&value)
        long *addressOfValue = &value;
        printf("addressOfValue: %p\n", addressOfValue);
        printf("&addressOfValue: %p\n", &addressOfValue);

        // Pointers (dereference operator = *value)
        printf("*addressOfValue: %li\n", *addressOfValue);
        printf("value: %li\n", value);
        
        *addressOfValue = 75;
        printf("CHANGED value: %li\n", value);

        char *str = "Hello World!";
        printf("str: %p\n", str); // %p = print pointer address (base 16 = hexidecimal)
        printf("str: %s\n", str); // %s = print as a c-string

        char letter5 = str[4];
        printf("letter5: %c\n", letter5);    // %c = print a character   \n = newline
        
        // Pointer math (pointer arithmetic)
        letter5 = *(str + 6);
        printf("letter5: %c\n", letter5);
        
        
        cStringExercise();
        
    }
    return 0;
}


void cStringExercise(void) {
    char *message = "Hello xxxxxxxxxxxxxxxxxxxx!"; // '\0' = null terminated

    printf("message pointer: %p\n", message);
    printf("message: %s\n", message);

    unsigned long length = strlen(message);
    printf("Please allocate a string of size: %zu\n", sizeof(char) * length + 1);
    char *ptr = malloc(sizeof(char) * length + 1);    // memory allocation
    ptr = strcpy(ptr, message);

    // Set your name!

    ptr[6] = 'W';
    ptr[7] = 'i';
    ptr[8] = 'l';
    ptr[9] = 'l';
    ptr[10] = '\t';
    ptr[11] = 'C';
    ptr[12] = 'h';
    ptr[13] = 'e';
    ptr[14] = 'n';
    ptr[15] = '!';
    ptr[16] = '\0';
  
    // START HERE

    printf("message: %s\n", ptr);

    // Expected: message: Hello Paul!    // No x's!
    
    free(ptr);
}
