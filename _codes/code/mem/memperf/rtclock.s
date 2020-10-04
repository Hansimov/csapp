        .ugen   
        .verstamp       3 11
        .text   
        .align  4
        .file   2 "rtclock.c"
        .globl  rtclock
        .ent    rtclock 2
rtclock:
        .option O2
        ldgp    $gp, 0($27)
        .frame  $sp, 0, $26, 0
        rpcc    $0
        sll     $0, 32, $1
        addq    $0, $1, $0
        srl     $0, 32, $0
        .livereg        0xFC7F0002,0x3FC00000
        ret     $31, ($26), 1
        .end    rtclock

        .globl  wtclock
        .ent    wtclock 2
wtclock:
        .option O2
        ldgp    $gp, 0($27)
        .frame  $sp, 0, $26, 0
        rpcc    $0
        sll     $0, 32, $1
        srl     $1, 32, $0
        .livereg        0xFC7F0002,0x3FC00000
        ret     $31, ($26), 1
        .end    wtclock

