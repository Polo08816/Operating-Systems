; Listing generated by Microsoft (R) Optimizing Compiler Version 17.00.61219.0 

	TITLE	C:\Users\Kevin Kuo\git\Operating-Systems\Homeworks\Homework2\Homework2Windows\Homework2Windows\hello.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

PUBLIC	_main
PUBLIC	??_C@_0L@ODNFPCJH@output?4txt?$AA@		; `string'
PUBLIC	??_C@_0M@KPLPPDAC@Hello?5World?$AA@		; `string'
PUBLIC	??_C@_01KDCPPGHE@r?$AA@				; `string'
PUBLIC	??_C@_09KMIIOAHK@input?4txt?$AA@		; `string'
PUBLIC	??_C@_0CA@PIKJCKAP@Can?8t?5open?5input?5file?5in?4list?$CB?6?$AA@ ; `string'
PUBLIC	??_C@_01NOFIACDB@w?$AA@				; `string'
PUBLIC	??_C@_0BM@FFNLJCMO@Can?8t?5open?5output?5file?5?$CFs?$CB?6?$AA@ ; `string'
EXTRN	__imp____iob_func:PROC
EXTRN	__imp__fclose:PROC
EXTRN	__imp__fgetc:PROC
EXTRN	__imp__fopen:PROC
EXTRN	__imp__fprintf:PROC
EXTRN	__imp__printf:PROC
EXTRN	__imp__putc:PROC
EXTRN	__imp__exit:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_InitBase:PROC
EXTRN	__RTC_Shutdown:PROC
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
rtc$IMZ	ENDS
;	COMDAT ??_C@_0BM@FFNLJCMO@Can?8t?5open?5output?5file?5?$CFs?$CB?6?$AA@
CONST	SEGMENT
??_C@_0BM@FFNLJCMO@Can?8t?5open?5output?5file?5?$CFs?$CB?6?$AA@ DB 'Can'''
	DB	't open output file %s!', 0aH, 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_01NOFIACDB@w?$AA@
CONST	SEGMENT
??_C@_01NOFIACDB@w?$AA@ DB 'w', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_0CA@PIKJCKAP@Can?8t?5open?5input?5file?5in?4list?$CB?6?$AA@
CONST	SEGMENT
??_C@_0CA@PIKJCKAP@Can?8t?5open?5input?5file?5in?4list?$CB?6?$AA@ DB 'Can'
	DB	'''t open input file in.list!', 0aH, 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_09KMIIOAHK@input?4txt?$AA@
CONST	SEGMENT
??_C@_09KMIIOAHK@input?4txt?$AA@ DB 'input.txt', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_01KDCPPGHE@r?$AA@
CONST	SEGMENT
??_C@_01KDCPPGHE@r?$AA@ DB 'r', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_0M@KPLPPDAC@Hello?5World?$AA@
CONST	SEGMENT
??_C@_0M@KPLPPDAC@Hello?5World?$AA@ DB 'Hello World', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0L@ODNFPCJH@output?4txt?$AA@
CONST	SEGMENT
??_C@_0L@ODNFPCJH@output?4txt?$AA@ DB 'output.txt', 00H	; `string'
CONST	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File c:\users\kevin kuo\git\operating-systems\homeworks\homework2\homework2windows\homework2windows\hello.c
;	COMDAT _main
_TEXT	SEGMENT
_ofp$ = -44						; size = 4
_ifp$ = -32						; size = 4
_ch$ = -17						; size = 1
_outputFilename$ = -8					; size = 4
_main	PROC						; COMDAT

; 7    : {

	push	ebp
	mov	ebp, esp
	sub	esp, 240				; 000000f0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-240]
	mov	ecx, 60					; 0000003cH
	mov	eax, -858993460				; ccccccccH
	rep stosd

; 8    : 
; 9    : 	char *outputFilename = "output.txt";

	mov	DWORD PTR _outputFilename$[ebp], OFFSET ??_C@_0L@ODNFPCJH@output?4txt?$AA@

; 10   : 	char ch;
; 11   : 
; 12   :     FILE *ifp, *ofp;
; 13   : 	
; 14   : 	printf("Hello World");		

	mov	esi, esp
	push	OFFSET ??_C@_0M@KPLPPDAC@Hello?5World?$AA@
	call	DWORD PTR __imp__printf
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp

