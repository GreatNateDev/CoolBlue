@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
.text
	.align	2, 0
	.globl	SendPacket_ReadyToStart
	.type	 SendPacket_ReadyToStart,function
	.thumb_func
SendPacket_ReadyToStart:
	push	{lr}
	add	sp, sp, #-0x8
	ldr	r3, .L3
	ldr	r1, [sp]
	and	r1, r1, r3
	mov	r2, #0x1
	orr	r1, r1, r2
	str	r1, [sp]
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r1, [sp, #0x4]
	and	r1, r1, r3
	orr	r1, r1, r0
	str	r1, [sp, #0x4]
	mov	r0, sp
	bl	Rfu_SendPacket
	add	sp, sp, #0x8
	pop	{r0}
	bx	r0
.L4:
	.align	2, 0
.L3:
	.word	-0x100
.Lfe1:
	.size	 SendPacket_ReadyToStart,.Lfe1-SendPacket_ReadyToStart
	.align	2, 0
	.globl	RecvPacket_ReadyToStart
	.type	 RecvPacket_ReadyToStart,function
	.thumb_func
RecvPacket_ReadyToStart:
	push	{lr}
	add	r2, r0, #0
	ldr	r3, .L10
	ldrh	r0, [r3]
	mov	r1, #0xff
	lsl	r1, r1, #0x8
	and	r1, r1, r0
	mov	r0, #0xbc
	lsl	r0, r0, #0x6
	cmp	r1, r0
	bne	.L9	@cond_branch
	lsl	r0, r2, #0x4
	add	r1, r3, #0x2
	add	r1, r0, r1
	ldrb	r0, [r1]
	cmp	r0, #0x1
	beq	.L7	@cond_branch
.L9:
	mov	r0, #0x0
	b	.L8
.L11:
	.align	2, 0
.L10:
	.word	gRecvCmds
.L7:
	ldrb	r0, [r1, #0x4]
.L8:
	pop	{r1}
	bx	r1
.Lfe2:
	.size	 RecvPacket_ReadyToStart,.Lfe2-RecvPacket_ReadyToStart
	.align	2, 0
	.globl	SendPacket_GameState
	.type	 SendPacket_GameState,function
	.thumb_func
SendPacket_GameState:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x20
	ldr	r4, [sp, #0x48]
	lsl	r4, r4, #0x18
	str	r4, [sp, #0x1c]
	mov	r4, #0x14
	add	r4, r4, r0
	mov	r9, r4
	mov	r5, sp
	mov	r4, #0x2
	strb	r4, [r5]
	mov	sl, sp
	mov	r5, r9
	ldrb	r4, [r5, #0xb]
	mov	r7, #0xf
	add	r5, r7, #0
	and	r5, r5, r4
	mov	r6, sl
	ldrb	r6, [r6, #0x1]
	mov	r8, r6
	mov	r4, #0x10
	neg	r4, r4
	mov	r6, r8
	and	r4, r4, r6
	orr	r4, r4, r5
	mov	r5, sl
	strb	r4, [r5, #0x1]
	mov	r8, sp
	mov	r6, r9
	ldrb	r5, [r6, #0xc]
	lsl	r5, r5, #0x4
	and	r4, r4, r7
	orr	r4, r4, r5
	mov	r5, r8
	strb	r4, [r5, #0x1]
	ldrb	r5, [r6, #0xd]
	mov	r6, #0xf
	and	r5, r5, r6
	mov	r4, sl
	ldrb	r4, [r4, #0x2]
	mov	r8, r4
	mov	r4, #0x10
	neg	r4, r4
	mov	r6, r8
	and	r4, r4, r6
	orr	r4, r4, r5
	mov	r5, sl
	strb	r4, [r5, #0x2]
	mov	r8, sp
	mov	r6, r9
	ldrb	r5, [r6, #0xe]
	lsl	r5, r5, #0x4
	and	r4, r4, r7
	orr	r4, r4, r5
	mov	r5, r8
	strb	r4, [r5, #0x2]
	ldrb	r5, [r6, #0xf]
	mov	r6, #0xf
	and	r5, r5, r6
	mov	r4, sl
	ldrb	r4, [r4, #0x3]
	mov	r8, r4
	mov	r4, #0x10
	neg	r4, r4
	mov	r6, r8
	and	r4, r4, r6
	orr	r4, r4, r5
	mov	r5, sl
	strb	r4, [r5, #0x3]
	mov	r8, sp
	mov	r6, r9
	ldrb	r5, [r6, #0x10]
	lsl	r5, r5, #0x4
	and	r4, r4, r7
	orr	r4, r4, r5
	mov	r5, r8
	strb	r4, [r5, #0x3]
	ldrb	r5, [r6, #0x11]
	mov	r6, #0xf
	and	r5, r5, r6
	mov	r4, sl
	ldrb	r4, [r4, #0x4]
	mov	r8, r4
	mov	r4, #0x10
	neg	r4, r4
	mov	r6, r8
	and	r4, r4, r6
	orr	r4, r4, r5
	mov	r5, sl
	strb	r4, [r5, #0x4]
	mov	r8, sp
	mov	r6, r9
	ldrb	r5, [r6, #0x12]
	lsl	r5, r5, #0x4
	and	r4, r4, r7
	orr	r4, r4, r5
	mov	r5, r8
	strb	r4, [r5, #0x4]
	ldrb	r4, [r6, #0x13]
	mov	r6, #0xf
	and	r4, r4, r6
	mov	r6, r8
	ldrb	r5, [r6, #0x5]
	mov	r6, #0x10
	neg	r6, r6
	and	r6, r6, r5
	orr	r6, r6, r4
	str	r6, [sp, #0xc]
	mov	r4, r8
	strb	r6, [r4, #0x5]
	mov	r5, sp
	mov	r6, r9
	ldrb	r4, [r6, #0x14]
	lsl	r4, r4, #0x4
	ldr	r6, [sp, #0xc]
	and	r6, r6, r7
	orr	r6, r6, r4
	strb	r6, [r5, #0x5]
	mov	r7, sp
	mov	r4, #0x3
	mov	r8, r4
	ldrb	r0, [r0, #0x14]
	mov	r5, r8
	and	r0, r0, r5
	ldrb	r5, [r7, #0x6]
	mov	r6, #0x4
	neg	r6, r6
	mov	sl, r6
	mov	r4, sl
	and	r4, r4, r5
	orr	r4, r4, r0
	strb	r4, [r7, #0x6]
	mov	r5, r9
	ldrb	r0, [r5, #0x1]
	mov	r6, r8
	and	r0, r0, r6
	lsl	r0, r0, #0x2
	mov	r5, #0xd
	neg	r5, r5
	and	r5, r5, r4
	orr	r5, r5, r0
	strb	r5, [r7, #0x6]
	mov	r0, r9
	ldrb	r4, [r0, #0x2]
	and	r4, r4, r6
	lsl	r4, r4, #0x4
	mov	r0, #0x31
	neg	r0, r0
	and	r0, r0, r5
	orr	r0, r0, r4
	strb	r0, [r7, #0x6]
	mov	r5, sp
	mov	r6, r9
	ldrb	r4, [r6, #0x3]
	lsl	r4, r4, #0x6
	mov	r6, #0x3f
	and	r0, r0, r6
	orr	r0, r0, r4
	strb	r0, [r5, #0x6]
	mov	r4, r9
	ldrb	r0, [r4, #0x4]
	mov	r5, r8
	and	r0, r0, r5
	ldrb	r5, [r7, #0x7]
	mov	r4, sl
	and	r4, r4, r5
	orr	r4, r4, r0
	strb	r4, [r7, #0x7]
	mov	r6, r9
	ldrb	r0, [r6, #0x5]
	mov	r5, r8
	and	r0, r0, r5
	lsl	r0, r0, #0x2
	mov	r5, #0xd
	neg	r5, r5
	and	r5, r5, r4
	orr	r5, r5, r0
	strb	r5, [r7, #0x7]
	ldrb	r4, [r6, #0x6]
	mov	r6, r8
	and	r4, r4, r6
	lsl	r4, r4, #0x4
	mov	r0, #0x31
	neg	r0, r0
	and	r0, r0, r5
	orr	r0, r0, r4
	strb	r0, [r7, #0x7]
	mov	r5, sp
	mov	r6, r9
	ldrb	r4, [r6, #0x7]
	lsl	r4, r4, #0x6
	mov	r6, #0x3f
	and	r0, r0, r6
	orr	r0, r0, r4
	strb	r0, [r5, #0x7]
	mov	r8, sp
	mov	r0, r9
	ldrb	r4, [r0, #0x8]
	mov	r7, #0x3
	add	r0, r7, #0
	and	r0, r0, r4
	mov	r4, r8
	ldrb	r5, [r4, #0x8]
	mov	r4, sl
	and	r4, r4, r5
	orr	r4, r4, r0
	mov	r5, r8
	strb	r4, [r5, #0x8]
	mov	r6, r9
	ldrb	r5, [r6, #0x9]
	add	r0, r7, #0
	and	r0, r0, r5
	lsl	r0, r0, #0x2
	mov	r5, #0xd
	neg	r5, r5
	and	r5, r5, r4
	orr	r5, r5, r0
	mov	r0, r8
	strb	r5, [r0, #0x8]
	ldrb	r0, [r1]
	add	r4, r7, #0
	and	r4, r4, r0
	lsl	r4, r4, #0x4
	mov	r0, #0x31
	neg	r0, r0
	and	r0, r0, r5
	orr	r0, r0, r4
	mov	r4, r8
	strb	r0, [r4, #0x8]
	mov	r5, sp
	ldrb	r4, [r2]
	lsl	r4, r4, #0x6
	mov	r6, #0x3f
	and	r0, r0, r6
	orr	r0, r0, r4
	strb	r0, [r5, #0x8]
	ldrb	r4, [r3]
	add	r0, r7, #0
	and	r0, r0, r4
	ldrb	r4, [r5, #0x9]
	mov	r6, sl
	and	r6, r6, r4
	orr	r6, r6, r0
	mov	sl, r6
	strb	r6, [r5, #0x9]
	ldr	r0, [sp, #0x40]
	ldrb	r4, [r0]
	add	r0, r7, #0
	and	r0, r0, r4
	lsl	r0, r0, #0x2
	mov	r4, #0xd
	neg	r4, r4
	and	r6, r6, r4
	orr	r6, r6, r0
	str	r6, [sp, #0x10]
	strb	r6, [r5, #0x9]
	mov	r4, sp
	ldr	r5, [sp, #0x44]
	ldrb	r0, [r5]
	add	r6, r7, #0
	and	r6, r6, r0
	lsl	r0, r6, #0x4
	sub	r7, r7, #0x34
	ldr	r5, [sp, #0x10]
	and	r7, r7, r5
	orr	r7, r7, r0
	strb	r7, [r4, #0x9]
	mov	r5, sp
	ldrb	r0, [r1, #0x4]
	mov	r6, #0x1
	mov	ip, r6
	mov	r4, ip
	and	r4, r4, r0
	lsl	r4, r4, #0x6
	mov	r0, #0x41
	neg	r0, r0
	mov	sl, r0
	and	r0, r0, r7
	orr	r0, r0, r4
	strb	r0, [r5, #0x9]
	ldrb	r4, [r2, #0x4]
	lsl	r4, r4, #0x7
	mov	r5, #0x7f
	and	r0, r0, r5
	orr	r0, r0, r4
	mov	r4, r8
	strb	r0, [r4, #0x9]
	ldrb	r4, [r3, #0x4]
	mov	r0, ip
	and	r0, r0, r4
	mov	r5, r8
	ldrb	r4, [r5, #0xa]
	mov	r7, #0x2
	neg	r7, r7
	add	r5, r7, #0
	and	r5, r5, r4
	orr	r5, r5, r0
	mov	r6, r8
	strb	r5, [r6, #0xa]
	mov	r9, sp
	ldr	r4, [sp, #0x40]
	ldrb	r0, [r4, #0x4]
	mov	r4, ip
	and	r4, r4, r0
	lsl	r4, r4, #0x1
	mov	r6, #0x3
	neg	r6, r6
	mov	r8, r6
	mov	r0, r8
	and	r0, r0, r5
	orr	r0, r0, r4
	mov	r4, r9
	strb	r0, [r4, #0xa]
	ldr	r6, [sp, #0x44]
	ldrb	r5, [r6, #0x4]
	mov	r4, ip
	and	r4, r4, r5
	lsl	r4, r4, #0x2
	mov	r5, #0x5
	neg	r5, r5
	and	r0, r0, r5
	orr	r0, r0, r4
	mov	r4, r9
	strb	r0, [r4, #0xa]
	mov	r4, sp
	ldrb	r1, [r1, #0x8]
	mov	r0, ip
	and	r0, r0, r1
	lsl	r0, r0, #0x2
	ldrb	r1, [r4, #0xb]
	and	r5, r5, r1
	orr	r5, r5, r0
	strb	r5, [r4, #0xb]
	ldrb	r1, [r2, #0x8]
	mov	r0, ip
	and	r0, r0, r1
	lsl	r0, r0, #0x3
	mov	r1, #0x9
	neg	r1, r1
	and	r1, r1, r5
	orr	r1, r1, r0
	strb	r1, [r4, #0xb]
	ldrb	r2, [r3, #0x8]
	mov	r0, ip
	and	r0, r0, r2
	lsl	r0, r0, #0x4
	mov	r2, #0x11
	neg	r2, r2
	and	r2, r2, r1
	orr	r2, r2, r0
	strb	r2, [r4, #0xb]
	mov	r3, sp
	ldr	r5, [sp, #0x40]
	ldrb	r0, [r5, #0x8]
	mov	r1, ip
	and	r1, r1, r0
	lsl	r1, r1, #0x5
	mov	r0, #0x21
	neg	r0, r0
	and	r0, r0, r2
	orr	r0, r0, r1
	strb	r0, [r3, #0xb]
	mov	r2, sp
	ldrb	r1, [r6, #0x8]
	mov	r6, ip
	and	r6, r6, r1
	lsl	r1, r6, #0x6
	mov	r3, sl
	and	r0, r0, r3
	orr	r0, r0, r1
	strb	r0, [r2, #0xb]
	ldr	r4, [sp, #0x1c]
	lsr	r3, r4, #0x15
	ldrb	r1, [r2, #0xa]
	mov	r0, #0x7
	and	r0, r0, r1
	orr	r0, r0, r3
	strb	r0, [r2, #0xa]
	mov	r1, sp
	ldr	r5, [sp, #0x4c]
	mov	r6, #0x1
	and	r5, r5, r6
	lsl	r2, r5, #0x1
	ldrb	r0, [r1, #0xb]
	mov	r3, r8
	and	r3, r3, r0
	orr	r3, r3, r2
	mov	r8, r3
	strb	r3, [r1, #0xb]
	mov	r0, sp
	ldr	r4, [sp, #0x50]
	and	r4, r4, r6
	mov	r5, r8
	and	r5, r5, r7
	orr	r5, r5, r4
	strb	r5, [r0, #0xb]
	bl	Rfu_SendPacket
	add	sp, sp, #0x20
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe3:
	.size	 SendPacket_GameState,.Lfe3-SendPacket_GameState
	.align	2, 0
	.globl	RecvPacket_GameState
	.type	 RecvPacket_GameState,function
	.thumb_func
RecvPacket_GameState:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	r7, r1, #0
	add	r5, r2, #0
	add	r6, r3, #0
	ldr	r0, [sp, #0x1c]
	mov	ip, r0
	ldr	r1, [sp, #0x20]
	mov	r8, r1
	ldr	r0, [sp, #0x24]
	mov	r9, r0
	add	r2, r7, #0
	add	r2, r2, #0x14
	ldr	r4, .L18
	ldrh	r0, [r4]
	mov	r1, #0xff
	lsl	r1, r1, #0x8
	and	r1, r1, r0
	mov	r0, #0xbc
	lsl	r0, r0, #0x6
	cmp	r1, r0
	bne	.L17	@cond_branch
	add	r3, r4, #0x2
	ldrb	r0, [r4, #0x2]
	cmp	r0, #0x2
	beq	.L15	@cond_branch
.L17:
	mov	r0, #0x0
	b	.L16
.L19:
	.align	2, 0
.L18:
	.word	gRecvCmds
.L15:
	ldrb	r0, [r3, #0x1]
	lsl	r0, r0, #0x1c
	lsr	r0, r0, #0x1c
	strb	r0, [r2, #0xb]
	ldrb	r0, [r3, #0x1]
	lsr	r0, r0, #0x4
	strb	r0, [r2, #0xc]
	ldrb	r0, [r3, #0x2]
	lsl	r0, r0, #0x1c
	lsr	r0, r0, #0x1c
	strb	r0, [r2, #0xd]
	ldrb	r0, [r3, #0x2]
	lsr	r0, r0, #0x4
	strb	r0, [r2, #0xe]
	ldrb	r0, [r3, #0x3]
	lsl	r0, r0, #0x1c
	lsr	r0, r0, #0x1c
	strb	r0, [r2, #0xf]
	ldrb	r0, [r3, #0x3]
	lsr	r0, r0, #0x4
	strb	r0, [r2, #0x10]
	ldrb	r0, [r3, #0x4]
	lsl	r0, r0, #0x1c
	lsr	r0, r0, #0x1c
	strb	r0, [r2, #0x11]
	ldrb	r0, [r3, #0x4]
	lsr	r0, r0, #0x4
	strb	r0, [r2, #0x12]
	ldrb	r0, [r3, #0x5]
	lsl	r0, r0, #0x1c
	lsr	r0, r0, #0x1c
	strb	r0, [r2, #0x13]
	ldrb	r0, [r3, #0x5]
	lsr	r0, r0, #0x4
	strb	r0, [r2, #0x14]
	ldrb	r0, [r3, #0x1]
	lsl	r0, r0, #0x1c
	lsr	r0, r0, #0x1c
	strb	r0, [r2, #0x15]
	ldrb	r0, [r3, #0x6]
	lsl	r0, r0, #0x1e
	lsr	r0, r0, #0x1e
	strb	r0, [r7, #0x14]
	ldrb	r0, [r3, #0x6]
	lsl	r0, r0, #0x1c
	lsr	r0, r0, #0x1e
	strb	r0, [r2, #0x1]
	ldrb	r0, [r3, #0x6]
	lsl	r0, r0, #0x1a
	lsr	r0, r0, #0x1e
	strb	r0, [r2, #0x2]
	ldrb	r0, [r3, #0x6]
	lsr	r0, r0, #0x6
	strb	r0, [r2, #0x3]
	ldrb	r0, [r3, #0x7]
	lsl	r0, r0, #0x1e
	lsr	r0, r0, #0x1e
	strb	r0, [r2, #0x4]
	ldrb	r0, [r3, #0x7]
	lsl	r0, r0, #0x1c
	lsr	r0, r0, #0x1e
	strb	r0, [r2, #0x5]
	ldrb	r0, [r3, #0x7]
	lsl	r0, r0, #0x1a
	lsr	r0, r0, #0x1e
	strb	r0, [r2, #0x6]
	ldrb	r0, [r3, #0x7]
	lsr	r0, r0, #0x6
	strb	r0, [r2, #0x7]
	ldrb	r0, [r3, #0x8]
	lsl	r0, r0, #0x1e
	lsr	r0, r0, #0x1e
	strb	r0, [r2, #0x8]
	ldrb	r0, [r3, #0x8]
	lsl	r0, r0, #0x1c
	lsr	r0, r0, #0x1e
	strb	r0, [r2, #0x9]
	ldrb	r0, [r3, #0x6]
	lsl	r0, r0, #0x1e
	lsr	r0, r0, #0x1e
	strb	r0, [r2, #0xa]
	ldrb	r0, [r3, #0x8]
	lsl	r0, r0, #0x1a
	lsr	r0, r0, #0x1e
	strb	r0, [r5]
	ldrb	r0, [r3, #0x9]
	lsl	r0, r0, #0x19
	lsr	r0, r0, #0x1f
	strb	r0, [r5, #0x4]
	ldrb	r0, [r3, #0xb]
	lsl	r0, r0, #0x1d
	lsr	r0, r0, #0x1f
	strb	r0, [r5, #0x8]
	ldrb	r0, [r3, #0x8]
	lsr	r0, r0, #0x6
	strb	r0, [r6]
	ldrb	r0, [r3, #0x9]
	lsr	r0, r0, #0x7
	strb	r0, [r6, #0x4]
	ldrb	r0, [r3, #0xb]
	lsl	r0, r0, #0x1c
	lsr	r0, r0, #0x1f
	strb	r0, [r6, #0x8]
	ldrb	r0, [r3, #0x9]
	lsl	r0, r0, #0x1e
	lsr	r0, r0, #0x1e
	mov	r1, ip
	strb	r0, [r1]
	ldrb	r0, [r3, #0xa]
	lsl	r0, r0, #0x1f
	lsr	r0, r0, #0x1f
	strb	r0, [r1, #0x4]
	ldrb	r0, [r3, #0xb]
	lsl	r0, r0, #0x1b
	lsr	r0, r0, #0x1f
	strb	r0, [r1, #0x8]
	ldrb	r0, [r3, #0x9]
	lsl	r0, r0, #0x1c
	lsr	r0, r0, #0x1e
	mov	r1, r8
	strb	r0, [r1]
	ldrb	r0, [r3, #0xa]
	lsl	r0, r0, #0x1e
	lsr	r0, r0, #0x1f
	strb	r0, [r1, #0x4]
	ldrb	r0, [r3, #0xb]
	lsl	r0, r0, #0x1a
	lsr	r0, r0, #0x1f
	strb	r0, [r1, #0x8]
	ldrb	r0, [r3, #0x9]
	lsl	r0, r0, #0x1a
	lsr	r0, r0, #0x1e
	mov	r1, r9
	strb	r0, [r1]
	ldrb	r0, [r3, #0xa]
	lsl	r0, r0, #0x1d
	lsr	r0, r0, #0x1f
	strb	r0, [r1, #0x4]
	ldrb	r0, [r3, #0xb]
	lsl	r0, r0, #0x19
	lsr	r0, r0, #0x1f
	strb	r0, [r1, #0x8]
	ldrb	r0, [r3, #0xa]
	lsr	r0, r0, #0x3
	ldr	r1, [sp, #0x28]
	strb	r0, [r1]
	ldrb	r0, [r3, #0xb]
	lsl	r0, r0, #0x1e
	lsr	r0, r0, #0x1f
	ldr	r1, [sp, #0x2c]
	str	r0, [r1]
	ldrb	r0, [r3, #0xb]
	lsl	r0, r0, #0x1f
	lsr	r0, r0, #0x1f
	ldr	r1, [sp, #0x30]
	str	r0, [r1]
	mov	r0, #0x1
.L16:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe4:
	.size	 RecvPacket_GameState,.Lfe4-RecvPacket_GameState
	.align	2, 0
	.globl	SendPacket_PickState
	.type	 SendPacket_PickState,function
	.thumb_func
SendPacket_PickState:
	push	{lr}
	add	sp, sp, #-0x8
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r3, .L21
	ldr	r1, [sp]
	and	r1, r1, r3
	mov	r2, #0x3
	orr	r1, r1, r2
	str	r1, [sp]
	ldr	r1, [sp, #0x4]
	and	r1, r1, r3
	orr	r1, r1, r0
	str	r1, [sp, #0x4]
	mov	r0, sp
	bl	Rfu_SendPacket
	add	sp, sp, #0x8
	pop	{r0}
	bx	r0
.L22:
	.align	2, 0
.L21:
	.word	-0x100
.Lfe5:
	.size	 SendPacket_PickState,.Lfe5-SendPacket_PickState
	.align	2, 0
	.globl	RecvPacket_PickState
	.type	 RecvPacket_PickState,function
	.thumb_func
RecvPacket_PickState:
	push	{r4, lr}
	add	r2, r0, #0
	add	r4, r1, #0
	ldr	r3, .L28
	ldrh	r0, [r3]
	mov	r1, #0xff
	lsl	r1, r1, #0x8
	and	r1, r1, r0
	mov	r0, #0xbc
	lsl	r0, r0, #0x6
	cmp	r1, r0
	bne	.L27	@cond_branch
	lsl	r0, r2, #0x4
	add	r1, r3, #0x2
	add	r1, r0, r1
	ldrb	r0, [r1]
	cmp	r0, #0x3
	beq	.L25	@cond_branch
.L27:
	mov	r0, #0x0
	b	.L26
.L29:
	.align	2, 0
.L28:
	.word	gRecvCmds
.L25:
	ldrb	r0, [r1, #0x4]
	strb	r0, [r4]
	mov	r0, #0x1
.L26:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe6:
	.size	 RecvPacket_PickState,.Lfe6-RecvPacket_PickState
	.align	2, 0
	.globl	SendPacket_ReadyToEnd
	.type	 SendPacket_ReadyToEnd,function
	.thumb_func
SendPacket_ReadyToEnd:
	push	{lr}
	add	sp, sp, #-0x8
	ldr	r2, .L31
	ldr	r1, [sp]
	and	r1, r1, r2
	mov	r2, #0x4
	orr	r1, r1, r2
	str	r1, [sp]
	str	r0, [sp, #0x4]
	mov	r0, sp
	bl	Rfu_SendPacket
	add	sp, sp, #0x8
	pop	{r0}
	bx	r0
.L32:
	.align	2, 0
.L31:
	.word	-0x100
.Lfe7:
	.size	 SendPacket_ReadyToEnd,.Lfe7-SendPacket_ReadyToEnd
	.align	2, 0
	.globl	RecvPacket_ReadyToEnd
	.type	 RecvPacket_ReadyToEnd,function
	.thumb_func
RecvPacket_ReadyToEnd:
	push	{lr}
	add	r2, r0, #0
	ldr	r3, .L38
	ldrh	r0, [r3]
	mov	r1, #0xff
	lsl	r1, r1, #0x8
	and	r1, r1, r0
	mov	r0, #0xbc
	lsl	r0, r0, #0x6
	cmp	r1, r0
	bne	.L37	@cond_branch
	lsl	r0, r2, #0x4
	add	r1, r3, #0x2
	add	r1, r0, r1
	ldrb	r0, [r1]
	cmp	r0, #0x4
	beq	.L35	@cond_branch
.L37:
	mov	r0, #0x0
	b	.L36
.L39:
	.align	2, 0
.L38:
	.word	gRecvCmds
.L35:
	ldr	r0, [r1, #0x4]
.L36:
	pop	{r1}
	bx	r1
.Lfe8:
	.size	 RecvPacket_ReadyToEnd,.Lfe8-RecvPacket_ReadyToEnd
.text
	.align	2, 0 @ Don't pad with nop
