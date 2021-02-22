.pos 0x100
                 ld   $array, r0          # r0 = b[0] memory address
                 ld   0x0(r0), r1         # r1 = b[0] value
                 ld   $0x1, r2            # r2 = 1
                 ld   (r0, r2, 4), r3     # r3 = b[1] value
                 st   r3, 0x0(r0)         # store b[1] in b[0] memory
                 st   r1, (r0, r2, 4)     # store b[0] in b[1] memory
                 halt                     # halt
                 nop                      
.pos 0x1000
t:               .long 0xffffffff         # no t because I use a register instead
.pos 0x2000
array:           .long 0x10               # b[0] = array[0]
                 .long 0x1                # b[1] = array[1]