; 15   : 
; 16   : 	ifp = fopen("input.txt", "r");

	mov	esi, esp
	push	OFFSET ??_C@_01KDCPPGHE@r?$AA@
	push	OFFSET ??_C@_09KMIIOAHK@input?4txt?$AA@
	call	DWORD PTR __imp__fopen
	add	esp, 8
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _ifp$[ebp], eax

; 17   : 
; 18   : 	if (ifp == NULL){

	cmp	DWORD PTR _ifp$[ebp], 0
	jne	SHORT $LN6@main

; 19   : 		fprintf(stderr, "Can't open input file in.list!\n");

	mov	esi, esp
	push	OFFSET ??_C@_0CA@PIKJCKAP@Can?8t?5open?5input?5file?5in?4list?$CB?6?$AA@
	mov	edi, esp
	call	DWORD PTR __imp____iob_func
	cmp	edi, esp
	call	__RTC_CheckEsp
	mov	ecx, 32					; 00000020H
	shl	ecx, 1
	add	eax, ecx
	push	eax
	call	DWORD PTR __imp__fprintf
	add	esp, 8
	cmp	esi, esp
	call	__RTC_CheckEsp

; 20   : 		exit(1);

	mov	esi, esp
	push	1
	call	DWORD PTR __imp__exit
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN6@main:

; 21   : 	}
; 22   : 
; 23   : 	ofp = fopen(outputFilename, "w");

	mov	esi, esp
	push	OFFSET ??_C@_01NOFIACDB@w?$AA@
	mov	eax, DWORD PTR _outputFilename$[ebp]
	push	eax
	call	DWORD PTR __imp__fopen
	add	esp, 8
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _ofp$[ebp], eax

; 24   : 
; 25   : 	if (ofp == NULL) {

	cmp	DWORD PTR _ofp$[ebp], 0
	jne	SHORT $LN4@main

; 26   : 		fprintf(stderr, "Can't open output file %s!\n",
; 27   :         outputFilename);

	mov	esi, esp
	mov	eax, DWORD PTR _outputFilename$[ebp]
	push	eax
	push	OFFSET ??_C@_0BM@FFNLJCMO@Can?8t?5open?5output?5file?5?$CFs?$CB?6?$AA@
	mov	edi, esp
	call	DWORD PTR __imp____iob_func
	cmp	edi, esp
	call	__RTC_CheckEsp
	mov	ecx, 32					; 00000020H
	shl	ecx, 1
	add	eax, ecx
	push	eax
	call	DWORD PTR __imp__fprintf
	add	esp, 12					; 0000000cH
	cmp	esi, esp
	call	__RTC_CheckEsp

; 28   : 		exit(1);

	mov	esi, esp
	push	1
	call	DWORD PTR __imp__exit
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN4@main:

; 29   : 	}
; 30   : 
; 31   : 	while (1) {

	mov	eax, 1
	test	eax, eax
	je	SHORT $LN3@main

; 32   :       ch = fgetc(ifp);

	mov	esi, esp
	mov	eax, DWORD PTR _ifp$[ebp]
	push	eax
	call	DWORD PTR __imp__fgetc
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	BYTE PTR _ch$[ebp], al

; 33   :  
; 34   :       if (ch == EOF)

	movsx	eax, BYTE PTR _ch$[ebp]
	cmp	eax, -1
	jne	SHORT $LN2@main

; 35   :          break;

	jmp	SHORT $LN3@main

; 36   :       else

	jmp	SHORT $LN1@main
$LN2@main:

; 37   :          putc(ch, ofp);

	mov	esi, esp
	mov	eax, DWORD PTR _ofp$[ebp]
	push	eax
	movsx	ecx, BYTE PTR _ch$[ebp]
	push	ecx
	call	DWORD PTR __imp__putc
	add	esp, 8
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN1@main:

; 38   : 	}

	jmp	SHORT $LN4@main
$LN3@main:

; 39   : 
; 40   : 	fclose(ifp);

	mov	esi, esp
	mov	eax, DWORD PTR _ifp$[ebp]
	push	eax
	call	DWORD PTR __imp__fclose
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp

; 41   : 	fclose(ofp);

	mov	esi, esp
	mov	eax, DWORD PTR _ofp$[ebp]
	push	eax
	call	DWORD PTR __imp__fclose
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp

; 42   : }

	jmp	SHORT $LN10@main
$LN8@main:
	jmp	SHORT $LN9@main
$LN10@main:
	xor	eax, eax
$LN9@main:
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 240				; 000000f0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_main	ENDP
_TEXT	ENDS
END
