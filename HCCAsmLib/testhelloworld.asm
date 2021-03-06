TITLE	 testhelloworld.hpp
SUBTITLE This file was automatically generated by the 32-bit H++ Compiler


	.486P
	.MODEL flat,stdcall
	.STACK 000100000h
	INCLUDE hcclib32.INC	; the H++ library.

;Windows API prototypes
GetVersion PROTO

;This assembly file was generated by the 32-bit H++ Compiler

.CODE ;code segment
Math_DegreesToRadians PROC NEAR 
;double Math::DegreesToRadians(double deg);
	push	EBP
	mov	EBP,ESP
	push	ECX 
	push	EBX 
	push	ESI 
	push	EDI 
;{

;{376}:return (deg * Math::pi()) / 180
	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 
	call	 Math_pi
	fclex
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fmul	qword ptr [ESP]
	fstp	qword ptr [ESP]
	mov	EAX,0000000B4h
	fclex
	push	EAX
	call	 FloatingPoint_FromInt
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fdivr	qword ptr [ESP]
	fstp	qword ptr [ESP]
	pop	EDX
	pop	EAX 
	jmp	OFFSET $L000452
;}
$L000452:

	pop	EDI
	pop	ESI 
	pop	EBX 
	leave	
	retn	000000008h
Math_DegreesToRadians ENDP

Math_Hyperbolic_HCos PROC NEAR 
;double Math::Hyperbolic::HCos(double X);
	push	EBP
	mov	EBP,ESP
	push	ECX 
	push	EBX 
	push	ESI 
	push	EDI 
;{

;{439}:return (Math::Exp(X) + Math::Exp(-X)) / 2
	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 
	call	 Math_Exp
	push	EAX
	push	EDX 
	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	fchs
	fstp	qword ptr [ESP]
	call	 Math_Exp
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fadd	qword ptr [ESP]
	fstp	qword ptr [ESP]
	mov	EAX,000000002h
	fclex
	push	EAX
	call	 FloatingPoint_FromInt
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fdivr	qword ptr [ESP]
	fstp	qword ptr [ESP]
	pop	EDX
	pop	EAX 
	jmp	OFFSET $L000469
;}
$L000469:

	pop	EDI
	pop	ESI 
	pop	EBX 
	leave	
	retn	000000008h
Math_Hyperbolic_HCos ENDP

Math_Hyperbolic_HCosec PROC NEAR 
;double Math::Hyperbolic::HCosec(double X);
	push	EBP
	mov	EBP,ESP
	push	ECX 
	push	EBX 
	push	ESI 
	push	EDI 
;{

;{451}:return 2 / (Math::Exp(X) - Math::Exp(-X))
	mov	EAX,000000002h
	push	EAX
	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 
	call	 Math_Exp
	push	EAX
	push	EDX 
	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	fchs
	fstp	qword ptr [ESP]
	call	 Math_Exp
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fld	qword ptr [ESP]
	fsub	st,st(1)
	fstp	qword ptr [ESP]
	fclex
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	call	 FloatingPoint_FromInt
	push	EAX
	push	EDX 
	fdivr	qword ptr [ESP]
	fstp	qword ptr [ESP]
	pop	EDX
	pop	EAX 
	jmp	OFFSET $L000475
;}
$L000475:

	pop	EDI
	pop	ESI 
	pop	EBX 
	leave	
	retn	000000008h
Math_Hyperbolic_HCosec ENDP

Math_Hyperbolic_HCotan PROC NEAR 
;double Math::Hyperbolic::HCotan(double X);
	push	EBP
	mov	EBP,ESP
	push	ECX 
	push	EBX 
	push	ESI 
	push	EDI 
