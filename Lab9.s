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
        ldr r4,#0


    inicializacion:
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

        mov r0, #8 // wpi 8 --> Input
        mov r1, #0
        bl pinMode

    A:
        // Primer estado
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

    B:
        // Segundo Estado  
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
        // Tercer estado
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
        // Cuarto estado
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
        // Quinto estado
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
        //Sexto estado f
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
        



    apagado:
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



    done:
        pop {ip, pc}  
        
.data
letras:
    .byte "a","b","c","d","e","f","g","h","i","j","l","n","o","p","q","r","s","u","v","x","y","z"
generadas:
    .byte "","","","","","","","","","","","","","",""
.align 2
