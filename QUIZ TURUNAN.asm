.MODEL SMALL
.STACK 100H

.DATA 
   
MSG0 DB '.......SELAMAT DATANG DI QUIZ TURUNAN ALJABAR & NON-ALJABAR.......$'
MSG1 DB 'Peraturan : $'
MSG2 DB '1. ketik jawaban dengan huruf kapital, jika tidak maka jawaban dianggap salah$'
MSG3 DB '2. Jika jawaban benar mendapat 1 poin.$'
MSG4 DB '3. jika jawaban salah, maka poin -1 dari total poin yang diperoleh.$'
MSG5 DB 'klik enter untuk memulai quiz : $'
MSG6 DB 'Bagus :)....$'
MSG7 DB 'Jawaban salah :(....$'
MSG8 DB 'Anda telah menyelesaikan  quiz.$'
MSG9 DB 'Total poin : $'
MSG10 DB 'ketik 1 untuk main lagi, ketik 0 untuk keluar.$' 
MSG11 DB ' ***terima kasih ^v^.! ***$' 
MSG12 DB 'salah, hasilnya 24$'
MSG13 DB 'salah, hasilnya cos(x)$'
MSG14 DB 'salah, hasilnya 2$'
MSG15 DB 'salah, hasilnya 6x+15$'
MSG16 DB 'salah, hasilnya sec^2(x)$'
MSG17 DB 'salah, hasilnya 2x+1$'
MSG18 DB 'salah, hasilnya 125$'
MSG19 DB 'salah, hasilnya e^x$'
MSG20 DB 'salah, hasilnya 3e^3x$'
MSG21 DB 'salah, hasilnya 1/x$'

                 
S1 DB '1. dy/dx dari y=24x+18adalah...$'
JWB1 DB '   A) 24    B) 18    C) 22$'
S2 DB '2. dy/dx dari y=sin(x) adalah...$'
JWB2 DB '   A) csc(x)    B)cos(x)     C) tan(x)$'
S3 DB '3. dy/dx dari y=2x adalah...?$'
JWB3 DB '   A) 3    B) 9    c)2 $'
S4 DB '4. jika y=3x^2+15x+7, maka dy/dx adalah...$'
JWB4 DB '   A) 6x+7    B) 6x+15    C) 3x+7$'
S5 DB '5. jika y=tan(x), maka dy/dx adalah...$'
JWB5 DB '   A) sec^2(x)    B) sin(x)    C) cos(x)2$'
S6 DB '6. jika y=x^2+x, dy/dx=...$'
JWB6 DB '   A) x-1    B) x    C) 2x+1$'
S7 DB '7. jika y=125x, dy/dx=$'
JWB7 DB '   A) 125x    B) 125    C) x$'
S8 DB '8. jika y=e^x, maka dy/dx adalah...$'
JWB8 DB '   A) x    B) e    C) e^x$'
S9 DB '9. dy/dx dari y=e^3x adalah...$'
JWB9 DB '   A) 3e^3x    B) e^3x    C) 3e$'
S10 DB '10. dy/dx dari y=ln(x)$'
JWB10 DB '   A) 1/x    B) 1    C) ln$'