;{

;{455}:return (Math::Exp(X) + Math::Exp(-X)) / (Math::Exp(X) - Math::Exp(-X))
	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 
	call	 Math_Exp
	push	EAX
	push	EDX 
	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	fchs
	fstp	qword ptr [ESP]
	call	 Math_Exp
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fadd	qword ptr [ESP]
	fstp	qword ptr [ESP]
	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 
	call	 Math_Exp
	push	EAX
	push	EDX 
	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	fchs
	fstp	qword ptr [ESP]
	call	 Math_Exp
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fld	qword ptr [ESP]
	fsub	st,st(1)
	fstp	qword ptr [ESP]
	fclex
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fdivr	qword ptr [ESP]
	fstp	qword ptr [ESP]
	pop	EDX
	pop	EAX 
	jmp	OFFSET $L000477
;}
$L000477:

	pop	EDI
	pop	ESI 
	pop	EBX 
	leave	
	retn	000000008h
Math_Hyperbolic_HCotan ENDP

Math_Hyperbolic_HSec PROC NEAR 
;double Math::Hyperbolic::HSec(double X);
	push	EBP
	mov	EBP,ESP
	push	ECX 
	push	EBX 
	push	ESI 
	push	EDI 
;{

;{447}:return 2 / (Math::Exp(X) + Math::Exp(-X))
	mov	EAX,000000002h
	push	EAX
	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 
	call	 Math_Exp
	push	EAX
	push	EDX 
	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	fchs
	fstp	qword ptr [ESP]
	call	 Math_Exp
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fadd	qword ptr [ESP]
	fstp	qword ptr [ESP]
	fclex
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	call	 FloatingPoint_FromInt
	push	EAX
	push	EDX 
	fdivr	qword ptr [ESP]
	fstp	qword ptr [ESP]
	pop	EDX
	pop	EAX 
	jmp	OFFSET $L000473
;}
$L000473:

	pop	EDI
	pop	ESI 
	pop	EBX 
	leave	
	retn	000000008h
Math_Hyperbolic_HSec ENDP

Math_Hyperbolic_HSin PROC NEAR 
;double Math::Hyperbolic::HSin(double X);
	push	EBP
	mov	EBP,ESP
	push	ECX 
	push	EBX 
	push	ESI 
	push	EDI 
;{

;{435}:return (Math::Exp(X) - Math::Exp(-X)) / 2
	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 
	call	 Math_Exp
	push	EAX
	push	EDX 
	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	fchs
	fstp	qword ptr [ESP]
	call	 Math_Exp
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fld	qword ptr [ESP]
	fsub	st,st(1)
	fstp	qword ptr [ESP]
	mov	EAX,000000002h
	fclex
	push	EAX
	call	 FloatingPoint_FromInt
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fdivr	qword ptr [ESP]
	fstp	qword ptr [ESP]
	pop	EDX
	pop	EAX 
	jmp	OFFSET $L000466
;}
$L000466:

	pop	EDI
	pop	ESI 
	pop	EBX 
	leave	
	retn	000000008h
Math_Hyperbolic_HSin ENDP

Math_Hyperbolic_HTan PROC NEAR 
;double Math::Hyperbolic::HTan(double X);
	push	EBP
	mov	EBP,ESP
	push	ECX 
	push	EBX 
	push	ESI 
	push	EDI 
;{

;{443}:return (Math::Exp(X) - Math::Exp(-X)) / (Math::Exp(X) + Math::Exp(-X))
	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 
	call	 Math_Exp
	push	EAX
	push	EDX 
	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	fchs
	fstp	qword ptr [ESP]
	call	 Math_Exp
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fld	qword ptr [ESP]
	fsub	st,st(1)
	fstp	qword ptr [ESP]
	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 
	call	 Math_Exp
	push	EAX
	push	EDX 
	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	fchs
	fstp	qword ptr [ESP]
	call	 Math_Exp
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fadd	qword ptr [ESP]
	fstp	qword ptr [ESP]
	fclex
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fdivr	qword ptr [ESP]
	fstp	qword ptr [ESP]
	pop	EDX
	pop	EAX 
	jmp	OFFSET $L000471
;}
$L000471:

	pop	EDI
	pop	ESI 
	pop	EBX 
	leave	
	retn	000000008h
Math_Hyperbolic_HTan ENDP

