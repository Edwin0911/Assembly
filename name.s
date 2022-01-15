       .data
       .globl msg2,msg3,msg4,msg5
msg1:  .asciz "*****Print Name*****\n"
msg2:  .asciz "Team 51\n"
msg3:  .asciz "Edwin\n"
msg4:  .asciz "Webber\n"
msg5:  .asciz "Hu\n"
msg6:  .asciz "*****End Print*****\n"
       .text
       .globl NAME
NAME:  stmfd  sp!,{lr}
       ldr    r0, =msg1
       bl     printf
       ldr    r0, =msg2
       bl     printf
       ldr    r0, =msg3
       bl     printf
       ldr    r0, =msg4
       bl     printf
       ldr    r0, =msg5
       bl     printf
       ldr    r0, =msg6
       bl     printf
       mov    r0, #0
       ldmfd  sp!,{lr}
       mov    pc, lr
