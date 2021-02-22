.pos 0x100
                 ld   $d, r0              # r0 = d address
                 ld   $x, r1              # r1 = x address
                 ld   $y, r2              # r2 = y address
                 ld   $i, r3              # r3 = i address
                 ld   0x0(r3), r4         # r4 = i value
                 ld   (r0, r4, 4), r5     # r5 = data[i]
                 inc  r4                  # r4 = i + 1
                 ld   (r0, r4, 4), r6     # r6 = data[i+1]
                 add  r5, r6              # r6 = data[i] + data[i+1]
                 st   r6, 0x0(r2)         # y = r6
                 ld   $0xff, r7           # r7 = 0xff
                 and  r7, r6              # r6 = r6 & r7
                 st   r6, 0x0(r1)         # x = r6
                 halt                     # halt
.pos 0x1000
x:               .long 0x0                # x
y:               .long 0x0                # y
i:               .long 0x0                # i
.pos 0x2000
d:               .long 0x1                # data[0]
                 .long 0x2                # data[1]
                 .long 0x3                # data[2]
                 .long 0x4                # data[3]