Math_Hyperbolic_Inverse_HArccos PROC NEAR 
;double Math::Hyperbolic::Inverse::HArccos(double X);
	push	EBP
	mov	EBP,ESP
	push	ECX 
	push	EBX 
	push	ESI 
	push	EDI 
;{

;{466}:return Math::log10(X + Math::Sqrt(X * X - 1))

	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 

	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 
	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	fclex
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fmul	qword ptr [ESP]
	fstp	qword ptr [ESP]
	mov	EAX,000000001h
	push	EAX
	call	 FloatingPoint_FromInt
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fld	qword ptr [ESP]
	fsub	st,st(1)
	fstp	qword ptr [ESP]

	call	 Math_Sqrt
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fadd	qword ptr [ESP]
	fstp	qword ptr [ESP]

	call	 Math_log10
	jmp	OFFSET $L000483
;}
$L000483:

	pop	EDI
	pop	ESI 
	pop	EBX 
	leave	
	retn	000000008h
Math_Hyperbolic_Inverse_HArccos ENDP

Math_Hyperbolic_Inverse_HArccosec PROC NEAR 
;double Math::Hyperbolic::Inverse::HArccosec(double X);
	push	EBP
	mov	EBP,ESP
	push	ECX 
	push	EBX 
	push	ESI 
	push	EDI 
;{

;{478}:return Math::log10((Math::Sign(X) * Math::Sqrt(X * X + 1) + 1) / X)

	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 
	call	 Math_Sign
	push	EAX
	push	EDX 

	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 
	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	fclex
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fmul	qword ptr [ESP]
	fstp	qword ptr [ESP]
	mov	EAX,000000001h
	push	EAX
	call	 FloatingPoint_FromInt
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fadd	qword ptr [ESP]
	fstp	qword ptr [ESP]

	call	 Math_Sqrt
	fclex
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fmul	qword ptr [ESP]
	fstp	qword ptr [ESP]
	mov	EAX,000000001h
	push	EAX
	call	 FloatingPoint_FromInt
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fadd	qword ptr [ESP]
	fstp	qword ptr [ESP]
	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	fclex
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fdivr	qword ptr [ESP]
	fstp	qword ptr [ESP]

	call	 Math_log10
	jmp	OFFSET $L000489
;}
$L000489:

	pop	EDI
	pop	ESI 
	pop	EBX 
	leave	
	retn	000000008h
Math_Hyperbolic_Inverse_HArccosec ENDP

Math_Hyperbolic_Inverse_HArccotan PROC NEAR 
;double Math::Hyperbolic::Inverse::HArccotan(double X);
	push	EBP
	mov	EBP,ESP
	push	ECX 
	push	EBX 
	push	ESI 
	push	EDI 
;{

;{482}:return Math::log10((X + 1) / (X - 1)) / 2

	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 
	mov	EAX,000000001h
	push	EAX
	call	 FloatingPoint_FromInt
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fadd	qword ptr [ESP]
	fstp	qword ptr [ESP]
	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 
	mov	EAX,000000001h
	push	EAX
	call	 FloatingPoint_FromInt
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fld	qword ptr [ESP]
	fsub	st,st(1)
	fstp	qword ptr [ESP]
	fclex
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fdivr	qword ptr [ESP]
	fstp	qword ptr [ESP]

	call	 Math_log10
	push	EAX
	push	EDX 
	mov	EAX,000000002h
	fclex
	push	EAX
	call	 FloatingPoint_FromInt
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fdivr	qword ptr [ESP]
	fstp	qword ptr [ESP]
	pop	EDX
	pop	EAX 
	jmp	OFFSET $L000491
;}
$L000491:

	pop	EDI
	pop	ESI 
	pop	EBX 
	leave	
	retn	000000008h
Math_Hyperbolic_Inverse_HArccotan ENDP

Math_Hyperbolic_Inverse_HArcsec PROC NEAR 
;double Math::Hyperbolic::Inverse::HArcsec(double X);
	push	EBP
	mov	EBP,ESP
	push	ECX 
	push	EBX 
	push	ESI 
	push	EDI 
