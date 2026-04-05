.global somma

.set a, -4
.set b, -8

somma:
    push %rbp
    movq %rsp, %rbp

    sub $8, %rsp
    movl %edi, a(%rbp)
    movl %esi, b(%rbp) 

    movl a(%rbp), %eax
    addl b(%rbp), %eax

    leave
    ret
