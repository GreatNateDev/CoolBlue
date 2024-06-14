@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.globl	gBikeCameraAheadPanback
	.section ewram_data,"aw"
	.type	 gBikeCameraAheadPanback,object
	.size	 gBikeCameraAheadPanback,1
gBikeCameraAheadPanback:
	.byte	0x0
.text
	.align	2, 0
	.type	 move_tilemap_camera_to_upper_left_corner_,function
	.thumb_func
move_tilemap_camera_to_upper_left_corner_:
	mov	r1, #0x0
	strb	r1, [r0, #0x2]
	strb	r1, [r0, #0x3]
	strb	r1, [r0]
	strb	r1, [r0, #0x1]
	mov	r1, #0x1
	strb	r1, [r0, #0x4]
	bx	lr
.Lfe1:
	.size	 move_tilemap_camera_to_upper_left_corner_,.Lfe1-move_tilemap_camera_to_upper_left_corner_
	.align	2, 0
	.type	 tilemap_move_something,function
	.thumb_func
tilemap_move_something:
	ldrb	r3, [r0, #0x2]
	add	r3, r3, r1
	strb	r3, [r0, #0x2]
	ldrb	r1, [r0, #0x2]
	mov	r3, #0x1f
	and	r1, r1, r3
	strb	r1, [r0, #0x2]
	ldrb	r1, [r0, #0x3]
	add	r1, r1, r2
	strb	r1, [r0, #0x3]
	ldrb	r1, [r0, #0x3]
	and	r1, r1, r3
	strb	r1, [r0, #0x3]
	bx	lr
.Lfe2:
	.size	 tilemap_move_something,.Lfe2-tilemap_move_something
	.align	2, 0
	.type	 coords8_add,function
	.thumb_func
coords8_add:
	ldrb	r3, [r0]
	add	r3, r3, r1
	strb	r3, [r0]
	ldrb	r1, [r0, #0x1]
	add	r1, r1, r2
	strb	r1, [r0, #0x1]
	bx	lr
.Lfe3:
	.size	 coords8_add,.Lfe3-coords8_add
	.align	2, 0
	.globl	move_tilemap_camera_to_upper_left_corner
	.type	 move_tilemap_camera_to_upper_left_corner,function
	.thumb_func
move_tilemap_camera_to_upper_left_corner:
	push	{lr}
	ldr	r0, .L8
	bl	move_tilemap_camera_to_upper_left_corner_
	pop	{r0}
	bx	r0
.L9:
	.align	2, 0
.L8:
	.word	sFieldCameraOffset
.Lfe4:
	.size	 move_tilemap_camera_to_upper_left_corner,.Lfe4-move_tilemap_camera_to_upper_left_corner
	.align	2, 0
	.globl	FieldUpdateBgTilemapScroll
	.type	 FieldUpdateBgTilemapScroll,function
	.thumb_func
FieldUpdateBgTilemapScroll:
	push	{r4, r5, lr}
	ldr	r1, .L11
	ldr	r0, .L11+0x4
	mov	r2, #0x0
	ldrsh	r5, [r0, r2]
	ldrb	r0, [r1]
	add	r5, r5, r0
	ldr	r0, .L11+0x8
	mov	r2, #0x0
	ldrsh	r4, [r0, r2]
	ldrb	r1, [r1, #0x1]
	add	r4, r4, r1
	add	r4, r4, #0x8
	lsl	r5, r5, #0x10
	lsr	r5, r5, #0x10
	mov	r0, #0x14
	add	r1, r5, #0
	bl	SetGpuReg
	lsl	r4, r4, #0x10
	lsr	r4, r4, #0x10
	mov	r0, #0x16
	add	r1, r4, #0
	bl	SetGpuReg
	mov	r0, #0x18
	add	r1, r5, #0
	bl	SetGpuReg
	mov	r0, #0x1a
	add	r1, r4, #0
	bl	SetGpuReg
	mov	r0, #0x1c
	add	r1, r5, #0
	bl	SetGpuReg
	mov	r0, #0x1e
	add	r1, r4, #0
	bl	SetGpuReg
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L12:
	.align	2, 0
.L11:
	.word	sFieldCameraOffset
	.word	sHorizontalCameraPan
	.word	sVerticalCameraPan
.Lfe5:
	.size	 FieldUpdateBgTilemapScroll,.Lfe5-FieldUpdateBgTilemapScroll
	.align	2, 0
	.globl	FieldCameraGetPixelOffsetAtGround
	.type	 FieldCameraGetPixelOffsetAtGround,function
	.thumb_func
FieldCameraGetPixelOffsetAtGround:
	push	{r4, lr}
	ldr	r3, .L14
	ldr	r2, .L14+0x4
	ldrh	r2, [r2]
	ldrb	r4, [r3]
	add	r2, r2, r4
	strh	r2, [r0]
	ldr	r0, .L14+0x8
	ldrh	r0, [r0]
	ldrb	r3, [r3, #0x1]
	add	r0, r0, r3
	add	r0, r0, #0x8
	strh	r0, [r1]
	pop	{r4}
	pop	{r0}
	bx	r0
.L15:
	.align	2, 0
.L14:
	.word	sFieldCameraOffset
	.word	sHorizontalCameraPan
	.word	sVerticalCameraPan
.Lfe6:
	.size	 FieldCameraGetPixelOffsetAtGround,.Lfe6-FieldCameraGetPixelOffsetAtGround
	.align	2, 0
	.globl	DrawWholeMapView
	.type	 DrawWholeMapView,function
	.thumb_func
DrawWholeMapView:
	push	{lr}
	ldr	r0, .L17
	ldr	r1, [r0]
	mov	r2, #0x0
	ldrsh	r0, [r1, r2]
	mov	r2, #0x2
	ldrsh	r1, [r1, r2]
	ldr	r2, .L17+0x4
	ldr	r2, [r2]
	bl	DrawWholeMapViewInternal
	pop	{r0}
	bx	r0
.L18:
	.align	2, 0
.L17:
	.word	gSaveBlock1Ptr
	.word	gMapHeader
.Lfe7:
	.size	 DrawWholeMapView,.Lfe7-DrawWholeMapView
	.align	2, 0
	.type	 DrawWholeMapViewInternal,function
	.thumb_func
DrawWholeMapViewInternal:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x4
	mov	sl, r0
	mov	r9, r1
	mov	r8, r2
	mov	r1, #0x0
.L23:
	ldr	r2, .L32
	ldrb	r0, [r2, #0x3]
	add	r0, r1, r0
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1f
	bls	.L24	@cond_branch
	sub	r0, r0, #0x20
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
.L24:
	lsl	r6, r0, #0x5
	mov	r4, #0x0
	add	r7, r1, #0x2
	str	r7, [sp]
	lsr	r5, r1, #0x1
.L28:
	ldr	r1, .L32
	ldrb	r0, [r1, #0x2]
	add	r0, r4, r0
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1f
	bls	.L29	@cond_branch
	sub	r0, r0, #0x20
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
.L29:
	add	r1, r6, r0
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	lsr	r2, r4, #0x1
	add	r2, r2, sl
	mov	r0, r8
	mov	r7, r9
	add	r3, r7, r5
	bl	DrawMetatileAt
	add	r0, r4, #0x2
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	cmp	r4, #0x1f
	bls	.L28	@cond_branch
	ldr	r1, [sp]
	lsl	r0, r1, #0x18
	lsr	r1, r0, #0x18
	cmp	r1, #0x1f
	bls	.L23	@cond_branch
	add	sp, sp, #0x4
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L33:
	.align	2, 0
.L32:
	.word	sFieldCameraOffset
.Lfe8:
	.size	 DrawWholeMapViewInternal,.Lfe8-DrawWholeMapViewInternal
	.align	2, 0
	.type	 RedrawMapSlicesForCameraUpdate,function
	.thumb_func
RedrawMapSlicesForCameraUpdate:
	push	{r4, r5, r6, r7, lr}
	add	r5, r0, #0
	add	r6, r1, #0
	add	r7, r2, #0
	ldr	r0, .L39
	ldr	r4, [r0]
	cmp	r6, #0
	ble	.L35	@cond_branch
	add	r0, r5, #0
	add	r1, r4, #0
	bl	RedrawMapSliceWest
.L35:
	cmp	r6, #0
	bge	.L36	@cond_branch
	add	r0, r5, #0
	add	r1, r4, #0
	bl	RedrawMapSliceEast
.L36:
	cmp	r7, #0
	ble	.L37	@cond_branch
	add	r0, r5, #0
	add	r1, r4, #0
	bl	RedrawMapSliceNorth
.L37:
	cmp	r7, #0
	bge	.L38	@cond_branch
	add	r0, r5, #0
	add	r1, r4, #0
	bl	RedrawMapSliceSouth
.L38:
	mov	r0, #0x1
	strb	r0, [r5, #0x4]
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L40:
	.align	2, 0
.L39:
	.word	gMapHeader
.Lfe9:
	.size	 RedrawMapSlicesForCameraUpdate,.Lfe9-RedrawMapSlicesForCameraUpdate
	.align	2, 0
	.type	 RedrawMapSliceNorth,function
	.thumb_func
RedrawMapSliceNorth:
	push	{r4, r5, r6, r7, lr}
	add	r5, r0, #0
	add	r7, r1, #0
	ldrb	r0, [r5, #0x3]
	add	r0, r0, #0x1c
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1f
	bls	.L42	@cond_branch
	sub	r0, r0, #0x20
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
.L42:
	lsl	r6, r0, #0x5
	mov	r4, #0x0
.L46:
	ldrb	r0, [r5, #0x2]
	add	r0, r4, r0
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1f
	bls	.L47	@cond_branch
	sub	r0, r0, #0x20
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
.L47:
	add	r1, r6, r0
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	ldr	r0, .L49
	ldr	r3, [r0]
	mov	r0, #0x0
	ldrsh	r2, [r3, r0]
	lsr	r0, r4, #0x1
	add	r2, r2, r0
	mov	r0, #0x2
	ldrsh	r3, [r3, r0]
	add	r3, r3, #0xe
	add	r0, r7, #0
	bl	DrawMetatileAt
	add	r0, r4, #0x2
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	cmp	r4, #0x1f
	bls	.L46	@cond_branch
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L50:
	.align	2, 0
.L49:
	.word	gSaveBlock1Ptr
.Lfe10:
	.size	 RedrawMapSliceNorth,.Lfe10-RedrawMapSliceNorth
	.align	2, 0
	.type	 RedrawMapSliceSouth,function
	.thumb_func
RedrawMapSliceSouth:
	push	{r4, r5, r6, r7, lr}
	add	r5, r0, #0
	add	r7, r1, #0
	ldrb	r0, [r5, #0x3]
	lsl	r6, r0, #0x5
	mov	r4, #0x0
.L55:
	ldrb	r0, [r5, #0x2]
	add	r0, r4, r0
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1f
	bls	.L56	@cond_branch
	sub	r0, r0, #0x20
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
.L56:
	add	r1, r6, r0
	ldr	r0, .L58
	ldr	r3, [r0]
	mov	r0, #0x0
	ldrsh	r2, [r3, r0]
	lsr	r0, r4, #0x1
	add	r2, r2, r0
	mov	r0, #0x2
	ldrsh	r3, [r3, r0]
	add	r0, r7, #0
	bl	DrawMetatileAt
	add	r0, r4, #0x2
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	cmp	r4, #0x1f
	bls	.L55	@cond_branch
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L59:
	.align	2, 0
.L58:
	.word	gSaveBlock1Ptr
.Lfe11:
	.size	 RedrawMapSliceSouth,.Lfe11-RedrawMapSliceSouth
	.align	2, 0
	.type	 RedrawMapSliceEast,function
	.thumb_func
RedrawMapSliceEast:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	r5, r0, #0
	mov	r8, r1
	ldrb	r6, [r5, #0x2]
	mov	r4, #0x0
.L64:
	ldrb	r0, [r5, #0x3]
	add	r0, r4, r0
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1f
	bls	.L65	@cond_branch
	sub	r0, r0, #0x20
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
.L65:
	lsl	r1, r0, #0x5
	add	r1, r1, r6
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	ldr	r0, .L67
	ldr	r0, [r0]
	mov	r3, #0x0
	ldrsh	r2, [r0, r3]
	mov	r7, #0x2
	ldrsh	r3, [r0, r7]
	lsr	r0, r4, #0x1
	add	r3, r3, r0
	mov	r0, r8
	bl	DrawMetatileAt
	add	r0, r4, #0x2
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	cmp	r4, #0x1f
	bls	.L64	@cond_branch
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L68:
	.align	2, 0
.L67:
	.word	gSaveBlock1Ptr
.Lfe12:
	.size	 RedrawMapSliceEast,.Lfe12-RedrawMapSliceEast
	.align	2, 0
	.type	 RedrawMapSliceWest,function
	.thumb_func
RedrawMapSliceWest:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	r6, r0, #0
	mov	r8, r1
	ldrb	r0, [r6, #0x2]
	add	r0, r0, #0x1c
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	cmp	r5, #0x1f
	bls	.L70	@cond_branch
	add	r0, r5, #0
	sub	r0, r0, #0x20
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
.L70:
	mov	r4, #0x0
.L74:
	ldrb	r0, [r6, #0x3]
	add	r0, r4, r0
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1f
	bls	.L75	@cond_branch
	sub	r0, r0, #0x20
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
.L75:
	lsl	r1, r0, #0x5
	add	r1, r1, r5
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	ldr	r0, .L77
	ldr	r0, [r0]
	mov	r3, #0x0
	ldrsh	r2, [r0, r3]
	add	r2, r2, #0xe
	mov	r7, #0x2
	ldrsh	r3, [r0, r7]
	lsr	r0, r4, #0x1
	add	r3, r3, r0
	mov	r0, r8
	bl	DrawMetatileAt
	add	r0, r4, #0x2
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	cmp	r4, #0x1f
	bls	.L74	@cond_branch
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L78:
	.align	2, 0
.L77:
	.word	gSaveBlock1Ptr
.Lfe13:
	.size	 RedrawMapSliceWest,.Lfe13-RedrawMapSliceWest
	.align	2, 0
	.globl	CurrentMapDrawMetatileAt
	.type	 CurrentMapDrawMetatileAt,function
	.thumb_func
CurrentMapDrawMetatileAt:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	ldr	r0, .L81
	add	r1, r4, #0
	add	r2, r5, #0
	bl	MapPosToBgTilemapOffset
	add	r1, r0, #0
	cmp	r1, #0
	blt	.L80	@cond_branch
	ldr	r0, .L81+0x4
	ldr	r0, [r0]
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	add	r2, r4, #0
	add	r3, r5, #0
	bl	DrawMetatileAt
.L80:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L82:
	.align	2, 0
.L81:
	.word	sFieldCameraOffset
	.word	gMapHeader
.Lfe14:
	.size	 CurrentMapDrawMetatileAt,.Lfe14-CurrentMapDrawMetatileAt
	.align	2, 0
	.globl	DrawDoorMetatileAt
	.type	 DrawDoorMetatileAt,function
	.thumb_func
DrawDoorMetatileAt:
	push	{r4, r5, lr}
	add	r3, r0, #0
	add	r4, r1, #0
	add	r5, r2, #0
	ldr	r0, .L85
	add	r1, r3, #0
	add	r2, r4, #0
	bl	MapPosToBgTilemapOffset
	cmp	r0, #0
	blt	.L84	@cond_branch
	lsl	r2, r0, #0x10
	lsr	r2, r2, #0x10
	mov	r0, #0x1
	add	r1, r5, #0
	bl	DrawMetatile
.L84:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L86:
	.align	2, 0
.L85:
	.word	sFieldCameraOffset
.Lfe15:
	.size	 DrawDoorMetatileAt,.Lfe15-DrawDoorMetatileAt
	.align	2, 0
	.type	 DrawMetatileAt,function
	.thumb_func
DrawMetatileAt:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	r5, r0, #0
	add	r6, r2, #0
	add	r7, r3, #0
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	mov	r8, r1
	add	r0, r6, #0
	add	r1, r7, #0
	bl	MapGridGetMetatileIdAt
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
	mov	r0, #0x80
	lsl	r0, r0, #0x3
	cmp	r4, r0
	bls	.L88	@cond_branch
	mov	r4, #0x0
.L88:
	ldr	r0, .L91
	cmp	r4, r0
	bhi	.L89	@cond_branch
	ldr	r0, [r5, #0x10]
	ldr	r5, [r0, #0xc]
	b	.L90
.L92:
	.align	2, 0
.L91:
	.word	0x27f
.L89:
	ldr	r0, [r5, #0x14]
	ldr	r5, [r0, #0xc]
	ldr	r1, .L93
	add	r0, r4, r1
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
.L90:
	lsl	r0, r6, #0x10
	asr	r0, r0, #0x10
	lsl	r1, r7, #0x10
	asr	r1, r1, #0x10
	bl	MapGridGetMetatileLayerTypeAt
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r4, #0x4
	add	r1, r5, r1
	mov	r2, r8
	bl	DrawMetatile
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L94:
	.align	2, 0
.L93:
	.word	-0x280
.Lfe16:
	.size	 DrawMetatileAt,.Lfe16-DrawMetatileAt
	.align	2, 0
	.type	 DrawMetatile,function
	.thumb_func
DrawMetatile:
	push	{r4, lr}
	add	r4, r1, #0
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	cmp	r0, #0x1
	beq	.L98	@cond_branch
	cmp	r0, #0x1
	bgt	.L102	@cond_branch
	cmp	r0, #0
	beq	.L99	@cond_branch
	b	.L96
.L102:
	cmp	r0, #0x2
	bne	.L96	@cond_branch
	ldr	r0, .L104
	ldr	r0, [r0]
	lsl	r3, r2, #0x1
	add	r0, r3, r0
	ldrh	r1, [r4]
	strh	r1, [r0]
	ldrh	r1, [r4, #0x2]
	strh	r1, [r0, #0x2]
	add	r2, r0, #0
	add	r2, r2, #0x40
	ldrh	r1, [r4, #0x4]
	strh	r1, [r2]
	add	r0, r0, #0x42
	ldrh	r1, [r4, #0x6]
	strh	r1, [r0]
	ldr	r0, .L104+0x4
	ldr	r0, [r0]
	add	r0, r3, r0
	mov	r2, #0x0
	strh	r2, [r0]
	strh	r2, [r0, #0x2]
	add	r1, r0, #0
	add	r1, r1, #0x40
	strh	r2, [r1]
	add	r0, r0, #0x42
	strh	r2, [r0]
	b	.L103
.L105:
	.align	2, 0
.L104:
	.word	gBGTilemapBuffers3
	.word	gBGTilemapBuffers1
.L98:
	ldr	r0, .L106
	ldr	r0, [r0]
	lsl	r3, r2, #0x1
	add	r0, r3, r0
	ldrh	r1, [r4]
	strh	r1, [r0]
	ldrh	r1, [r4, #0x2]
	strh	r1, [r0, #0x2]
	add	r2, r0, #0
	add	r2, r2, #0x40
	ldrh	r1, [r4, #0x4]
	strh	r1, [r2]
	add	r0, r0, #0x42
	ldrh	r1, [r4, #0x6]
	strh	r1, [r0]
	ldr	r0, .L106+0x4
	ldr	r0, [r0]
	add	r0, r3, r0
	ldrh	r1, [r4, #0x8]
	strh	r1, [r0]
	ldrh	r1, [r4, #0xa]
	strh	r1, [r0, #0x2]
	add	r2, r0, #0
	add	r2, r2, #0x40
	ldrh	r1, [r4, #0xc]
	strh	r1, [r2]
	add	r0, r0, #0x42
	ldrh	r1, [r4, #0xe]
	strh	r1, [r0]
	ldr	r0, .L106+0x8
	ldr	r0, [r0]
	add	r3, r3, r0
	mov	r1, #0x0
	strh	r1, [r3]
	strh	r1, [r3, #0x2]
	add	r0, r3, #0
	add	r0, r0, #0x40
	strh	r1, [r0]
	add	r3, r3, #0x42
	strh	r1, [r3]
	b	.L96
.L107:
	.align	2, 0
.L106:
	.word	gBGTilemapBuffers3
	.word	gBGTilemapBuffers1
	.word	gBGTilemapBuffers2
.L99:
	ldr	r0, .L108
	ldr	r0, [r0]
	lsl	r3, r2, #0x1
	add	r0, r3, r0
	ldr	r1, .L108+0x4
	add	r2, r1, #0
	strh	r2, [r0]
	strh	r2, [r0, #0x2]
	add	r1, r0, #0
	add	r1, r1, #0x40
	strh	r2, [r1]
	add	r0, r0, #0x42
	strh	r2, [r0]
	ldr	r0, .L108+0x8
	ldr	r0, [r0]
	add	r0, r3, r0
	ldrh	r1, [r4]
	strh	r1, [r0]
	ldrh	r1, [r4, #0x2]
	strh	r1, [r0, #0x2]
	add	r2, r0, #0
	add	r2, r2, #0x40
	ldrh	r1, [r4, #0x4]
	strh	r1, [r2]
	add	r0, r0, #0x42
	ldrh	r1, [r4, #0x6]
	strh	r1, [r0]
.L103:
	ldr	r0, .L108+0xc
	ldr	r0, [r0]
	add	r3, r3, r0
	ldrh	r0, [r4, #0x8]
	strh	r0, [r3]
	ldrh	r0, [r4, #0xa]
	strh	r0, [r3, #0x2]
	add	r1, r3, #0
	add	r1, r1, #0x40
	ldrh	r0, [r4, #0xc]
	strh	r0, [r1]
	add	r3, r3, #0x42
	ldrh	r0, [r4, #0xe]
	strh	r0, [r3]
.L96:
	mov	r0, #0x1
	bl	ScheduleBgCopyTilemapToVram
	mov	r0, #0x2
	bl	ScheduleBgCopyTilemapToVram
	mov	r0, #0x3
	bl	ScheduleBgCopyTilemapToVram
	pop	{r4}
	pop	{r0}
	bx	r0
.L109:
	.align	2, 0
.L108:
	.word	gBGTilemapBuffers3
	.word	0x3014
	.word	gBGTilemapBuffers1
	.word	gBGTilemapBuffers2
.Lfe17:
	.size	 DrawMetatile,.Lfe17-DrawMetatile
	.align	2, 0
	.type	 MapPosToBgTilemapOffset,function
	.thumb_func
MapPosToBgTilemapOffset:
	push	{r4, r5, lr}
	add	r4, r0, #0
	ldr	r0, .L117
	ldr	r3, [r0]
	mov	r5, #0x0
	ldrsh	r0, [r3, r5]
	sub	r1, r1, r0
	lsl	r1, r1, #0x1
	cmp	r1, #0x1f
	bhi	.L116	@cond_branch
	ldrb	r0, [r4, #0x2]
	add	r1, r1, r0
	cmp	r1, #0x1f
	ble	.L112	@cond_branch
	sub	r1, r1, #0x20
.L112:
	mov	r5, #0x2
	ldrsh	r0, [r3, r5]
	sub	r0, r2, r0
	lsl	r2, r0, #0x1
	cmp	r2, #0x1f
	bls	.L113	@cond_branch
.L116:
	mov	r0, #0x1
	neg	r0, r0
	b	.L115
.L118:
	.align	2, 0
.L117:
	.word	gSaveBlock1Ptr
.L113:
	ldrb	r0, [r4, #0x3]
	add	r2, r2, r0
	cmp	r2, #0x1f
	ble	.L114	@cond_branch
	sub	r2, r2, #0x20
.L114:
	lsl	r0, r2, #0x5
	add	r0, r0, r1
.L115:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe18:
	.size	 MapPosToBgTilemapOffset,.Lfe18-MapPosToBgTilemapOffset
	.align	2, 0
	.type	 CameraUpdateCallback,function
	.thumb_func
CameraUpdateCallback:
	push	{lr}
	add	r3, r0, #0
	ldr	r2, [r3, #0x4]
	cmp	r2, #0
	beq	.L120	@cond_branch
	ldr	r1, .L121
	lsl	r0, r2, #0x4
	add	r0, r0, r2
	lsl	r0, r0, #0x2
	add	r0, r0, r1
	mov	r2, #0x32
	ldrsh	r1, [r0, r2]
	str	r1, [r3, #0x8]
	mov	r1, #0x34
	ldrsh	r0, [r0, r1]
	str	r0, [r3, #0xc]
.L120:
	pop	{r0}
	bx	r0
.L122:
	.align	2, 0
.L121:
	.word	gSprites
.Lfe19:
	.size	 CameraUpdateCallback,.Lfe19-CameraUpdateCallback
	.align	2, 0
	.globl	ResetCameraUpdateInfo
	.type	 ResetCameraUpdateInfo,function
	.thumb_func
ResetCameraUpdateInfo:
	ldr	r1, .L124
	mov	r0, #0x0
	str	r0, [r1, #0x8]
	str	r0, [r1, #0xc]
	str	r0, [r1, #0x10]
	str	r0, [r1, #0x14]
	str	r0, [r1, #0x4]
	str	r0, [r1]
	bx	lr
.L125:
	.align	2, 0
.L124:
	.word	gFieldCamera
.Lfe20:
	.size	 ResetCameraUpdateInfo,.Lfe20-ResetCameraUpdateInfo
	.align	2, 0
	.globl	InitCameraUpdateCallback
	.type	 InitCameraUpdateCallback,function
	.thumb_func
InitCameraUpdateCallback:
	push	{r4, r5, lr}
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	ldr	r4, .L128
	ldr	r1, [r4, #0x4]
	cmp	r1, #0
	beq	.L127	@cond_branch
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	ldr	r1, .L128+0x4
	add	r0, r0, r1
	bl	DestroySprite
.L127:
	add	r0, r5, #0
	bl	AddCameraObject
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	str	r0, [r4, #0x4]
	ldr	r0, .L128+0x8
	str	r0, [r4]
	mov	r0, #0x0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L129:
	.align	2, 0
.L128:
	.word	gFieldCamera
	.word	gSprites
	.word	CameraUpdateCallback
.Lfe21:
	.size	 InitCameraUpdateCallback,.Lfe21-InitCameraUpdateCallback
	.align	2, 0
	.globl	CameraUpdate
	.type	 CameraUpdate,function
	.thumb_func
CameraUpdate:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r6, .L148
	ldr	r1, [r6]
	cmp	r1, #0
	beq	.L131	@cond_branch
	add	r0, r6, #0
	bl	_call_via_r1
.L131:
	ldr	r7, [r6, #0x8]
	ldr	r0, [r6, #0xc]
	mov	r8, r0
	mov	r4, #0x0
	mov	r5, #0x0
	ldr	r1, [r6, #0x10]
	ldr	r0, [r6, #0x14]
	cmp	r1, #0
	bne	.L132	@cond_branch
	cmp	r7, #0
	beq	.L132	@cond_branch
	sub	r4, r4, #0x1
	cmp	r7, #0
	ble	.L132	@cond_branch
	mov	r4, #0x1
.L132:
	cmp	r0, #0
	bne	.L135	@cond_branch
	mov	r2, r8
	cmp	r2, #0
	beq	.L135	@cond_branch
	mov	r5, #0x1
	neg	r5, r5
	cmp	r2, #0
	ble	.L135	@cond_branch
	mov	r5, #0x1
.L135:
	cmp	r1, #0
	beq	.L138	@cond_branch
	cmn	r1, r7
	bne	.L138	@cond_branch
	mov	r4, #0x1
	neg	r4, r4
	cmp	r7, #0
	ble	.L138	@cond_branch
	mov	r4, #0x1
.L138:
	cmp	r0, #0
	beq	.L141	@cond_branch
	mov	r3, r8
	cmn	r0, r3
	bne	.L141	@cond_branch
	mov	r4, #0x1
	neg	r4, r4
	cmp	r3, #0
	ble	.L141	@cond_branch
	mov	r4, #0x1
.L141:
	ldr	r2, .L148
	ldr	r0, [r2, #0x10]
	add	r1, r0, r7
	str	r1, [r2, #0x10]
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L144	@cond_branch
	add	r0, r0, #0xf
.L144:
	asr	r0, r0, #0x4
	lsl	r0, r0, #0x4
	sub	r0, r1, r0
	str	r0, [r2, #0x10]
	ldr	r0, [r2, #0x14]
	mov	r3, r8
	add	r1, r0, r3
	str	r1, [r2, #0x14]
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L145	@cond_branch
	add	r0, r0, #0xf
.L145:
	asr	r0, r0, #0x4
	lsl	r0, r0, #0x4
	sub	r0, r1, r0
	str	r0, [r2, #0x14]
	cmp	r4, #0
	bne	.L147	@cond_branch
	cmp	r5, #0
	beq	.L146	@cond_branch
.L147:
	add	r0, r4, #0
	add	r1, r5, #0
	bl	CameraMove
	add	r0, r4, #0
	add	r1, r5, #0
	bl	UpdateObjectEventsForCameraUpdate
	ldr	r6, .L148+0x4
	lsl	r4, r4, #0x1
	lsl	r5, r5, #0x1
	add	r0, r6, #0
	add	r1, r4, #0
	add	r2, r5, #0
	bl	tilemap_move_something
	add	r0, r6, #0
	add	r1, r4, #0
	add	r2, r5, #0
	bl	RedrawMapSlicesForCameraUpdate
.L146:
	ldr	r0, .L148+0x4
	add	r1, r7, #0
	mov	r2, r8
	bl	coords8_add
	ldr	r1, .L148+0x8
	ldrh	r0, [r1]
	sub	r0, r0, r7
	strh	r0, [r1]
	ldr	r1, .L148+0xc
	ldrh	r0, [r1]
	mov	r2, r8
	sub	r0, r0, r2
	strh	r0, [r1]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L149:
	.align	2, 0
.L148:
	.word	gFieldCamera
	.word	sFieldCameraOffset
	.word	gTotalCameraPixelOffsetX
	.word	gTotalCameraPixelOffsetY
.Lfe22:
	.size	 CameraUpdate,.Lfe22-CameraUpdate
	.align	2, 0
	.globl	MoveCameraAndRedrawMap
	.type	 MoveCameraAndRedrawMap,function
	.thumb_func
MoveCameraAndRedrawMap:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	bl	CameraMove
	lsl	r0, r4, #0x10
	asr	r0, r0, #0x10
	lsl	r1, r5, #0x10
	asr	r1, r1, #0x10
	bl	UpdateObjectEventsForCameraUpdate
	bl	DrawWholeMapView
	ldr	r1, .L151
	lsl	r4, r4, #0x4
	ldrh	r0, [r1]
	sub	r0, r0, r4
	strh	r0, [r1]
	ldr	r1, .L151+0x4
	lsl	r5, r5, #0x4
	ldrh	r0, [r1]
	sub	r0, r0, r5
	strh	r0, [r1]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L152:
	.align	2, 0
.L151:
	.word	gTotalCameraPixelOffsetX
	.word	gTotalCameraPixelOffsetY
.Lfe23:
	.size	 MoveCameraAndRedrawMap,.Lfe23-MoveCameraAndRedrawMap
	.align	2, 0
	.globl	CameraUpdateNoObjectRefresh
	.type	 CameraUpdateNoObjectRefresh,function
	.thumb_func
CameraUpdateNoObjectRefresh:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r4, .L171
	ldr	r1, [r4]
	cmp	r1, #0
	beq	.L154	@cond_branch
	add	r0, r4, #0
	bl	_call_via_r1
.L154:
	ldr	r7, [r4, #0x8]
	ldr	r0, [r4, #0xc]
	mov	r8, r0
	mov	r5, #0x0
	mov	r6, #0x0
	ldr	r1, [r4, #0x10]
	ldr	r0, [r4, #0x14]
	cmp	r1, #0
	bne	.L155	@cond_branch
	cmp	r7, #0
	beq	.L155	@cond_branch
	sub	r5, r5, #0x1
	cmp	r7, #0
	ble	.L155	@cond_branch
	mov	r5, #0x1
.L155:
	cmp	r0, #0
	bne	.L158	@cond_branch
	mov	r2, r8
	cmp	r2, #0
	beq	.L158	@cond_branch
	mov	r6, #0x1
	neg	r6, r6
	cmp	r2, #0
	ble	.L158	@cond_branch
	mov	r6, #0x1
.L158:
	cmp	r1, #0
	beq	.L161	@cond_branch
	cmn	r1, r7
	bne	.L161	@cond_branch
	mov	r5, #0x1
	neg	r5, r5
	cmp	r7, #0
	ble	.L161	@cond_branch
	mov	r5, #0x1
.L161:
	cmp	r0, #0
	beq	.L164	@cond_branch
	mov	r3, r8
	cmn	r0, r3
	bne	.L164	@cond_branch
	mov	r5, #0x1
	neg	r5, r5
	cmp	r3, #0
	ble	.L164	@cond_branch
	mov	r5, #0x1
.L164:
	ldr	r2, .L171
	ldr	r0, [r2, #0x10]
	add	r1, r0, r7
	str	r1, [r2, #0x10]
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L167	@cond_branch
	add	r0, r0, #0xf
.L167:
	asr	r0, r0, #0x4
	lsl	r0, r0, #0x4
	sub	r0, r1, r0
	str	r0, [r2, #0x10]
	ldr	r0, [r2, #0x14]
	mov	r3, r8
	add	r1, r0, r3
	str	r1, [r2, #0x14]
	add	r0, r1, #0
	cmp	r1, #0
	bge	.L168	@cond_branch
	add	r0, r0, #0xf
.L168:
	asr	r0, r0, #0x4
	lsl	r0, r0, #0x4
	sub	r0, r1, r0
	str	r0, [r2, #0x14]
	cmp	r5, #0
	bne	.L170	@cond_branch
	cmp	r6, #0
	beq	.L169	@cond_branch
.L170:
	add	r0, r5, #0
	add	r1, r6, #0
	bl	CameraMove
	ldr	r4, .L171+0x4
	lsl	r5, r5, #0x1
	lsl	r6, r6, #0x1
	add	r0, r4, #0
	add	r1, r5, #0
	add	r2, r6, #0
	bl	tilemap_move_something
	add	r0, r4, #0
	add	r1, r5, #0
	add	r2, r6, #0
	bl	RedrawMapSlicesForCameraUpdate
.L169:
	ldr	r0, .L171+0x4
	add	r1, r7, #0
	mov	r2, r8
	bl	coords8_add
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L172:
	.align	2, 0
.L171:
	.word	gFieldCamera
	.word	sFieldCameraOffset
.Lfe24:
	.size	 CameraUpdateNoObjectRefresh,.Lfe24-CameraUpdateNoObjectRefresh
	.align	2, 0
	.globl	SetCameraPanningCallback
	.type	 SetCameraPanningCallback,function
	.thumb_func
SetCameraPanningCallback:
	ldr	r1, .L174
	str	r0, [r1]
	bx	lr
.L175:
	.align	2, 0
.L174:
	.word	sFieldCameraPanningCallback
.Lfe25:
	.size	 SetCameraPanningCallback,.Lfe25-SetCameraPanningCallback
	.align	2, 0
	.globl	SetCameraPanning
	.type	 SetCameraPanning,function
	.thumb_func
SetCameraPanning:
	ldr	r2, .L177
	strh	r0, [r2]
	ldr	r0, .L177+0x4
	lsl	r1, r1, #0x10
	asr	r1, r1, #0x10
	add	r1, r1, #0x20
	strh	r1, [r0]
	bx	lr
.L178:
	.align	2, 0
.L177:
	.word	sHorizontalCameraPan
	.word	sVerticalCameraPan
.Lfe26:
	.size	 SetCameraPanning,.Lfe26-SetCameraPanning
	.align	2, 0
	.globl	InstallCameraPanAheadCallback
	.type	 InstallCameraPanAheadCallback,function
	.thumb_func
InstallCameraPanAheadCallback:
	ldr	r1, .L180
	ldr	r0, .L180+0x4
	str	r0, [r1]
	ldr	r1, .L180+0x8
	mov	r0, #0x0
	strb	r0, [r1]
	ldr	r1, .L180+0xc
	mov	r0, #0x0
	strh	r0, [r1]
	ldr	r1, .L180+0x10
	mov	r0, #0x20
	strh	r0, [r1]
	bx	lr
.L181:
	.align	2, 0
.L180:
	.word	sFieldCameraPanningCallback
	.word	CameraPanningCB_PanAhead
	.word	sBikeCameraPanFlag
	.word	sHorizontalCameraPan
	.word	sVerticalCameraPan
.Lfe27:
	.size	 InstallCameraPanAheadCallback,.Lfe27-InstallCameraPanAheadCallback
	.align	2, 0
	.globl	UpdateCameraPanning
	.type	 UpdateCameraPanning,function
	.thumb_func
UpdateCameraPanning:
	push	{lr}
	ldr	r0, .L184
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.L183	@cond_branch
	bl	_call_via_r0
.L183:
	ldr	r2, .L184+0x4
	ldr	r0, .L184+0x8
	ldr	r1, .L184+0xc
	ldrh	r0, [r0]
	ldrh	r1, [r1]
	sub	r0, r0, r1
	strh	r0, [r2]
	ldr	r2, .L184+0x10
	ldr	r0, .L184+0x14
	ldr	r1, .L184+0x18
	ldrh	r0, [r0]
	ldrh	r1, [r1]
	sub	r0, r0, r1
	sub	r0, r0, #0x8
	strh	r0, [r2]
	pop	{r0}
	bx	r0
.L185:
	.align	2, 0
.L184:
	.word	sFieldCameraPanningCallback
	.word	gSpriteCoordOffsetX
	.word	gTotalCameraPixelOffsetX
	.word	sHorizontalCameraPan
	.word	gSpriteCoordOffsetY
	.word	gTotalCameraPixelOffsetY
	.word	sVerticalCameraPan
.Lfe28:
	.size	 UpdateCameraPanning,.Lfe28-UpdateCameraPanning
	.align	2, 0
	.type	 CameraPanningCB_PanAhead,function
	.thumb_func
CameraPanningCB_PanAhead:
	push	{lr}
	ldr	r0, .L202
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.L187	@cond_branch
	bl	InstallCameraPanAheadCallback
	b	.L186
.L203:
	.align	2, 0
.L202:
	.word	gBikeCameraAheadPanback
.L187:
	ldr	r0, .L204
	ldrb	r0, [r0, #0x3]
	cmp	r0, #0x1
	bne	.L189	@cond_branch
	ldr	r0, .L204+0x4
	ldrb	r1, [r0]
	mov	r2, #0x1
	eor	r1, r1, r2
	strb	r1, [r0]
	cmp	r1, #0
	beq	.L186	@cond_branch
	b	.L191
.L205:
	.align	2, 0
.L204:
	.word	gPlayerAvatar
	.word	sBikeCameraPanFlag
.L189:
	ldr	r1, .L206
	mov	r0, #0x0
	strb	r0, [r1]
.L191:
	bl	GetPlayerMovementDirection
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x2
	bne	.L192	@cond_branch
	ldr	r2, .L206+0x4
	ldrh	r3, [r2]
	mov	r0, #0x0
	ldrsh	r1, [r2, r0]
	mov	r0, #0x8
	neg	r0, r0
	cmp	r1, r0
	ble	.L186	@cond_branch
	sub	r0, r3, #0x2
	b	.L201
.L207:
	.align	2, 0
.L206:
	.word	sBikeCameraPanFlag
	.word	sVerticalCameraPan
.L192:
	cmp	r0, #0x1
	bne	.L195	@cond_branch
	ldr	r1, .L208
	ldrh	r2, [r1]
	mov	r3, #0x0
	ldrsh	r0, [r1, r3]
	cmp	r0, #0x47
	bgt	.L186	@cond_branch
	add	r0, r2, #0x2
	strh	r0, [r1]
	b	.L186
.L209:
	.align	2, 0
.L208:
	.word	sVerticalCameraPan
.L195:
	ldr	r2, .L210
	ldrh	r0, [r2]
	mov	r3, #0x0
	ldrsh	r1, [r2, r3]
	cmp	r1, #0x1f
	bgt	.L198	@cond_branch
	add	r0, r0, #0x2
	b	.L201
.L211:
	.align	2, 0
.L210:
	.word	sVerticalCameraPan
.L198:
	cmp	r1, #0x20
	ble	.L186	@cond_branch
	sub	r0, r0, #0x2
.L201:
	strh	r0, [r2]
.L186:
	pop	{r0}
	bx	r0
.Lfe29:
	.size	 CameraPanningCB_PanAhead,.Lfe29-CameraPanningCB_PanAhead
	.comm	gFieldCamera, 24	@ 24
	.comm	gTotalCameraPixelOffsetX, 4	@ 2
	.comm	gTotalCameraPixelOffsetY, 4	@ 2

	.lcomm	sFieldCameraOffset,8

	.lcomm	sHorizontalCameraPan,2

	.lcomm	sVerticalCameraPan,2

	.lcomm	sBikeCameraPanFlag,1

	.lcomm	sFieldCameraPanningCallback,4
.text
	.align	2, 0 @ Don't pad with nop