;{

;{474}:return Math::log10((Math::Sqrt(-X * X + 1) + 1) / X)


	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 
	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	fclex
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fmul	qword ptr [ESP]
	fstp	qword ptr [ESP]
	fld	qword ptr [ESP]
	fchs
	fstp	qword ptr [ESP]
	mov	EAX,000000001h
	push	EAX
	call	 FloatingPoint_FromInt
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fadd	qword ptr [ESP]
	fstp	qword ptr [ESP]

	call	 Math_Sqrt
	push	EAX
	push	EDX 
	mov	EAX,000000001h
	push	EAX
	call	 FloatingPoint_FromInt
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fadd	qword ptr [ESP]
	fstp	qword ptr [ESP]
	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	fclex
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fdivr	qword ptr [ESP]
	fstp	qword ptr [ESP]

	call	 Math_log10
	jmp	OFFSET $L000487
;}
$L000487:

	pop	EDI
	pop	ESI 
	pop	EBX 
	leave	
	retn	000000008h
Math_Hyperbolic_Inverse_HArcsec ENDP

Math_Hyperbolic_Inverse_HArcsin PROC NEAR 
;double Math::Hyperbolic::Inverse::HArcsin(double X);
	push	EBP
	mov	EBP,ESP
	push	ECX 
	push	EBX 
	push	ESI 
	push	EDI 
;{

;{462}:return Math::log10(X + Math::Sqrt(X * X + 1))

	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 

	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 
	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	fclex
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fmul	qword ptr [ESP]
	fstp	qword ptr [ESP]
	mov	EAX,000000001h
	push	EAX
	call	 FloatingPoint_FromInt
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fadd	qword ptr [ESP]
	fstp	qword ptr [ESP]

	call	 Math_Sqrt
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fadd	qword ptr [ESP]
	fstp	qword ptr [ESP]

	call	 Math_log10
	jmp	OFFSET $L000480
;}
$L000480:

	pop	EDI
	pop	ESI 
	pop	EBX 
	leave	
	retn	000000008h
Math_Hyperbolic_Inverse_HArcsin ENDP

Math_Hyperbolic_Inverse_HArctan PROC NEAR 
;double Math::Hyperbolic::Inverse::HArctan(double X);
	push	EBP
	mov	EBP,ESP
	push	ECX 
	push	EBX 
	push	ESI 
	push	EDI 
;{

;{470}:return Math::log10((1 + X) / (1 - X)) / 2

	mov	EAX,000000001h
	push	EAX
	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	call	 FloatingPoint_FromInt
	push	EAX
	push	EDX 
	fadd	qword ptr [ESP]
	fstp	qword ptr [ESP]
	mov	EAX,000000001h
	push	EAX
	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	call	 FloatingPoint_FromInt
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	fsub	st,st(1)
	fstp	qword ptr [ESP]
	fclex
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fdivr	qword ptr [ESP]
	fstp	qword ptr [ESP]

	call	 Math_log10
	push	EAX
	push	EDX 
	mov	EAX,000000002h
	fclex
	push	EAX
	call	 FloatingPoint_FromInt
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fdivr	qword ptr [ESP]
	fstp	qword ptr [ESP]
	pop	EDX
	pop	EAX 
	jmp	OFFSET $L000485
;}
$L000485:

	pop	EDI
	pop	ESI 
	pop	EBX 
	leave	
	retn	000000008h
Math_Hyperbolic_Inverse_HArctan ENDP

Math_RadiansToDegrees PROC NEAR 
;double Math::RadiansToDegrees(double rad);
	push	EBP
	mov	EBP,ESP
	push	ECX 
	push	EBX 
	push	ESI 
	push	EDI 
