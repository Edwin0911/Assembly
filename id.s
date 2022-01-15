     .data
str0:.asciz "*****Input ID*****\n"
str1:.asciz "** Please Enter Member 1 ID:**\n"
str2:.asciz "** Please Enter Member 2 ID:**\n"
str3:.asciz "** Please Enter Member 3 ID:**\n"
line:.asciz "\n"
id:.asciz "%d"
p:.asciz "%s"
command:.asciz "** Please Enter Command **\n"
str4:.asciz "*****Print Team Member ID and ID Summation*****\n"
sum:.asciz "ID Summation = "
end:.asciz "\n*****End Print*****"
    .globl n1,n2,n3,sum1
n1:   .word 0
n2:   .word 0
n3:   .word 0
np:   .word 0
sum1:  .word 0
     .text
     .globl ID
ID:
     stmfd sp!,{lr}
     ldr r0, =str1
     bl printf
     ldr r0, =id
     ldr r1, =n1
     bl scanf
     ldr r0, =str2
     bl printf
     ldr r0, =id
     ldr r1, =n2
     bl scanf
     ldr r0, =str3
     bl printf
     ldr r0, =id
     ldr r1, =n3
     bl scanf
     ldr r0, =command
     bl printf
     ldr r0, =p
     ldr r1, =np
     bl scanf
     ldr r1, =np
     ldr r1,[r1]
     cmp r1, #112



     ldreq r0, =str4
     bleq printf

     ldreq r0, =id
     ldreq r1, =n1
     ldreq r1,[r1]
     bleq printf
     ldreq r0, =line
     bleq printf
     ldreq r0, =id
     ldreq r1, =n2
     ldreq r1,[r1]
     ldreq r0, =id
     bleq printf
     ldreq r0, =line
     bleq printf
     ldreq r0, =id
     ldreq r1, =n3
     ldreq r1,[r1]
     bleq printf
     ldreq r0, =line
     bleq printf

     ldreq r0, =sum
     bleq printf
     ldreq r5, =n1
     ldreq r6, =n2
     ldreq r7, =n3
     ldreq r5,[r5]
     ldreq r6,[r6]
     ldreq r7,[r7]
     addeq r1, r5, r6
     addeq r1, r1, r7
     ldr   r4, =sum1
     str   r1, [r4]
     ldreq r0, =id
     bleq printf


     ldreq r0, =end
     bleq printf


     ldmfd sp!,{lr}
     mov pc,lr
