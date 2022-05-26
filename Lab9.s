.text
.global main
.extern printf
.extern wiringPiSetup
.extern delay
.extern digitalWrite
.extern pinMode
main:
    push 	{ip, lr}
    bl	wiringPiSetup
    bl init
    bl done
    
    init:
        ldr r4,=contador
        ldr r4,[r4]
        
        bl inicializacion    

    inicializacion:
        /*ldr	r0, #250
	    ldr	r0, [r0]
	    bl	delay*/

        

        // setting wpi 0 to 7 as ou
        mov r0, #0 // wpi 0 --> a
        mov r1, #1
        bl pinMode

        mov r0, #1 // wpi 1 --> b
        mov r1, #1
        bl pinMode

        mov r0, #2 // wpi 2 --> c
        mov r1, #1
        bl pinMode

        mov r0, #3 // wpi 3 --> d   
        mov r1, #1
        bl pinMode

        mov r0, #4 // wpi 4 --> e
        mov r1, #1
        bl pinMode

        mov r0, #5 // wpi 5 --> f
        mov r1, #1
        bl pinMode

        mov r0, #6 // wpi 6 --> g
        mov r1, #1
        bl pinMode

        mov r0, #7 // wpi 7 --> p
        mov r1, #1
        bl pinMode

        mov r0, #8 // wpi 8 --> Input
        mov r1, #0
        bl pinMode
        
        bl forLoop

    forLoop:
        

        cmp r4,#15
        bne try
        beq done

    comp:
        mov r6, #0

    try: 
        cmp r6,#21
        beq comp
        
        mov	r0, #250
	    bl	delay
	
        mov	r0, #8				// carga dirección de pin
        bl 	digitalRead				// escribe 1 en pin para activar puerto GPIO
        
        add r6,#1
        
        cmp	r0,#1
        bne siguiente
        beq	try
        

        

    siguiente:
        
        lst .req r7
        posci .req r11
        letra .req r8
        mov r12, #4
        //mul posci,r6,r12
        
        ldr lst, =letras
        add lst,lst,posci
        ldrb letra,[lst]
        
        mov r0,#0
        mov r1,#1
        bl digitalWrite

        mov r0,#500
        bl delay
        
        cmp letra,#'a'
        beq A

        cmp letra,#'b'
        beq letB

        cmp letra,#'c'
        beq C

        cmp letra,#'d'
        beq D 

        cmp letra,#'e'
        beq E 

        cmp letra,#'f'
        beq F 

        cmp letra,#'g'
        beq G 

        cmp letra,#'h'
        beq H 
        
        cmp letra,#'i'
        beq I 
        
        cmp letra,#'j'
        beq J 

        cmp letra,#'l'
        beq L 

        cmp letra,#'n'
        beq N 

        cmp letra,#'o'
        beq O 

        cmp letra,#'p'
        beq P 

        cmp letra,#'q'
        beq Q 

        cmp letra,#'r'
        beq R 

        cmp letra,#'s'
        beq S 

        cmp letra,#'u'
        beq U 

        cmp letra,#'y'
        beq Y 

        cmp letra,#'z'
        beq Z

        add r10,#1
        bl forLoop

        .unreq lst
        .unreq posci

    A:
        mov r0,#0
        mov r1,#1
        bl digitalWrite

        mov r0,#1
        mov r1,#1
        bl digitalWrite

        mov r0,#2
        mov r1,#1
        bl digitalWrite

        mov r0,#4
        mov r1,#1
        bl digitalWrite

        mov r0,#5
        mov r1,#1
        bl digitalWrite

        mov r0,#6
        mov r1,#1
        bl digitalWrite

        mov r0,#500
        bl delay

        mov r0,#0
        mov r1,#0
        bl digitalWrite

        mov r0,#1
        mov r1,#0
        bl digitalWrite

        mov r0,#2
        mov r1,#0
        bl digitalWrite

        mov r0,#3
        mov r1,#0
        bl digitalWrite

        mov r0,#4
        mov r1,#0
        bl digitalWrite

        mov r0,#5
        mov r1,#0
        bl digitalWrite

        mov r0,#6
        mov r1,#0
        bl digitalWrite

        mov r0,#200
        bl delay

    letB: 
        mov r0,#2
        mov r1,#1
        bl digitalWrite

        mov r0,#3
        mov r1,#1
        bl digitalWrite

        mov r0,#4
        mov r1,#1
        bl digitalWrite

        mov r0,#5
        mov r1,#1
        bl digitalWrite

        mov r0,#6
        mov r1,#1
        bl digitalWrite

        mov r0,#500
        bl delay

        mov r0,#0
        mov r1,#0
        bl digitalWrite

        mov r0,#1
        mov r1,#0
        bl digitalWrite

        mov r0,#2
        mov r1,#0
        bl digitalWrite

        mov r0,#3
        mov r1,#0
        bl digitalWrite

        mov r0,#4
        mov r1,#0
        bl digitalWrite

        mov r0,#5
        mov r1,#0
        bl digitalWrite

        mov r0,#6
        mov r1,#0
        bl digitalWrite

        mov r0,#200
        bl delay
    C:
        mov r0,#0
        mov r1,#1
        bl digitalWrite

        mov r0,#3
        mov r1,#1
        bl digitalWrite

        mov r0,#4
        mov r1,#1
        bl digitalWrite

        mov r0,#5
        mov r1,#1
        bl digitalWrite

        mov r0,#500
        bl delay

        mov r0,#0
        mov r1,#0
        bl digitalWrite

        mov r0,#1
        mov r1,#0
        bl digitalWrite

        mov r0,#2
        mov r1,#0
        bl digitalWrite

        mov r0,#3
        mov r1,#0
        bl digitalWrite

        mov r0,#4
        mov r1,#0
        bl digitalWrite

        mov r0,#5
        mov r1,#0
        bl digitalWrite

        mov r0,#6
        mov r1,#0
        bl digitalWrite

        mov r0,#200
        bl delay
    D:
        mov r0,#1
        mov r1,#1
        bl digitalWrite

        mov r0,#2
        mov r1,#1
        bl digitalWrite

        mov r0,#3
        mov r1,#1
        bl digitalWrite

        mov r0,#4
        mov r1,#1
        bl digitalWrite

        mov r0,#6
        mov r1,#1
        bl digitalWrite

        mov r0,#500
        bl delay

        mov r0,#0
        mov r1,#0
        bl digitalWrite

        mov r0,#1
        mov r1,#0
        bl digitalWrite

        mov r0,#2
        mov r1,#0
        bl digitalWrite

        mov r0,#3
        mov r1,#0
        bl digitalWrite

        mov r0,#4
        mov r1,#0
        bl digitalWrite

        mov r0,#5
        mov r1,#0
        bl digitalWrite

        mov r0,#6
        mov r1,#0
        bl digitalWrite

        mov r0,#200
        bl delay
    E:
        mov r0,#0
        mov r1,#1
        bl digitalWrite

        mov r0,#3
        mov r1,#1
        bl digitalWrite

        mov r0,#4
        mov r1,#1
        bl digitalWrite

        mov r0,#5
        mov r1,#1
        bl digitalWrite

        mov r0,#6
        mov r1,#1
        bl digitalWrite

        mov r0,#500
        bl delay

        mov r0,#0
        mov r1,#0
        bl digitalWrite

        mov r0,#1
        mov r1,#0
        bl digitalWrite

        mov r0,#2
        mov r1,#0
        bl digitalWrite

        mov r0,#3
        mov r1,#0
        bl digitalWrite

        mov r0,#4
        mov r1,#0
        bl digitalWrite

        mov r0,#5
        mov r1,#0
        bl digitalWrite

        mov r0,#6
        mov r1,#0
        bl digitalWrite

        mov r0,#200
        bl delay

    F:
        mov r0,#0
        mov r1,#1
        bl digitalWrite

        mov r0,#4
        mov r1,#1
        bl digitalWrite

        mov r0,#5
        mov r1,#1
        bl digitalWrite

        mov r0,#6
        mov r1,#1
        bl digitalWrite

        mov r0,#500
        bl delay

        mov r0,#0
        mov r1,#0
        bl digitalWrite

        mov r0,#1
        mov r1,#0
        bl digitalWrite

        mov r0,#2
        mov r1,#0
        bl digitalWrite

        mov r0,#3
        mov r1,#0
        bl digitalWrite

        mov r0,#4
        mov r1,#0
        bl digitalWrite

        mov r0,#5
        mov r1,#0
        bl digitalWrite

        mov r0,#6
        mov r1,#0
        bl digitalWrite

        mov r0,#200
        bl delay
        
   G:
        mov r0,#0
        mov r1,#1
        bl digitalWrite


        mov r0,#2
        mov r1,#1
        bl digitalWrite

        mov r0,#3
        mov r1,#1
        bl digitalWrite

        mov r0,#4
        mov r1,#1
        bl digitalWrite

        mov r0,#5
        mov r1,#1
        bl digitalWrite

        mov r0,#6
        mov r1,#1
        bl digitalWrite

        mov r0,#500
        bl delay

        mov r0,#0
        mov r1,#0
        bl digitalWrite

        mov r0,#1
        mov r1,#0
        bl digitalWrite

        mov r0,#2
        mov r1,#0
        bl digitalWrite

        mov r0,#3
        mov r1,#0
        bl digitalWrite

        mov r0,#4
        mov r1,#0
        bl digitalWrite

        mov r0,#5
        mov r1,#0
        bl digitalWrite

        mov r0,#6
        mov r1,#0
        bl digitalWrite

        mov r0,#200
        bl delay

   H:
        mov r0,#2
        mov r1,#1
        bl digitalWrite

        mov r0,#3
        mov r1,#1
        bl digitalWrite

        mov r0,#4
        mov r1,#1
        bl digitalWrite

        mov r0,#5
        mov r1,#1
        bl digitalWrite

        mov r0,#6
        mov r1,#1
        bl digitalWrite

        mov r0,#500
        bl delay

        mov r0,#0
        mov r1,#0
        bl digitalWrite

        mov r0,#1
        mov r1,#0
        bl digitalWrite

        mov r0,#2
        mov r1,#0
        bl digitalWrite

        mov r0,#3
        mov r1,#0
        bl digitalWrite

        mov r0,#4
        mov r1,#0
        bl digitalWrite

        mov r0,#5
        mov r1,#0
        bl digitalWrite

        mov r0,#6
        mov r1,#0
        bl digitalWrite

        mov r0,#200
        bl delay

   I:
        mov r0,#1
        mov r1,#1
        bl digitalWrite

        mov r0,#2
        mov r1,#1
        bl digitalWrite

        mov r0,#500
        bl delay

        mov r0,#0
        mov r1,#0
        bl digitalWrite

        mov r0,#1
        mov r1,#0
        bl digitalWrite

        mov r0,#2
        mov r1,#0
        bl digitalWrite

        mov r0,#3
        mov r1,#0
        bl digitalWrite

        mov r0,#4
        mov r1,#0
        bl digitalWrite

        mov r0,#5
        mov r1,#0
        bl digitalWrite

        mov r0,#6
        mov r1,#0
        bl digitalWrite

        mov r0,#200
        bl delay

   J:
        mov r0,#0
        mov r1,#1
        bl digitalWrite

        mov r0,#1
        mov r1,#1
        bl digitalWrite

        mov r0,#2
        mov r1,#1
        bl digitalWrite

        mov r0,#3
        mov r1,#1
        bl digitalWrite

        mov r0,#500
        bl delay

        mov r0,#0
        mov r1,#0
        bl digitalWrite

        mov r0,#1
        mov r1,#0
        bl digitalWrite

        mov r0,#2
        mov r1,#0
        bl digitalWrite

        mov r0,#3
        mov r1,#0
        bl digitalWrite

        mov r0,#4
        mov r1,#0
        bl digitalWrite

        mov r0,#5
        mov r1,#0
        bl digitalWrite

        mov r0,#6
        mov r1,#0
        bl digitalWrite

        mov r0,#200
        bl delay

   L:
        mov r0,#3
        mov r1,#1
        bl digitalWrite

        mov r0,#4
        mov r1,#1
        bl digitalWrite

        mov r0,#5
        mov r1,#1
        bl digitalWrite

        mov r0,#500
        bl delay

        mov r0,#0
        mov r1,#0
        bl digitalWrite

        mov r0,#1
        mov r1,#0
        bl digitalWrite

        mov r0,#2
        mov r1,#0
        bl digitalWrite

        mov r0,#3
        mov r1,#0
        bl digitalWrite

        mov r0,#4
        mov r1,#0
        bl digitalWrite

        mov r0,#5
        mov r1,#0
        bl digitalWrite

        mov r0,#6
        mov r1,#0
        bl digitalWrite

        mov r0,#200
        bl delay



   N:
        mov r0,#0
        mov r1,#1
        bl digitalWrite

        mov r0,#1
        mov r1,#1
        bl digitalWrite

        mov r0,#2
        mov r1,#1
        bl digitalWrite

        mov r0,#4
        mov r1,#1
        bl digitalWrite

        mov r0,#5
        mov r1,#1
        bl digitalWrite

        mov r0,#500
        bl delay

        mov r0,#0
        mov r1,#0
        bl digitalWrite

        mov r0,#1
        mov r1,#0
        bl digitalWrite

        mov r0,#2
        mov r1,#0
        bl digitalWrite

        mov r0,#3
        mov r1,#0
        bl digitalWrite

        mov r0,#4
        mov r1,#0
        bl digitalWrite

        mov r0,#5
        mov r1,#0
        bl digitalWrite

        mov r0,#6
        mov r1,#0
        bl digitalWrite

        mov r0,#200
        bl delay

   O:
        mov r0,#0
        mov r1,#1
        bl digitalWrite

        mov r0,#1
        mov r1,#1
        bl digitalWrite

        mov r0,#2
        mov r1,#1
        bl digitalWrite

        mov r0,#3
        mov r1,#1
        bl digitalWrite

        mov r0,#4
        mov r1,#1
        bl digitalWrite

        mov r0,#5
        mov r1,#1
        bl digitalWrite

        mov r0,#500
        bl delay

        mov r0,#0
        mov r1,#0
        bl digitalWrite

        mov r0,#1
        mov r1,#0
        bl digitalWrite

        mov r0,#2
        mov r1,#0
        bl digitalWrite

        mov r0,#3
        mov r1,#0
        bl digitalWrite

        mov r0,#4
        mov r1,#0
        bl digitalWrite

        mov r0,#5
        mov r1,#0
        bl digitalWrite

        mov r0,#6
        mov r1,#0
        bl digitalWrite

        mov r0,#200
        bl delay

    P:
        mov r0,#0
        mov r1,#1
        bl digitalWrite

        mov r0,#1
        mov r1,#1
        bl digitalWrite

        mov r0,#4
        mov r1,#1
        bl digitalWrite

        mov r0,#5
        mov r1,#1
        bl digitalWrite

        mov r0,#6
        mov r1,#1
        bl digitalWrite

        mov r0,#500
        bl delay

        mov r0,#0
        mov r1,#0
        bl digitalWrite

        mov r0,#1
        mov r1,#0
        bl digitalWrite

        mov r0,#2
        mov r1,#0
        bl digitalWrite

        mov r0,#3
        mov r1,#0
        bl digitalWrite

        mov r0,#4
        mov r1,#0
        bl digitalWrite

        mov r0,#5
        mov r1,#0
        bl digitalWrite

        mov r0,#6
        mov r1,#0
        bl digitalWrite

        mov r0,#7
        mov r1,#0
        bl digitalWrite

        mov r0,#200
        bl delay

    Q:
        mov r0,#0
        mov r1,#1
        bl digitalWrite

        mov r0,#1
        mov r1,#1
        bl digitalWrite

        mov r0,#2
        mov r1,#1
        bl digitalWrite

        mov r0,#5
        mov r1,#1
        bl digitalWrite

        mov r0,#6
        mov r1,#1
        bl digitalWrite

        mov r0,#500
        bl delay

        mov r0,#0
        mov r1,#0
        bl digitalWrite

        mov r0,#1
        mov r1,#0
        bl digitalWrite

        mov r0,#2
        mov r1,#0
        bl digitalWrite

        mov r0,#3
        mov r1,#0
        bl digitalWrite

        mov r0,#4
        mov r1,#0
        bl digitalWrite

        mov r0,#5
        mov r1,#0
        bl digitalWrite

        mov r0,#6
        mov r1,#0
        bl digitalWrite

        mov r0,#7
        mov r1,#0
        bl digitalWrite

        mov r0,#200
        bl delay

    R:
        mov r0,#0
        mov r1,#1
        bl digitalWrite

        mov r0,#1
        mov r1,#1
        bl digitalWrite

        mov r0,#2
        mov r1,#1
        bl digitalWrite

        mov r0,#4
        mov r1,#1
        bl digitalWrite

        mov r0,#5
        mov r1,#1
        bl digitalWrite

        mov r0,#6
        mov r1,#1
        bl digitalWrite

        mov r0,#7
        mov r1,#1
        bl digitalWrite

        mov r0,#500
        bl delay

        mov r0,#0
        mov r1,#0
        bl digitalWrite

        mov r0,#1
        mov r1,#0
        bl digitalWrite

        mov r0,#2
        mov r1,#0
        bl digitalWrite

        mov r0,#3
        mov r1,#0
        bl digitalWrite

        mov r0,#4
        mov r1,#0
        bl digitalWrite

        mov r0,#5
        mov r1,#0
        bl digitalWrite

        mov r0,#6
        mov r1,#0
        bl digitalWrite

        mov r0,#7
        mov r1,#0
        bl digitalWrite

        mov r0,#200
        bl delay 

    S:
        mov r0,#0
        mov r1,#1
        bl digitalWrite

        mov r0,#2
        mov r1,#1
        bl digitalWrite

        mov r0,#3
        mov r1,#1
        bl digitalWrite

        mov r0,#5
        mov r1,#1
        bl digitalWrite

        mov r0,#6
        mov r1,#1
        bl digitalWrite

        mov r0,#500
        bl delay

        mov r0,#0
        mov r1,#0
        bl digitalWrite

        mov r0,#1
        mov r1,#0
        bl digitalWrite

        mov r0,#2
        mov r1,#0
        bl digitalWrite

        mov r0,#3
        mov r1,#0
        bl digitalWrite

        mov r0,#4
        mov r1,#0
        bl digitalWrite

        mov r0,#5
        mov r1,#0
        bl digitalWrite

        mov r0,#6
        mov r1,#0
        bl digitalWrite

        mov r0,#7
        mov r1,#0
        bl digitalWrite

        mov r0,#200
        bl delay

    U:
        mov r0,#1
        mov r1,#1
        bl digitalWrite

        mov r0,#2
        mov r1,#1
        bl digitalWrite

        mov r0,#3
        mov r1,#1
        bl digitalWrite

        mov r0,#4
        mov r1,#1
        bl digitalWrite

        mov r0,#5
        mov r1,#1
        bl digitalWrite

        mov r0,#500
        bl delay

        mov r0,#0
        mov r1,#0
        bl digitalWrite

        mov r0,#1
        mov r1,#0
        bl digitalWrite

        mov r0,#2
        mov r1,#0
        bl digitalWrite

        mov r0,#3
        mov r1,#0
        bl digitalWrite

        mov r0,#4
        mov r1,#0
        bl digitalWrite

        mov r0,#5
        mov r1,#0
        bl digitalWrite

        mov r0,#6
        mov r1,#0
        bl digitalWrite

        mov r0,#7
        mov r1,#0
        bl digitalWrite

        mov r0,#200
        bl delay

    V:
        mov r0,#1
        mov r1,#1
        bl digitalWrite

        mov r0,#2
        mov r1,#1
        bl digitalWrite

        mov r0,#3
        mov r1,#1
        bl digitalWrite

        mov r0,#4
        mov r1,#1
        bl digitalWrite

        mov r0,#5
        mov r1,#1
        bl digitalWrite

        mov r0,#7
        mov r1,#1
        bl digitalWrite

        mov r0,#500
        bl delay

        mov r0,#0
        mov r1,#0
        bl digitalWrite

        mov r0,#1
        mov r1,#0
        bl digitalWrite

        mov r0,#2
        mov r1,#0
        bl digitalWrite

        mov r0,#3
        mov r1,#0
        bl digitalWrite

        mov r0,#4
        mov r1,#0
        bl digitalWrite

        mov r0,#5
        mov r1,#0
        bl digitalWrite

        mov r0,#6
        mov r1,#0
        bl digitalWrite

        mov r0,#7
        mov r1,#0
        bl digitalWrite

        mov r0,#200
        bl delay

    Y:
        mov r0,#1
        mov r1,#1
        bl digitalWrite

        mov r0,#2
        mov r1,#1
        bl digitalWrite

        mov r0,#3
        mov r1,#1
        bl digitalWrite

        mov r0,#5
        mov r1,#1
        bl digitalWrite

        mov r0,#6
        mov r1,#1
        bl digitalWrite

        mov r0,#500
        bl delay

        mov r0,#0
        mov r1,#0
        bl digitalWrite

        mov r0,#1
        mov r1,#0
        bl digitalWrite

        mov r0,#2
        mov r1,#0
        bl digitalWrite

        mov r0,#3
        mov r1,#0
        bl digitalWrite

        mov r0,#4
        mov r1,#0
        bl digitalWrite

        mov r0,#5
        mov r1,#0
        bl digitalWrite

        mov r0,#6
        mov r1,#0
        bl digitalWrite

        mov r0,#7
        mov r1,#0
        bl digitalWrite

        mov r0,#200
        bl delay

    Z:
        mov r0,#0
        mov r1,#1
        bl digitalWrite
        
        mov r0,#1
        mov r1,#1
        bl digitalWrite

        mov r0,#3
        mov r1,#1
        bl digitalWrite

        mov r0,#4
        mov r1,#1
        bl digitalWrite

        mov r0,#6
        mov r1,#1
        bl digitalWrite

        mov r0,#500
        bl delay

        mov r0,#0
        mov r1,#0
        bl digitalWrite

        mov r0,#1
        mov r1,#0
        bl digitalWrite

        mov r0,#2
        mov r1,#0
        bl digitalWrite

        mov r0,#3
        mov r1,#0
        bl digitalWrite

        mov r0,#4
        mov r1,#0
        bl digitalWrite

        mov r0,#5
        mov r1,#0
        bl digitalWrite

        mov r0,#6
        mov r1,#0
        bl digitalWrite

        mov r0,#7
        mov r1,#0
        bl digitalWrite

        mov r0,#200
        bl delay

    done:
        pop {ip, pc}  
        
.data
.balign 4
letras:
    .byte 'a','b','c','d','e','f','g','h','i','j','l','n','o','p','q','r','s','u','v','x','y','z'
contador: 
    .word 0
.align 2