;{

;{371}:return (180 / Math::pi()) * rad
	mov	EAX,0000000B4h
	push	EAX
	call	 Math_pi
	fclex
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	call	 FloatingPoint_FromInt
	push	EAX
	push	EDX 
	fdivr	qword ptr [ESP]
	fstp	qword ptr [ESP]
	mov	EDX,dword ptr [EBP+0008h]
	mov	EAX,dword ptr [EBP+000Ch] 
	fclex
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fmul	qword ptr [ESP]
	fstp	qword ptr [ESP]
	pop	EDX
	pop	EAX 
	jmp	OFFSET $L000449
;}
$L000449:

	pop	EDI
	pop	ESI 
	pop	EBX 
	leave	
	retn	000000008h
Math_RadiansToDegrees ENDP

Test_HelloWorld_Hello1 PROC NEAR 
;void Hello1(int i, int ref j);
	push	EBP
	mov	EBP,ESP
	sub	ESP,00000003Ch
	push	EBX 
	push	ESI 
	push	EDI 
	mov	dword ptr [EBP-003Ch],ECX
	lea	EDI,dword ptr [EBP-0038h]
	mov	ECX,00000000Eh 
	mov	EAX,0CCCCCCCCh 
	rep stos	dword ptr [EDI]
	mov	ECX,dword ptr [EBP-003Ch] 