.CODE
MAIN PROC 
    
    MOV AX,@DATA
    MOV DS,AX
              
    LEA DX,MSG0
    MOV AH,9
    INT 21H
            
    CALL NL
    CALL NL
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    CALL NL
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    CALL NL
    
    LEA DX,MSG3
    MOV AH,9
    INT 21H
    
    CALL NL
    
    LEA DX,MSG4
    MOV AH,9
    INT 21H
    
    START:
    MOV BL, 0  
    CALL NL
    
    LEA DX,MSG5
    MOV AH,9
    INT 21H
    
    
    MOV AH, 1
    INT 21H
    
    CMP AL, 0DH
    JE BENAR1
    JNE START
    
    BENAR1:
    CALL NL
    
    LEA DX,S1
    MOV AH,9
    INT 21H
    
    CALL NL
    
    LEA DX,JWB1
    MOV AH,9
    INT 21H
    
    CALL NL
    
    MOV AH, 1
    INT 21H
    CMP AL, 'A'
    JE BENAR2
    JNE SALAH2
    
    BENAR2:
    CALL NL
    
    LEA DX,MSG6
    MOV AH,9
    INT 21H
    
    INC BL
    CALL NL
    
    CALL QN2 
    
    CALL INPUT
    
    CMP AL, 'B'
    JE BENAR3
    JNE SALAH3
    
    SALAH2:
    CALL NL
    
    LEA DX,MSG12
    MOV AH,9
    INT 21H
    
    
    CALL NL
    
    CALL QN2 
    CALL INPUT
    
    CMP AL, 'B'
    JE BENAR3 
    JNE SALAH3
    
    
    BENAR3:
    CALL NL
    
    LEA DX,MSG6
    MOV AH,9
    INT 21H
    
    INC BL
    CALL NL    

    
    CALL QN3 
    CALL INPUT
    
    CMP AL, 'C'
    JE BENAR4
    JNE SALAH4
    
    SALAH3:
    CALL NL
    
    LEA DX,MSG13
    MOV AH,9
    INT 21H
    
    
    CALL NL
    
    CALL QN3
    CALL INPUT
    
    CMP AL, 'C'
    JE BENAR4 
    JNE SALAH4
    
    BENAR4:
    CALL NL
    
    LEA DX,MSG6
    MOV AH,9
    INT 21H
    
    INC BL
    CALL NL
    
    CALL QN4 
    CALL INPUT
    
    CMP AL, 'B'
    JE BENAR5
    JNE SALAH5
    
    SALAH4:
    CALL NL
    
    LEA DX,MSG14
    MOV AH,9
    INT 21H
    
    
    CALL NL
    
    CALL QN4 
    CALL INPUT
    
    CMP AL, 'B'
    JE BENAR5 
    JNE SALAH5
    
    BENAR5:
    CALL NL
    
    LEA DX,MSG6
    MOV AH,9
    INT 21H
    
    INC BL
    CALL NL
    
    CALL QN5 
    
    CALL INPUT
    
    CMP AL, 'A'
    JE BENAR6
    JNE SALAH6
    
    SALAH5:
    CALL NL
    
    LEA DX,MSG15
    MOV AH,9
    INT 21H
    
    
    CALL NL
    
    CALL QN5 
    CALL INPUT
    
    CMP AL, 'A'
    JE BENAR6 
    JNE SALAH6
    
    BENAR6:
    CALL NL
    
    LEA DX,MSG6
    MOV AH,9
    INT 21H
    
    INC BL
    CALL NL
    
    CALL QN6 
    
    CALL INPUT
    
    CMP AL, 'C'
    JE BENAR7
    JNE SALAH7
    
    SALAH6:
    CALL NL
    
    LEA DX,MSG16
    MOV AH,9
    INT 21H
    
   
    CALL NL
    
    CALL QN6 
    CALL INPUT
    
    CMP AL, 'C'
    JE BENAR7 
    JNE SALAH7
    
    BENAR7:
    CALL NL
    
    LEA DX,MSG6
    MOV AH,9
    INT 21H
    
    INC BL
    CALL NL
    
    CALL QN7
    CALL INPUT
    
    CMP AL, 'B'
    JE BENAR8
    JNE SALAH8
    
    SALAH7:
    CALL NL
    
    LEA DX,MSG17
    MOV AH,9
    INT 21H
    
    
    CALL NL
    
    CALL QN7 
    CALL INPUT
    
    CMP AL, 'B'
    JE BENAR8 
    JNE SALAH8
    
    BENAR8:
    CALL NL
    
    LEA DX,MSG6
    MOV AH,9
    INT 21H
    
    INC BL
    CALL NL
    
    CALL QN8 
    CALL INPUT
    
    CMP AL, 'C'
    JE BENAR9
    JNE SALAH9
    
    SALAH8:
    CALL NL
    
    LEA DX,MSG18
    MOV AH,9
    INT 21H
    
    
    CALL NL
    
    CALL QN8 
    CALL INPUT
    
    CMP AL, 'C'
    JE BENAR9 
    JNE SALAH9
    
    BENAR9:
    CALL NL
    
    LEA DX,MSG6
    MOV AH,9
    INT 21H
    
    INC BL
    CALL NL
    
    CALL QN9 
    CALL INPUT
    
    CMP AL, 'A'
    JE BENAR10
    JNE SALAH10
    
    SALAH9:
    CALL NL
    
    LEA DX,MSG19
    MOV AH,9
    INT 21H
    
    
    CALL NL
    
    CALL QN9 
    CALL INPUT
    
    CMP AL, 'A'
    JE BENAR10 
    JNE SALAH10
    
    BENAR10:
    CALL NL
    
    LEA DX,MSG6
    MOV AH,9
    INT 21H
    
    INC BL
    CALL NL
    
    CALL QN10 
    CALL INPUT
    
    CMP AL, 'A'
    JE EXIT
    JNE EXITW
    
    SALAH10:
    CALL NL
    
    LEA DX,MSG20
    MOV AH,9
    INT 21H
    
    
    CALL NL
    
    CALL QN10 
    CALL INPUT
    
    CMP AL, 'A'
    JE EXIT 
    JNE EXITW
    
    EXIT:
    CALL NL 
    
    LEA DX,MSG6
    MOV AH,9
    INT 21H
    
    INC BL
    CALL NL
    CALL NL
    
    LEA DX,MSG8
    MOV AH,9
    INT 21H
    
    CALL NL
    
    LEA DX,MSG9
    MOV AH,9
    INT 21H
    
    ADD BL, 48
    
    CMP BL,57
    JG GEDE
    MOV AH, 2
    MOV DL, BL
    INT 21H
    JMP EXIT1
    
    EXITW:
    CALL NL
    
    LEA DX,MSG7
    MOV AH,9
    INT 21H
    
    
    CALL NL
    CALL NL  

    
    LEA DX,MSG8
    MOV AH,9
    INT 21H 
    
    CALL NL
    CALL NL
    
    LEA DX,MSG9
    MOV AH,9
    INT 21H
    
    ADD BL,48
    MOV AH,2
    MOV DL, BL
    INT 21H
    
    JMP EXIT1
    
    GEDE:
    MOV AH,2
    MOV DL,"1"
    INT 21H  
    MOV DL,"0"
    INT 21H
    JMP EXIT1
    
    NL: 
    MOV AH,2
    MOV DL, 0AH
    INT 21H   
    MOV DL, 0DH
    INT 21H
    RET 
    
    QN2:
    LEA DX,S2
    MOV AH,9
    INT 21H
    
    CALL NL
    
    LEA DX,JWB2
    MOV AH,9
    INT 21H
    RET 
    
    QN3:
    LEA DX,S3
    MOV AH,9
    INT 21H
    
    CALL NL
    
    LEA DX,JWB3
    MOV AH,9
    INT 21H
    RET
    
    QN4:
    LEA DX,S4
    MOV AH,9
    INT 21H
    
    CALL NL
    
    LEA DX,JWB4
    MOV AH,9
    INT 21H
    RET
    
    QN5:
    LEA DX,S5
    MOV AH,9
    INT 21H
    
    CALL NL
    
    LEA DX,JWB5
    MOV AH,9
    INT 21H
    RET 
    
    QN6:
    LEA DX,S6
    MOV AH,9
    INT 21H
    
    CALL NL
    
    LEA DX,JWB6
    MOV AH,9
    INT 21H
    RET
    
    QN7:
    LEA DX,S7
    MOV AH,9
    INT 21H
    
    CALL NL
    
    LEA DX,JWB7
    MOV AH,9
    INT 21H
    RET 
    
    QN8:
    LEA DX,S8
    MOV AH,9
    INT 21H
    
    CALL NL
    
    LEA DX,JWB8
    MOV AH,9
    INT 21H
    RET  
    
    QN9:
    LEA DX,S9
    MOV AH,9
    INT 21H
    
    CALL NL
    
    LEA DX,JWB9
    MOV AH,9
    INT 21H
    RET 
    
    QN10:
    LEA DX,S10
    MOV AH,9
    INT 21H
    
    CALL NL
    
    LEA DX,JWB10
    MOV AH,9
    INT 21H
    RET  
    
    INPUT:
    CALL NL
    
    MOV AH, 1
    INT 21H
    RET
    
    
    EXIT1: 
    CALL NL 
    CALL NL
    
    LEA DX,MSG10
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    
    CMP AL,'1'
    JE START 
    
    CALL NL
    CALL NL
    
    LEA DX,MSG11
    MOV AH,9
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    
    MAIN ENDP
END MAIN







