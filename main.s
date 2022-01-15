    .data
str1: .asciz"Function1:NAME\n"
str2: .asciz"\nFunction2:ID\n"
str3: .asciz"Main Function:\n"
pALL: .asciz"****print all\n%s \n %d %s \n %d %s \n %d %s \nSummation ID:%d\n***END Print"
    .text
    .globl main
main:
    stmfd sp!,{lr}

    ldr r0,=str1
    bl printf
    bl ID
    ldr r0,=str2
    bl printf
    bl NAME
    ldr r0,=str3
    bl printf

    ldr r1,=msg2
    ldr r2,=n1
    ldr r2,[r2]
    ldr r3,=msg3
    ldr r0,=sum1
    ldr r0,[r0]
    str r0,[sp,#-4]!
    ldr r0,=msg5
    str r0,[sp,#-4]!
    ldr r0,=n3
    ldr r0,[r0]
    str r0,[sp,#-4]!
    ldr r0,=msg4
    str r0,[sp,#-4]!
    ldr r0,=n2
    ldr r0,[r0]
    str r0,[sp,#-4]!
    ldr r0,=pALL
    bl printf
    add sp,sp,#20


    mov r0,#0
    ldmfd sp!,{lr}
    mov pc,lr