;{

;{20}:result_time= 0;
	xor	EAX,EAX
	push	EAX
	fild	dword ptr [ESP]
	fstp	qword ptr [EBP-0008h]

;{22}:a= 1;
	pop	EAX
	mov	EAX,000000001h
	mov	dword ptr [EBP-000Ch],EAX

;{23}:b= 4;
	mov	EAX,000000004h
	mov	dword ptr [EBP-0010h],EAX

;{24}:c= 4;
	mov	EAX,000000004h
	mov	dword ptr [EBP-0014h],EAX

;{26}:disc= 0.0;
	fldz
	fstp	qword ptr [EBP-001Ch]

;{28}:uno= 1.0;
	fld1
	fstp	qword ptr [EBP-0024h]

;{30}:uno= 7.14 * 1.0;
	mov	EDX,028F5C290h
	mov	EAX,0401C8F5Ch 
	push	EAX
	push	EDX 
	fld1
	fclex
	fmul	qword ptr [ESP]
	fstp	qword ptr [ESP]
	fld	qword ptr [ESP]
	fstp	qword ptr [EBP-0024h]

;{32}:uno= 7.14 * (-1.0);
	pop	EDX
	pop	EAX 
	mov	EDX,028F5C290h
	mov	EAX,0401C8F5Ch 
	push	EAX
	push	EDX 
	fld1
	fchs
	fclex
	fmul	qword ptr [ESP]
	fstp	qword ptr [ESP]
	fld	qword ptr [ESP]
	fstp	qword ptr [EBP-0024h]

;{34}:speed= 120;
	pop	EDX
	pop	EAX 
	mov	EAX,000000078h
	mov	dword ptr [EBP-0028h],EAX

;{35}:distance= 144;
	mov	EAX,000000090h
	push	EAX
	fild	dword ptr [ESP]
	fstp	qword ptr [EBP-0030h]

;{38}:result_time= distance / speed;
	pop	EAX
	mov	EDX,dword ptr [EBP-0030h]
	mov	EAX,dword ptr [EBP-002Ch] 
	push	EAX
	push	EDX 
	mov	EAX,dword ptr [EBP-0028h]
	fclex
	push	EAX
	call	 FloatingPoint_FromInt
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fdivr	qword ptr [ESP]
	fstp	qword ptr [ESP]
	fld	qword ptr [ESP]
	fstp	qword ptr [EBP-0008h]

;{40}:dSpeed= distance / result_time;
	pop	EDX
	pop	EAX 
	mov	EDX,dword ptr [EBP-0030h]
	mov	EAX,dword ptr [EBP-002Ch] 
	push	EAX
	push	EDX 
	mov	EDX,dword ptr [EBP-0008h]
	mov	EAX,dword ptr [EBP-0004h] 
	fclex
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fdivr	qword ptr [ESP]
	fstp	qword ptr [ESP]
	fld	qword ptr [ESP]
	fstp	qword ptr [EBP-0038h]

;{42}:System::Debug::BreakPoint();
	pop	EDX
	pop	EAX 
	int	000000003h ;User breakpoint

;{44}:(result_time= distance / dSpeed, dSpeed= distance / result_time, disc= Math::Sqr(b) - 4 * a * c);
	mov	EDX,dword ptr [EBP-0030h]
	mov	EAX,dword ptr [EBP-002Ch] 
	push	EAX
	push	EDX 
	mov	EDX,dword ptr [EBP-0038h]
	mov	EAX,dword ptr [EBP-0034h] 
	fclex
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fdivr	qword ptr [ESP]
	fstp	qword ptr [ESP]
	fld	qword ptr [ESP]
	fstp	qword ptr [EBP-0008h]
	pop	EDX
	pop	EAX 
	mov	EDX,dword ptr [EBP-0030h]
	mov	EAX,dword ptr [EBP-002Ch] 
	push	EAX
	push	EDX 
	mov	EDX,dword ptr [EBP-0008h]
	mov	EAX,dword ptr [EBP-0004h] 
	fclex
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fdivr	qword ptr [ESP]
	fstp	qword ptr [ESP]
	fld	qword ptr [ESP]
	fstp	qword ptr [EBP-0038h]
	pop	EDX
	pop	EAX 
	mov	EAX,dword ptr [EBP-0010h]
	push	EAX
	call	 FloatingPoint_FromInt
	push	EAX
	push	EDX 
	call	 Math_Sqr
	push	EAX
	push	EDX 
	mov	EAX,000000004h
	push	EAX
	mov	EAX,dword ptr [EBP-000Ch]
	pop	ECX
	xor	EDX,EDX
	imul	AX,CX
	shl	EDX,000000010h
	or	EAX,EDX
	push	EAX
	mov	EAX,dword ptr [EBP-0014h]
	pop	ECX 
	cdq	
	imul	EAX,ECX 
	push	EDX ;WATCHOUT!	
	push	EAX
	call	 FloatingPoint_FromInt64
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	fld	qword ptr [ESP]
	fsub	st,st(1)
	fistp	qword ptr [ESP]
	fild	qword ptr [ESP]
	fstp	qword ptr [EBP-001Ch]

;{46}:Console::WriteLn("The resultant time is t = ", result_time);
	pop	EDX
	pop	EAX 
	lea	EAX,OFFSET $S000522
	push	000000000h
	push	EAX 
	call	 Console_WriteString
	mov	EDX,dword ptr [EBP-0008h]
	mov	EAX,dword ptr [EBP-0004h] 
	push	EAX 
	push	EDX 
	call	 Console_WriteDouble 
	call	 Console_WriteCrLf 

;{47}:Console::WriteLn("The resultant speed is s = ", dSpeed);
	lea	EAX,OFFSET $S000523
	push	000000000h
	push	EAX 
	call	 Console_WriteString
	mov	EDX,dword ptr [EBP-0038h]
	mov	EAX,dword ptr [EBP-0034h] 
	push	EAX 
	push	EDX 
	call	 Console_WriteDouble 
	call	 Console_WriteCrLf 

;{48}:Console::WriteLn("The resultant discriminant is s = ", disc);
	lea	EAX,OFFSET $S000524
	push	000000000h
	push	EAX 
	call	 Console_WriteString
	mov	EDX,dword ptr [EBP-001Ch]
	mov	EAX,dword ptr [EBP-0018h] 
	push	EAX 
	push	EDX 
	call	 Console_WriteDouble 
	call	 Console_WriteCrLf 

;{51}:j= i div 2;
	mov	EAX,dword ptr [EBP+0008h]
	push	EAX
	mov	EAX,000000002h
	mov	ECX,EAX
	pop	EAX
	xor	EDX,EDX
	idiv	ECX
	mov	EBX,dword ptr [EBP+000Ch]
	mov	dword ptr [EBX],EAX

;{52}:Console::WriteLn("Here, we have j = ", j);
	lea	EAX,OFFSET $S000525
	push	000000000h
	push	EAX 
	call	 Console_WriteString
	mov	EBX,dword ptr [EBP+000Ch]
	mov	EAX,dword ptr [EBX]
	push	EAX 
	call	 Console_WriteInteger 
	call	 Console_WriteCrLf 

;{58}:Test::dXVal= Hello2(i, j, 3.14);
	mov	EDX,051EB851Fh
	mov	EAX,040091EB8h 
	push	EAX 
	push	EDX 
	push	dword ptr [EBP+000Ch]
	mov	EAX,dword ptr [EBP+0008h]
	push	EAX
	mov	ECX,dword ptr [EBP-003Ch]
	call	 Test_HelloWorld_Hello2
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	fstp	qword ptr Test_dXVal

;{59}:Console::WriteLn("Here, now we have j = ", j);
	pop	EDX
	pop	EAX 
	lea	EAX,OFFSET $S000527
	push	000000000h
	push	EAX 
	call	 Console_WriteString
	mov	EBX,dword ptr [EBP+000Ch]
	mov	EAX,dword ptr [EBX]
	push	EAX 
	call	 Console_WriteInteger 
	call	 Console_WriteCrLf 
;}
$L000503:

	pop	EDI
	pop	ESI 
	pop	EBX 
	leave	
	retn	000000008h
