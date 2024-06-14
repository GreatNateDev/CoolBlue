@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section .rodata
	.align	1, 0
	.type	 Sio32ConnectionData,object
Sio32ConnectionData:
	.short	0x494e
	.short	0x544e
	.short	0x4e45
	.short	0x4f44
	.size	 Sio32ConnectionData,8
	.align	2, 0
	.type	 Sio32IDLib_Var,object
	.size	 Sio32IDLib_Var,15
Sio32IDLib_Var:
	.ascii	"Sio32ID_030820\000"
.text
	.align	2, 0
	.globl	AgbRFU_checkID
	.type	 AgbRFU_checkID,function
	.thumb_func
AgbRFU_checkID:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	ldr	r0, .L14
	ldrh	r0, [r0]
	cmp	r0, #0
	bne	.L3	@cond_branch
	mov	r0, #0x1
	neg	r0, r0
	b	.L13
.L15:
	.align	2, 0
.L14:
	.word	0x4000208
.L3:
	ldr	r0, .L16
	ldrh	r0, [r0]
	mov	r8, r0
	ldr	r4, .L16+0x4
	ldr	r1, [r4]
	mov	r0, #0xa
	str	r0, [r1]
	ldr	r0, .L16+0x8
	bl	STWI_set_Callback_ID
	bl	Sio32IDInit
	ldr	r0, [r4]
	ldrb	r0, [r0, #0xa]
	lsl	r0, r0, #0x2
	ldr	r1, .L16+0xc
	add	r4, r0, r1
	lsl	r0, r5, #0x1b
	lsr	r5, r0, #0x18
	mov	r7, #0x0
	b	.L4
.L17:
	.align	2, 0
.L16:
	.word	0x4000200
	.word	gSTWIStatus
	.word	Sio32IDIntr
	.word	0x4000100
.L7:
	strh	r6, [r4, #0x2]
	strh	r6, [r4]
	mov	r0, #0x83
	strh	r0, [r4, #0x2]
.L8:
	ldrh	r0, [r4]
	cmp	r0, #0x1f
	bls	.L8	@cond_branch
	strh	r7, [r4, #0x2]
	strh	r7, [r4]
.L4:
	sub	r0, r5, #0x1
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	cmp	r5, #0xff
	beq	.L5	@cond_branch
	bl	Sio32IDMain
	add	r6, r0, #0
	cmp	r6, #0
	beq	.L7	@cond_branch
.L5:
	ldr	r1, .L18
	mov	r0, #0x0
	strh	r0, [r1]
	ldr	r0, .L18+0x4
	mov	r2, r8
	strh	r2, [r0]
	mov	r0, #0x1
	strh	r0, [r1]
	ldr	r0, .L18+0x8
	ldr	r1, [r0]
	mov	r0, #0x0
	str	r0, [r1]
	bl	STWI_set_Callback_ID
	add	r0, r6, #0
.L13:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L19:
	.align	2, 0
.L18:
	.word	0x4000208
	.word	0x4000200
	.word	gSTWIStatus
.Lfe1:
	.size	 AgbRFU_checkID,.Lfe1-AgbRFU_checkID
	.align	2, 0
	.type	 Sio32IDInit,function
	.thumb_func
Sio32IDInit:
	push	{r4, r5, lr}
	add	sp, sp, #-0x4
	ldr	r3, .L21
	mov	r4, #0x0
	strh	r4, [r3]
	ldr	r2, .L21+0x4
	ldr	r0, .L21+0x8
	ldr	r0, [r0]
	mov	r1, #0x8
	ldrb	r0, [r0, #0xa]
	lsl	r1, r1, r0
	mov	r5, #0x80
	orr	r1, r1, r5
	ldrh	r0, [r2]
	bic	r0, r0, r1
	strh	r0, [r2]
	mov	r0, #0x1
	strh	r0, [r3]
	ldr	r0, .L21+0xc
	strh	r4, [r0]
	sub	r2, r2, #0xd8
	mov	r1, #0x80
	lsl	r1, r1, #0x5
	add	r0, r1, #0
	strh	r0, [r2]
	ldrh	r0, [r2]
	mov	r3, #0x81
	lsl	r3, r3, #0x7
	add	r1, r3, #0
	orr	r0, r0, r1
	strh	r0, [r2]
	mov	r0, #0x0
	str	r0, [sp]
	ldr	r1, .L21+0x10
	ldr	r2, .L21+0x14
	mov	r0, sp
	bl	CpuSet
	ldr	r0, .L21+0x18
	strh	r5, [r0]
	add	sp, sp, #0x4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L22:
	.align	2, 0
.L21:
	.word	0x4000208
	.word	0x4000200
	.word	gSTWIStatus
	.word	0x4000134
	.word	gRfuSIO32Id
	.word	0x5000003
	.word	0x4000202
.Lfe2:
	.size	 Sio32IDInit,.Lfe2-Sio32IDInit
	.align	2, 0
	.type	 Sio32IDMain,function
	.thumb_func
Sio32IDMain:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .L36
	ldrb	r1, [r0, #0x1]
	mov	ip, r1
	add	r7, r0, #0
	cmp	r1, #0
	beq	.L25	@cond_branch
	cmp	r1, #0x1
	beq	.L26	@cond_branch
	b	.L33
.L37:
	.align	2, 0
.L36:
	.word	gRfuSIO32Id
.L25:
	mov	r6, #0x1
	strb	r6, [r7]
	ldr	r3, .L38
	ldrh	r0, [r3]
	mov	r5, #0x1
	orr	r0, r0, r5
	strh	r0, [r3]
	ldr	r4, .L38+0x4
	mov	r0, ip
	strh	r0, [r4]
	ldr	r2, .L38+0x8
	ldrh	r0, [r2]
	mov	r1, #0x80
	orr	r0, r0, r1
	strh	r0, [r2]
	strh	r6, [r4]
	strb	r5, [r7, #0x1]
	ldrb	r0, [r3]
	orr	r0, r0, r1
	strb	r0, [r3]
	b	.L24
.L39:
	.align	2, 0
.L38:
	.word	0x4000128
	.word	0x4000208
	.word	0x4000200
.L26:
	ldrh	r0, [r7, #0xa]
	cmp	r0, #0
	bne	.L27	@cond_branch
	ldrb	r0, [r7]
	cmp	r0, #0x1
	bne	.L28	@cond_branch
	ldrh	r0, [r7, #0x2]
	cmp	r0, #0
	bne	.L24	@cond_branch
	ldr	r3, .L40
	strh	r0, [r3]
	ldr	r2, .L40+0x4
	ldrh	r0, [r2]
	mov	r1, #0x80
	orr	r0, r0, r1
	strh	r0, [r2]
	mov	r1, ip
	strh	r1, [r3]
	b	.L24
.L41:
	.align	2, 0
.L40:
	.word	0x4000208
	.word	0x4000128
.L28:
	ldrh	r1, [r7, #0x4]
	ldr	r0, .L42
	cmp	r1, r0
	beq	.L24	@cond_branch
	ldrh	r6, [r7, #0x2]
	cmp	r6, #0
	bne	.L24	@cond_branch
	ldr	r4, .L42+0x4
	strh	r6, [r4]
	ldr	r3, .L42+0x8
	ldrh	r1, [r3]
	ldr	r0, .L42+0xc
	and	r0, r0, r1
	strh	r0, [r3]
	mov	r7, ip
	strh	r7, [r4]
	ldr	r2, .L42+0x10
	strh	r6, [r2]
	mov	r1, #0x80
	lsl	r1, r1, #0x5
	add	r0, r1, #0
	strh	r0, [r2]
	ldr	r0, .L42+0x14
	mov	r5, #0x80
	strh	r5, [r0]
	ldrh	r0, [r2]
	mov	r7, #0x81
	lsl	r7, r7, #0x7
	add	r1, r7, #0
	orr	r0, r0, r1
	strh	r0, [r2]
	strh	r6, [r4]
	ldrh	r0, [r3]
	orr	r0, r0, r5
	strh	r0, [r3]
	mov	r0, ip
	strh	r0, [r4]
	b	.L24
.L43:
	.align	2, 0
.L42:
	.word	0x8001
	.word	0x4000208
	.word	0x4000200
	.word	0xff7f
	.word	0x4000128
	.word	0x4000202
.L27:
	mov	r0, #0x2
	strb	r0, [r7, #0x1]
.L33:
	ldrh	r0, [r7, #0xa]
	b	.L35
.L24:
	mov	r0, #0x0
.L35:
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe3:
	.size	 Sio32IDMain,.Lfe3-Sio32IDMain
	.align	2, 0
	.type	 Sio32IDIntr,function
	.thumb_func
Sio32IDIntr:
	push	{r4, r5, lr}
	ldr	r0, .L64
	ldr	r5, [r0]
	ldr	r0, .L64+0x4
	ldrb	r1, [r0]
	add	r4, r0, #0
	cmp	r1, #0x1
	beq	.L45	@cond_branch
	ldr	r0, .L64+0x8
	ldrh	r1, [r0]
	mov	r2, #0x80
	orr	r1, r1, r2
	strh	r1, [r0]
.L45:
	ldrb	r2, [r4]
	lsl	r1, r2, #0x4
	add	r0, r5, #0
	lsl	r0, r0, r1
	lsr	r1, r0, #0x10
	mov	r0, #0x1
	sub	r0, r0, r2
	lsl	r0, r0, #0x4
	lsl	r5, r5, r0
	add	r0, r5, #0
	lsr	r5, r0, #0x10
	ldrh	r0, [r4, #0xa]
	cmp	r0, #0
	bne	.L46	@cond_branch
	ldrh	r2, [r4, #0x6]
	cmp	r1, r2
	bne	.L47	@cond_branch
	ldrh	r3, [r4, #0x2]
	cmp	r3, #0x3
	bls	.L48	@cond_branch
	strh	r5, [r4, #0xa]
	b	.L46
.L65:
	.align	2, 0
.L64:
	.word	0x4000120
	.word	gRfuSIO32Id
	.word	0x4000128
.L48:
	ldrh	r0, [r4, #0x4]
	mvn	r0, r0
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	cmp	r1, r0
	bne	.L46	@cond_branch
	mvn	r0, r2
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	cmp	r5, r0
	bne	.L46	@cond_branch
	add	r0, r3, #0x1
.L47:
	strh	r0, [r4, #0x2]
.L46:
	ldrh	r0, [r4, #0x2]
	cmp	r0, #0x3
	bhi	.L53	@cond_branch
	lsl	r0, r0, #0x1
	ldr	r1, .L66
	add	r0, r0, r1
	ldrh	r0, [r0]
	b	.L63
.L67:
	.align	2, 0
.L66:
	.word	Sio32ConnectionData
.L53:
	ldr	r0, .L68
.L63:
	strh	r0, [r4, #0x4]
	mvn	r0, r5
	strh	r0, [r4, #0x6]
	ldr	r3, .L68+0x4
	ldrh	r2, [r4, #0x4]
	ldrb	r1, [r4]
	mov	r0, #0x1
	sub	r0, r0, r1
	lsl	r0, r0, #0x4
	lsl	r2, r2, r0
	ldrh	r0, [r4, #0x6]
	lsl	r1, r1, #0x4
	lsl	r0, r0, r1
	add	r2, r2, r0
	str	r2, [r3]
	ldrb	r0, [r4]
	cmp	r0, #0x1
	bne	.L55	@cond_branch
	ldrh	r0, [r4, #0x2]
	cmp	r0, #0
	bne	.L56	@cond_branch
	ldr	r0, .L68+0x8
	cmp	r5, r0
	bne	.L55	@cond_branch
.L56:
	mov	r0, #0x0
	ldr	r1, .L68+0xc
.L59:
	add	r0, r0, #0x1
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	cmp	r0, r1
	bls	.L59	@cond_branch
	ldrh	r0, [r4, #0xa]
	cmp	r0, #0
	bne	.L55	@cond_branch
	ldr	r0, .L68+0x10
	ldrh	r1, [r0]
	mov	r2, #0x80
	orr	r1, r1, r2
	strh	r1, [r0]
.L55:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L69:
	.align	2, 0
.L68:
	.word	0x8001
	.word	0x4000120
	.word	0x494e
	.word	0x257
	.word	0x4000128
.Lfe4:
	.size	 Sio32IDIntr,.Lfe4-Sio32IDIntr
	.comm	gRfuSIO32Id, 12	@ 12
.text
	.align	2, 0 @ Don't pad with nop
