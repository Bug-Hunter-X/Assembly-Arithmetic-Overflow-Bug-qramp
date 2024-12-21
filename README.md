# Assembly Arithmetic Overflow Bug

This repository demonstrates a common error in assembly programming: arithmetic overflow.  The `bug.asm` file contains code that attempts to add two 16-bit values using the `add` instruction. However, it fails to handle cases where the sum exceeds 16 bits, leading to incorrect results. The `bugSolution.asm` file provides a corrected version that handles potential overflows. 

## Bug Description

The original code does not check for potential overflow conditions. If the sum of the values in registers AX and BX exceeds FFFFh (65535 in decimal), the result will wrap around, resulting in an incorrect value. 

## Solution

The solution incorporates overflow checks to prevent incorrect results.  While the specific solution depends on the desired behavior when an overflow occurs, a common approach is to set a flag or handle the exception. This example shows how to handle this using `jo` (jump on overflow)