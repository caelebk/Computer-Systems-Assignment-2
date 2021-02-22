.pos 0x100
                 ld   $b, r0              # r0 = b address
                 ld   0x0(r0), r1         # r1 = b value (temp)
                 ld   0x0(r0), r2         # r2 = b value
                 inc  r2                  # r2 = r2 + 1
                 inca r2                  # r2 = r2 + 4
                 shr  $1, r2              # r2 = r2 /2
                 and  r1, r2              # r2 = r1 (b value) & r2
                 shl  $2, r2              # r2 = r2 << 2
                 ld   $a, r3              # r3 = a address
                 st   r2, 0x0(r3)         # a = r3
                 halt                     # halt
.pos 0x1000
b:               .long 0x7                # b
a:               .long 0x18               # a
.pos 0x2000
arr:             .long 0xffffffff         # b[0]
                 .long 0xffffffff         # b[1]
                 .long 0xffffffff         # b[2]
                 .long 0xffffffff         # b[3]
                 .long 0xffffffff         # b[4]
                 .long 0xffffffff         # b[5]
                 .long 0xffffffff         # b[6]
                 .long 0xffffffff         # b[7]
                 .long 0xffffffff         # b[8]
                 .long 0xffffffff         # b[9]