Test_HelloWorld_Hello1 ENDP

Test_HelloWorld_Hello2 PROC NEAR 
;double Hello2(int i, int ref j, double dYVal);
	push	EBP
	mov	EBP,ESP
	push	ECX 
	push	EBX 
	push	ESI 
	push	EDI 
;{

;{12}:j= 5;
	mov	EAX,000000005h
	mov	EBX,dword ptr [EBP+000Ch]
	mov	dword ptr [EBX],EAX

;{13}:return (i + dYVal + 0.5)
	mov	EAX,dword ptr [EBP+0008h]
	push	EAX
	mov	EDX,dword ptr [EBP+0010h]
	mov	EAX,dword ptr [EBP+0014h] 
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX
	pop	ECX 
	call	 FloatingPoint_FromInt
	push	EAX
	push	EDX 
	fadd	qword ptr [ESP]
	fstp	qword ptr [ESP]
	mov	EDX,000000000h
	mov	EAX,03FE00000h 
	push	EAX
	push	EDX 
	fld	qword ptr [ESP]
	pop	ECX 
	pop	ECX 
	fadd	qword ptr [ESP]
	fstp	qword ptr [ESP]
	pop	EDX
	pop	EAX 
	jmp	OFFSET $L000497
;}
$L000497:

	pop	EDI
	pop	ESI 
	pop	EBX 
	leave	
	retn	000000010h
Test_HelloWorld_Hello2 ENDP

__User_Globals_Init PROC

	push	EBP
	mov	EBP,ESP
	push	EBX 
	push	ESI 
	push	EDI 

	pop	EDI
	pop	ESI 
	pop	EBX 
	leave	
	ret	
__User_Globals_Init ENDP

Test_HelloWorld_main PROC NEAR 
;void Test::HelloWorld::main(void);
	push	EBP
	mov	EBP,ESP
	push	ECX 
	push	EBX 
	push	ESI 
	push	EDI 
	lea	EDI,dword ptr [EBP-0004h]
	mov	ECX,000000001h
	mov	EAX,0CCCCCCCCh 
	rep stos	dword ptr [EDI]
	call	 __User_Globals_Init
;{

;{67}:System::ShowMessage("This is my first H++ program; so I must say 'Hello World'", "Hello World", System::IconInformation);
	mov	EAX,000000040h
	xor	EDX,EDX
	push	EAX 
	lea	EAX,OFFSET $S000530
	push	EAX 
	lea	EAX,OFFSET $S000529
	push	EAX
	call	 System_ShowMessage

;{70}:Test::nVal= 1;
	mov	EAX,000000001h
	mov	 Test_nVal,EAX

;{71}:Console::WriteLn("Initially, the value of nVal is = ", Test::nVal);
	lea	EAX,OFFSET $S000531
	push	000000000h
	push	EAX 
	call	 Console_WriteString
	mov	EAX, Test_nVal
	push	EAX 
	call	 Console_WriteInteger 
	call	 Console_WriteCrLf 

;{74}:hello;

;{75}:hello.Hello1(7, Test::nVal);
	lea	EAX,OFFSET Test_nVal
	push	EAX
	mov	EAX,000000007h
	push	EAX
	lea	ECX,dword ptr [EBP-0004h]
	call	 Test_HelloWorld_Hello1

;{77}:Console::WriteLn("Now, the value of nVal is = ", Test::nVal, " and the value of dXVal is = ", Test::dXVal);
	lea	EAX,OFFSET $S000534
	push	000000000h
	push	EAX 
	call	 Console_WriteString
	mov	EAX, Test_nVal
	push	EAX 
	call	 Console_WriteInteger 
	lea	EAX,OFFSET $S000535
	push	000000000h 
	push	EAX 
	call	 Console_WriteString 
	mov	EDX,dword ptr Test_dXVal
	mov	EAX,dword ptr Test_dXVal+4 
	push	EAX 
	push	EDX 
	call	 Console_WriteDouble 
	call	 Console_WriteCrLf 
;}
$L000528:

	pop	EDI
	pop	ESI 
	pop	EBX 
	leave	
	ret	
Test_HelloWorld_main ENDP

__System_Hpp_Runtime_Init PROC

	push	EBP
	mov	EBP,ESP
	push	ECX 
	push	EBX 
	push	ESI 
	push	EDI 
	call	 GetVersion
	mov	 __osver,EAX ;os version
	mov	EAX, __osver 
	shr	EAX,000000008h
	and	EAX,0000000FFh
	mov	 __winminor,EAX ;windows minor
	mov	ECX, __osver 
	and	ECX,0000000FFh 
	mov	 __winmajor,ECX ;windows major
	mov	EDX,dword ptr __winmajor 
	shl	EDX,000000008h
	add	EDX,dword ptr __winminor
	mov	dword ptr __winver,EDX ;windows version
	mov	EAX, __osver 
	shr	EAX,000000010h 
	and	EAX,00000FFFFh 
	mov	 __osver,EAX 
	call	 Test_HelloWorld_main ;user entry point (stdcall calling convention)
	push	EAX
	call	 System_Exit 

	pop	EDI
	pop	ESI 
	pop	EBX 
	leave	
	ret	
__System_Hpp_Runtime_Init ENDP

.DATA ;data segment
.DATA ;data segment
File_INVALID_HANDLE_VALUE	=	0FFFFFFFFh
File_INVALID_SET_FILE_POINTER	=	0FFFFFFFFh

$S000535 		BYTE 	" and the value of dXVal is = ",0
$S000530 		BYTE 	"Hello World",0
$S000527 		BYTE 	"Here, now we have j = ",0
$S000525 		BYTE 	"Here, we have j = ",0
$S000531 		BYTE 	"Initially, the value of nVal is = ",0
$S000534 		BYTE 	"Now, the value of nVal is = ",0
$S000524 		BYTE 	"The resultant discriminant is s = ",0
$S000523 		BYTE 	"The resultant speed is s = ",0
$S000522 		BYTE 	"The resultant time is t = ",0
$S000529 		BYTE 	"This is my first H++ program; so I must say 'Hello World'",0

__osver 		DWORD 	0;Windows OS version
__winminor 		DWORD 	0;Windows minor version
__winmajor 		DWORD 	0;Windows major version
__winver 		DWORD 	0;Windows version
__computer 		BYTE 	000000010h DUP(?);Computer name
___argv 		DWORD 	0;Array of argument values
___argc 		DWORD 	0;Argument count
Test_nVal	 DWORD	0
Test_dXVal	 REAL8	0.0

END __System_Hpp_Runtime_Init

