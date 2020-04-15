	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"game.c"
	.text
	.align	2
	.global	initPanda
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPanda, %function
initPanda:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	r0, #8
	mov	r1, #1
	mov	ip, #3
	ldr	r3, .L3
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	ip, [r3, #64]
	str	r1, [r3, #20]
	str	r1, [r3, #16]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	str	r2, [r3, #60]
	bx	lr
.L4:
	.align	2
.L3:
	.word	panda
	.size	initPanda, .-initPanda
	.align	2
	.global	initFood
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFood, %function
initFood:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, #0
	mov	r9, #1
	ldr	r4, .L25
	ldr	r6, .L25+4
	ldr	r8, .L25+8
	ldr	r7, .L25+12
	b	.L15
.L6:
	sub	r3, r5, #5
	cmp	r3, #4
	bls	.L19
	sub	r3, r5, #10
	cmp	r3, #5
	bls	.L20
.L7:
	sub	r3, r5, #16
	cmp	r3, #5
	bls	.L21
.L9:
	sub	r3, r5, #22
	cmp	r3, #6
	bls	.L22
.L10:
	sub	r3, r5, #29
	cmp	r3, #7
	bls	.L23
.L11:
	tst	r5, #1
	moveq	r3, #4
	movne	r3, #3
.L13:
	add	r5, r5, #1
	cmp	r5, #37
	str	r3, [r4, #32]
	add	r4, r4, #40
	beq	.L24
.L15:
	mov	r3, #8
	str	r9, [r4, #36]
	str	r3, [r4, #24]
	str	r3, [r4, #28]
	mov	lr, pc
	bx	r6
	smull	r3, r2, r8, r0
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #7
	rsb	r2, r3, r3, lsl #3
	add	r3, r3, r2, lsl #2
	sub	r0, r0, r3, lsl #3
	str	r0, [r4, #4]
	mov	lr, pc
	bx	r6
	mov	r1, #2
	smull	r3, r2, r7, r0
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #7
	add	r2, r3, r3, lsl #5
	add	r3, r3, r2, lsl r1
	sub	r0, r0, r3
	cmp	r5, #4
	str	r0, [r4]
	str	r1, [r4, #20]
	str	r1, [r4, #16]
	bgt	.L6
	mov	r2, #25
	rsb	r3, r5, r5, lsl #4
	lsl	r3, r3, #1
	add	r3, r3, #15
	str	r3, [r4]
	str	r2, [r4, #4]
	b	.L7
.L24:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L19:
	mov	r3, #30
	mov	r2, #65
	mul	r3, r5, r3
	sub	r3, r3, #150
	str	r3, [r4]
	str	r2, [r4, #4]
	b	.L9
.L23:
	mov	r2, #215
	add	r3, r5, r5, lsl #4
	sub	r3, r3, #488
	sub	r3, r3, #3
	str	r3, [r4]
	str	r2, [r4, #4]
	b	.L11
.L22:
	mov	r3, #20
	mov	r2, #185
	mul	r3, r5, r3
	sub	r3, r3, #428
	sub	r3, r3, #2
	tst	r5, #1
	str	r3, [r4]
	str	r2, [r4, #4]
	moveq	r3, #4
	beq	.L13
	mov	r3, #3
	add	r5, r5, #1
	str	r3, [r4, #32]
	add	r4, r4, #40
	b	.L15
.L21:
	mov	r3, #25
	mov	r2, #145
	mul	r3, r5, r3
	sub	r3, r3, #400
	str	r3, [r4]
	str	r2, [r4, #4]
	b	.L11
.L20:
	mov	r3, #25
	mov	r2, #105
	mul	r3, r5, r3
	sub	r3, r3, #235
	str	r3, [r4]
	str	r2, [r4, #4]
	b	.L10
.L26:
	.align	2
.L25:
	.word	food
	.word	rand
	.word	-1925330167
	.word	-161464935
	.size	initFood, .-initFood
	.align	2
	.global	initEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemies, %function
initEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r3, #0
	mov	lr, #1
	mov	r1, #8
	mov	r0, #2
	mov	r9, #215
	mov	r8, #185
	mov	r7, #20
	mov	r6, #145
	mov	r4, #25
	mov	r5, #105
	ldr	r2, .L42
	b	.L36
.L28:
	sub	ip, r3, #5
	cmp	ip, #4
	bls	.L38
	sub	ip, r3, #10
	cmp	ip, #5
	mulls	ip, r4, r3
	subls	ip, ip, #250
	strls	r5, [r2, #4]
	strls	ip, [r2]
	bls	.L32
.L29:
	sub	ip, r3, #16
	cmp	ip, #5
	bls	.L39
.L31:
	sub	ip, r3, #22
	cmp	ip, #6
	bls	.L40
.L32:
	sub	ip, r3, #29
	cmp	ip, #7
	addls	ip, r3, r3, lsl #4
	subls	ip, ip, #484
	strls	r9, [r2, #4]
	strls	ip, [r2]
.L33:
	add	r3, r3, #1
	cmp	r3, #37
	add	r2, r2, #40
	beq	.L41
.L36:
	cmp	r3, #4
	str	lr, [r2, #36]
	str	r1, [r2, #24]
	str	r1, [r2, #28]
	str	r0, [r2, #20]
	str	r0, [r2, #16]
	str	r1, [r2, #32]
	bgt	.L28
	rsb	ip, r3, r3, lsl #4
	lsl	ip, ip, #1
	str	r4, [r2, #4]
	str	ip, [r2]
	b	.L29
.L41:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L38:
	mov	ip, #30
	mov	r10, #65
	mul	ip, r3, ip
	sub	ip, ip, #141
	str	ip, [r2]
	str	r10, [r2, #4]
	b	.L31
.L40:
	mul	ip, r7, r3
	sub	ip, ip, #440
	str	r8, [r2, #4]
	add	r3, r3, #1
	str	ip, [r2], #40
	b	.L36
.L39:
	mul	ip, r4, r3
	sub	ip, ip, #388
	sub	ip, ip, #3
	str	r6, [r2, #4]
	str	ip, [r2]
	b	.L33
.L43:
	.align	2
.L42:
	.word	enemies
	.size	initEnemies, .-initEnemies
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #0
	mov	lr, #3
	mov	r1, #8
	mov	r2, #1
	mov	ip, #28
	ldr	r0, .L46
	ldr	r3, .L46+4
	str	r4, [r0]
	str	r4, [r3]
	str	r4, [r0, #4]
	ldr	r3, .L46+8
	ldr	r0, .L46+12
	str	r4, [r3, #32]
	str	r4, [r3, #36]
	str	r4, [r3, #44]
	str	r4, [r3, #48]
	str	r4, [r3, #60]
	str	lr, [r3, #64]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	ip, [r0]
	bl	initFood
	bl	initEnemies
	ldr	r3, .L46+16
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L47:
	.align	2
.L46:
	.word	.LANCHOR0
	.word	playerHOff
	.word	panda
	.word	screenBlock
	.word	cheatGame
	.size	initGame, .-initGame
	.align	2
	.global	initBaskets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBaskets, %function
initBaskets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r2, #8
	mov	ip, #1
	mov	r0, #210
	mov	r1, #6
	mov	r5, #47
	mov	r4, #67
	mov	lr, #87
	ldr	r3, .L50
	str	r5, [r3, #8]
	str	r4, [r3, #48]
	str	lr, [r3, #88]
	str	ip, [r3, #36]
	str	ip, [r3, #76]
	str	ip, [r3, #116]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #64]
	str	r2, [r3, #68]
	str	r2, [r3, #104]
	str	r2, [r3, #108]
	str	r0, [r3, #12]
	str	r0, [r3, #52]
	str	r0, [r3, #92]
	str	r1, [r3, #32]
	str	r1, [r3, #72]
	str	r1, [r3, #112]
	pop	{r4, r5, lr}
	bx	lr
.L51:
	.align	2
.L50:
	.word	baskets
	.size	initBaskets, .-initBaskets
	.align	2
	.global	initPandas
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPandas, %function
initPandas:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #47
	mov	r0, #8
	mov	r4, #220
	mov	lr, #7
	mov	r1, #0
	mov	ip, #2
	ldr	r3, .L56
.L53:
	str	r2, [r3, #8]
	add	r2, r2, #20
	cmp	r2, #107
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	r4, [r3, #12]
	str	lr, [r3, #36]
	str	r1, [r3, #44]
	str	r1, [r3, #48]
	str	r1, [r3, #60]
	str	ip, [r3, #64]
	add	r3, r3, #68
	bne	.L53
	pop	{r4, lr}
	bx	lr
.L57:
	.align	2
.L56:
	.word	pandas
	.size	initPandas, .-initPandas
	.global	__aeabi_idivmod
	.align	2
	.global	updatePanda
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePanda, %function
updatePanda:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L107
	ldr	r3, [r4, #36]
	cmp	r3, #6
	movne	r2, #0
	strne	r3, [r4, #40]
	strne	r2, [r4, #36]
	ldr	r1, .L107+4
	ldr	r2, [r4, #32]
	ldr	r3, .L107+8
	mla	r3, r2, r3, r1
	ldr	r1, .L107+12
	cmp	r3, r1
	addhi	r2, r2, #1
	strhi	r2, [r4, #32]
	bhi	.L61
	ldr	r0, [r4, #60]
	ldr	r3, .L107+16
	ldr	r1, [r4, #64]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #60]
.L61:
	ldr	r3, .L107+20
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	bne	.L103
	ldr	r1, [r4, #16]
	sub	ip, r3, r1
	ldr	lr, .L107+24
	add	r1, r2, ip, lsl #10
	lsl	r1, r1, #1
	ldrh	r1, [lr, r1]
	cmp	r1, #0
	lsl	r0, ip, #10
	beq	.L63
	ldr	r1, [r4, #24]
	ldr	r5, [r4, #20]
	add	r1, r2, r1
	sub	r1, r1, r5
	add	r1, r1, r0
	lsl	r1, r1, #1
	ldrh	r1, [lr, r1]
	cmp	r1, #0
	beq	.L63
	cmp	r3, #0
	ble	.L103
	mov	r3, #2
	ldr	r1, .L107+28
	ldr	r0, [r1]
	cmp	r0, #0
	str	ip, [r4, #8]
	str	r3, [r4, #36]
	ble	.L78
	ldr	r3, [r4, #28]
	ldr	lr, [r4]
	add	r3, r3, r3, lsr #31
	add	r3, lr, r3, asr #1
	cmp	r3, #80
	bne	.L78
	sub	r0, r0, #1
	mov	r3, ip
	str	r0, [r1]
	ldr	ip, .L107+32
	b	.L62
.L103:
	ldr	r1, .L107+28
	ldr	ip, .L107+32
.L62:
	ldr	r0, .L107+20
	ldrh	r0, [r0, #48]
	tst	r0, #128
	bne	.L64
	ldr	r5, [r4, #28]
	add	r0, r5, r3
	cmp	r0, #235
	bgt	.L64
	ldr	r7, .L107+24
	add	lr, r2, r0, lsl #10
	lsl	lr, lr, #1
	ldrh	lr, [r7, lr]
	cmp	lr, #0
	lsl	lr, r0, #10
	beq	.L65
	ldr	r0, [r4, #24]
	ldr	r6, [r4, #20]
	add	r0, r2, r0
	sub	r6, r0, r6
	add	lr, r6, lr
	lsl	lr, lr, #1
	ldrh	lr, [r7, lr]
	cmp	lr, #0
	beq	.L65
	mov	r6, #2
	ldr	lr, [r4, #16]
	add	r3, r3, lr
	ldr	lr, [r1]
	cmp	lr, #95
	str	r3, [r4, #8]
	str	r6, [r4, #36]
	bgt	.L66
	ldr	r6, [r4]
	add	r5, r5, r5, lsr #31
	add	r5, r6, r5, asr #1
	cmp	r5, #80
	addeq	lr, lr, #1
	streq	lr, [r1]
.L66:
	ldr	lr, .L107+20
	ldrh	lr, [lr, #48]
	tst	lr, #16
	beq	.L76
	ldr	r0, [ip]
	ldr	r1, [r1]
	sub	r2, r2, r0
	sub	r3, r3, r1
	b	.L74
.L65:
	mov	lr, #70
	mov	r5, #120
	mov	r0, #0
	mov	r6, #28
	mov	r3, lr
	mov	r2, r5
	str	r5, [r4, #4]
	str	r5, [r4, #12]
	ldr	r5, .L107+36
	str	r0, [r1, #4]
	str	r0, [r1]
	str	r0, [ip]
	str	r0, [r5]
	ldr	r0, .L107+40
	str	lr, [r4]
	str	lr, [r4, #8]
	str	r6, [r0]
.L64:
	ldr	r0, .L107+20
	ldrh	r0, [r0, #48]
	tst	r0, #16
	bne	.L67
	ldr	r0, [r4, #24]
	add	r0, r2, r0
.L76:
	cmp	r0, #1004
	blt	.L68
	ldr	r0, [ip]
	ldr	r1, [r1]
	sub	r2, r2, r0
	sub	r3, r3, r1
.L69:
	mov	r1, #1
	str	r1, [r4, #36]
.L74:
	ldr	r1, [r4, #32]
	add	r1, r1, #1
	str	r1, [r4, #32]
	str	r2, [r4, #4]
	str	r3, [r4]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L67:
	ldr	lr, [r4, #36]
	ldr	r0, [ip]
	ldr	r1, [r1]
	cmp	lr, #6
	sub	r2, r2, r0
	sub	r3, r3, r1
	bne	.L74
	mov	r0, #0
	ldr	r1, [r4, #40]
	str	r0, [r4, #60]
	str	r1, [r4, #36]
	str	r2, [r4, #4]
	str	r3, [r4]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L63:
	mov	r0, #0
	mov	r2, #120
	mov	r3, #70
	mov	r5, #28
	ldr	lr, .L107+36
	ldr	r1, .L107+28
	str	r0, [lr]
	ldr	ip, .L107+32
	ldr	lr, .L107+40
	str	r2, [r4, #4]
	str	r2, [r4, #12]
	str	r3, [r4]
	str	r3, [r4, #8]
	str	r0, [r1, #4]
	str	r0, [r1]
	str	r0, [ip]
	str	r5, [lr]
	b	.L62
.L68:
	ldr	r5, .L107+24
	add	lr, r0, r3, lsl #10
	lsl	lr, lr, #1
	ldrh	r6, [r5, lr]
	ldr	lr, .L107+44
	cmp	r6, lr
	beq	.L106
.L70:
	mov	r0, #0
	mov	lr, #70
	mov	r5, #120
	mov	r6, #28
	str	r0, [r1]
	mov	r3, lr
	str	lr, [r4, #8]
	str	r0, [r1, #4]
	ldr	lr, .L107+36
	ldr	r1, .L107+40
	mov	r2, r5
	str	r5, [r4, #12]
	str	r0, [ip]
	str	r0, [lr]
	str	r6, [r1]
	b	.L69
.L106:
	ldr	lr, [r4, #28]
	ldr	r7, [r4, #16]
	add	lr, r3, lr
	sub	lr, lr, r7
	add	r0, r0, lr, lsl #10
	lsl	r0, r0, #1
	ldrh	r0, [r5, r0]
	cmp	r0, r6
	bne	.L70
	ldr	r0, .L107+40
	ldr	r0, [r0]
	ldr	lr, [r1]
	cmp	r0, #30
	add	r0, r2, #1
	sub	r3, r3, lr
	str	r0, [r4, #12]
	ldr	lr, [ip]
	bgt	.L105
	ldr	r5, [r1, #4]
	ldr	r6, .L107+48
	cmp	r5, r6
	bgt	.L105
	ldr	r6, [r4, #4]
	cmp	r6, #120
	ble	.L105
	ldr	r6, .L107+36
	ldr	r0, [r6]
	add	r5, r5, #1
	str	r5, [r1, #4]
	add	r0, r0, #1
	add	r1, lr, #1
	str	r1, [ip]
	str	r0, [r6]
	sub	r2, r2, lr
	b	.L69
.L78:
	mov	r3, ip
	ldr	ip, .L107+32
	b	.L62
.L105:
	sub	r2, r0, lr
	b	.L69
.L108:
	.align	2
.L107:
	.word	panda
	.word	85899345
	.word	-1030792151
	.word	171798690
	.word	__aeabi_idivmod
	.word	67109120
	.word	collisionmap2Bitmap
	.word	.LANCHOR0
	.word	playerHOff
	.word	totalHOff
	.word	screenBlock
	.word	32767
	.word	782
	.size	updatePanda, .-updatePanda
	.align	2
	.global	updatePanda2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePanda2, %function
updatePanda2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L152
	ldr	r3, [r4, #36]
	cmp	r3, #6
	movne	r2, #0
	strne	r3, [r4, #40]
	strne	r2, [r4, #36]
	ldr	r1, .L152+4
	ldr	r2, [r4, #32]
	ldr	r3, .L152+8
	mla	r3, r2, r3, r1
	ldr	r1, .L152+12
	cmp	r3, r1
	addhi	r2, r2, #1
	strhi	r2, [r4, #32]
	bhi	.L112
	ldr	r0, [r4, #60]
	ldr	r3, .L152+16
	ldr	r1, [r4, #64]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #60]
.L112:
	ldr	r3, .L152+20
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	bne	.L113
	cmp	r3, #0
	ble	.L113
	ldr	r1, [r4, #16]
	sub	r1, r3, r1
	ldr	r0, .L152+24
	add	ip, r2, r1, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [r0, ip]
	cmp	ip, #0
	lsl	lr, r1, #8
	bne	.L148
.L113:
	ldr	r1, .L152+20
	ldrh	r1, [r1, #48]
	tst	r1, #128
	bne	.L114
	ldr	r1, [r4]
	cmp	r1, #131
	ble	.L149
.L114:
	ldr	r1, .L152+20
	ldrh	r0, [r1, #48]
	tst	r0, #32
	bne	.L115
	cmp	r2, #0
	ble	.L115
	ldr	ip, [r4, #20]
	sub	ip, r2, ip
	ldr	r0, .L152+24
	add	lr, ip, r3, lsl #8
	lsl	lr, lr, #1
	ldrh	lr, [r0, lr]
	cmp	lr, #0
	lsl	lr, r3, #8
	beq	.L115
	ldr	r5, [r4, #28]
	ldr	r6, [r4, #16]
	add	r5, r3, r5
	sub	r5, r5, r6
	add	ip, ip, r5, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [r0, ip]
	cmp	ip, #0
	beq	.L115
	mov	ip, #1
	ldrh	r1, [r1, #48]
	sub	r2, r2, #1
	tst	r1, #16
	str	r2, [r4, #12]
	str	ip, [r4, #36]
	bne	.L117
	ldr	r1, [r4, #24]
	add	r1, r2, r1
	cmp	r1, #255
	bgt	.L117
	b	.L121
.L115:
	ldr	r1, .L152+20
	ldrh	r1, [r1, #48]
	tst	r1, #16
	beq	.L150
.L118:
	ldr	r1, [r4, #36]
	cmp	r1, #6
	beq	.L151
.L117:
	ldr	r1, [r4, #32]
	add	r1, r1, #1
	str	r1, [r4, #32]
.L119:
	ldr	r1, .L152+28
	ldrh	r1, [r1]
	tst	r1, #1
	beq	.L120
	ldr	r1, .L152+32
	ldrh	r1, [r1]
	tst	r1, #1
	moveq	r0, #1
	ldreq	r1, .L152+36
	streq	r0, [r1]
.L120:
	str	r2, [r4, #4]
	str	r3, [r4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L150:
	ldr	r1, [r4, #24]
	add	r1, r2, r1
	cmp	r1, #255
	bgt	.L118
	ldr	r0, .L152+24
	lsl	lr, r3, #8
.L121:
	add	lr, lr, r1
	lsl	lr, lr, #1
	ldrh	ip, [r0, lr]
	ldr	lr, .L152+40
	cmp	ip, lr
	bne	.L118
	ldr	lr, [r4, #28]
	ldr	r5, [r4, #16]
	add	lr, r3, lr
	sub	lr, lr, r5
	add	r1, r1, lr, lsl #8
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, ip
	bne	.L118
	mov	r1, #1
	add	r2, r2, r1
	str	r2, [r4, #12]
	str	r1, [r4, #36]
	b	.L117
.L149:
	ldr	r1, [r4, #28]
	add	r1, r3, r1
	cmp	r1, #255
	bgt	.L114
	add	ip, r2, r1, lsl #8
	ldr	r0, .L152+24
	lsl	ip, ip, #1
	ldrh	ip, [r0, ip]
	cmp	ip, #0
	lsl	r1, r1, #8
	beq	.L114
	ldr	ip, [r4, #24]
	ldr	lr, [r4, #20]
	add	ip, r2, ip
	sub	ip, ip, lr
	add	r1, ip, r1
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, #0
	movne	r1, #2
	ldrne	r0, [r4, #16]
	addne	r3, r3, r0
	strne	r3, [r4, #8]
	strne	r1, [r4, #36]
	b	.L114
.L151:
	mov	r0, #0
	ldr	r1, [r4, #40]
	str	r0, [r4, #60]
	str	r1, [r4, #36]
	b	.L119
.L148:
	add	r5, r4, #20
	ldm	r5, {r5, ip}
	add	ip, r2, ip
	sub	ip, ip, r5
	add	ip, ip, lr
	lsl	ip, ip, #1
	ldrh	r0, [r0, ip]
	cmp	r0, #0
	movne	r0, #2
	movne	r3, r1
	strne	r1, [r4, #8]
	strne	r0, [r4, #36]
	b	.L113
.L153:
	.align	2
.L152:
	.word	panda
	.word	85899345
	.word	-1030792151
	.word	171798690
	.word	__aeabi_idivmod
	.word	67109120
	.word	collisionmapBitmap
	.word	oldButtons
	.word	buttons
	.word	cheatGame
	.word	32767
	.size	updatePanda2, .-updatePanda2
	.align	2
	.global	checkFoodCollected
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkFoodCollected, %function
checkFoodCollected:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L166
	ldr	r5, .L166+4
	add	r7, r4, #1472
	mov	fp, #5
	ldr	r6, .L166+8
	ldr	r8, .L166+12
	ldr	r10, .L166+16
	sub	sp, sp, #20
	add	r7, r7, #8
	sub	r9, r5, #8
	b	.L159
.L156:
	add	r4, r4, #40
	cmp	r4, r7
	add	r5, r5, #8
	beq	.L165
.L159:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L156
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #28]
	ldr	r1, [r4, #24]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r6, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r6]
	ldr	r0, [r6, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L156
	ldm	r4, {r0, ip}
	mov	r3, #512
	strh	r0, [r5]	@ movhi
	mov	r2, #117440512
	mov	r1, r9
	mov	r0, #3
	strh	fp, [r5, #4]	@ movhi
	strh	ip, [r5, #2]	@ movhi
	mov	lr, pc
	bx	r10
	mov	r3, #0
	ldr	r2, [r4, #32]
	cmp	r2, #4
	str	r3, [r4, #36]
	ldreq	r3, [r6, #44]
	ldrne	r3, [r6, #48]
	addeq	r3, r3, #1
	addne	r3, r3, #1
	add	r4, r4, #40
	streq	r3, [r6, #44]
	strne	r3, [r6, #48]
	cmp	r4, r7
	add	r5, r5, #8
	bne	.L159
.L165:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L167:
	.align	2
.L166:
	.word	food
	.word	shadowOAM+8
	.word	panda
	.word	collision
	.word	DMANow
	.size	checkFoodCollected, .-checkFoodCollected
	.align	2
	.global	checkEnemyCollision
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkEnemyCollision, %function
checkEnemyCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L179
	add	r6, r4, #1472
	ldr	r5, .L179+4
	ldr	r7, .L179+8
	ldr	r8, .L179+12
	sub	sp, sp, #16
	add	r6, r6, #8
	b	.L172
.L170:
	add	r4, r4, #40
	cmp	r4, r6
	beq	.L178
.L172:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L170
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #28]
	ldr	r1, [r4, #24]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	movne	r3, #1
	add	r4, r4, #40
	strne	r3, [r8]
	cmp	r4, r6
	bne	.L172
.L178:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L180:
	.align	2
.L179:
	.word	enemies
	.word	panda
	.word	collision
	.word	hasLost
	.size	checkEnemyCollision, .-checkEnemyCollision
	.align	2
	.global	checkFoodDelivered
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkFoodDelivered, %function
checkFoodDelivered:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L203
	mov	r6, r5
	ldr	r4, .L203+4
	ldr	r9, .L203+8
	ldr	fp, .L203+12
	ldr	r8, .L203+16
	sub	sp, sp, #20
	add	r10, r4, #120
.L188:
	ldrh	r2, [r9]
	tst	r2, #1
	beq	.L182
	ldrh	r7, [fp]
	ands	r7, r7, #1
	beq	.L200
.L182:
	ldr	r3, [r5, #32]
	add	r3, r3, #1
	str	r3, [r5, #32]
.L185:
	tst	r2, #2
	beq	.L186
	ldrh	r2, [fp]
	ands	r7, r2, #2
	beq	.L201
.L186:
	ldr	r3, [r5, #32]
	add	r3, r3, #1
	str	r3, [r5, #32]
.L187:
	add	r4, r4, #40
	cmp	r10, r4
	add	r6, r6, #68
	bne	.L188
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L200:
	ldr	r3, .L203+20
	ldr	r0, [r8, #12]
	ldr	r3, [r3]
	add	r1, r4, #24
	ldm	r1, {r1, ip}
	ldr	r2, [r4]
	sub	r0, r0, r3
	ldr	r3, [r4, #4]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r8, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r8]
	ldr	ip, .L203+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L184
	ldr	r3, [r8, #44]
	cmp	r3, #0
	bgt	.L202
.L184:
	ldrh	r2, [r9]
	b	.L182
.L201:
	ldr	r3, .L203+20
	ldr	r0, [r8, #12]
	ldr	r3, [r3]
	add	r1, r4, #24
	ldm	r1, {r1, ip}
	ldr	r2, [r4]
	sub	r0, r0, r3
	ldr	r3, [r4, #4]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r8, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r8]
	ldr	ip, .L203+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L186
	ldr	r3, [r8, #48]
	cmp	r3, #0
	ble	.L186
	mov	r2, r7
	ldr	r3, .L203+28
	ldr	r1, .L203+32
	ldr	r0, .L203+36
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, [r6, #48]
	add	r3, r3, r2
	str	r3, [r6, #48]
	str	r2, [r6, #60]
	ldr	r3, [r8, #48]
	ldr	r2, [r5, #32]
	sub	r3, r3, #1
	add	r2, r2, #1
	str	r2, [r5, #32]
	str	r3, [r8, #48]
	b	.L187
.L202:
	mov	r2, r7
	ldr	r3, .L203+28
	ldr	r1, .L203+32
	ldr	r0, .L203+36
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, [r6, #44]
	add	r3, r3, r2
	str	r3, [r6, #44]
	str	r2, [r6, #60]
	ldr	r3, [r8, #44]
	ldr	r2, [r5, #32]
	sub	r3, r3, #1
	add	r2, r2, #1
	str	r2, [r5, #32]
	str	r3, [r8, #44]
	ldrh	r2, [r9]
	b	.L185
.L204:
	.align	2
.L203:
	.word	pandas
	.word	baskets
	.word	oldButtons
	.word	buttons
	.word	panda
	.word	totalHOff
	.word	collision
	.word	playSoundB
	.word	21312
	.word	chewSound
	.size	checkFoodDelivered, .-checkFoodDelivered
	.align	2
	.global	drawPanda
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPanda, %function
drawPanda:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L207
	ldr	r3, [r2, #4]
	str	lr, [sp, #-4]!
	ldr	r0, [r2, #36]
	ldr	lr, [r2, #60]
	ldrb	ip, [r2]	@ zero_extendqisi2
	ldr	r1, .L207+4
	lsl	r3, r3, #23
	add	r2, r0, lr, lsl #5
	lsr	r3, r3, #23
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L208:
	.align	2
.L207:
	.word	panda
	.word	shadowOAM
	.size	drawPanda, .-drawPanda
	.align	2
	.global	drawFood
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFood, %function
drawFood:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L225
	ldr	r2, .L225+4
	add	r0, r3, #1472
	add	r0, r0, #8
.L217:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L223
	str	lr, [sp, #-4]!
.L218:
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	ldr	r1, [r3, #32]
	add	r3, r3, #40
	cmp	r3, r0
	strh	lr, [r2, #8]	@ movhi
	strh	ip, [r2, #10]	@ movhi
	strh	r1, [r2, #12]	@ movhi
	add	r2, r2, #8
	beq	.L224
.L211:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	bne	.L218
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L211
.L224:
	ldr	lr, [sp], #4
	bx	lr
.L223:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L217
	bx	lr
.L226:
	.align	2
.L225:
	.word	food
	.word	shadowOAM
	.size	drawFood, .-drawFood
	.align	2
	.global	clearFood
	.syntax unified
	.arm
	.fpu softvfp
	.type	clearFood, %function
clearFood:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	lr, #5
	ldr	r3, .L235
	ldr	r2, .L235+4
	add	r0, r3, #1472
	add	r0, r0, #8
.L229:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	ldrne	ip, [r3]
	ldrne	r1, [r3, #4]
	add	r3, r3, #40
	strhne	lr, [r2, #12]	@ movhi
	strhne	ip, [r2, #8]	@ movhi
	strhne	r1, [r2, #10]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L229
	ldr	lr, [sp], #4
	bx	lr
.L236:
	.align	2
.L235:
	.word	food
	.word	shadowOAM
	.size	clearFood, .-clearFood
	.align	2
	.global	drawEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemies, %function
drawEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L256
	ldr	r2, .L256+4
	add	r0, r3, #1472
	add	r0, r0, #8
.L246:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L254
	str	lr, [sp, #-4]!
.L247:
	ldr	r1, [r3, #32]
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	add	r3, r3, #40
	add	r1, r1, #32
	cmp	r3, r0
	strh	r1, [r2, #4]	@ movhi
	strh	lr, [r2]	@ movhi
	strh	ip, [r2, #2]	@ movhi
	add	r2, r2, #8
	beq	.L255
.L239:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	bne	.L247
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L239
.L255:
	ldr	r3, .L256+8
	ldr	r2, [r3]
	cmp	r2, #100
	moveq	r2, #0
	ldr	lr, [sp], #4
	streq	r2, [r3]
	bx	lr
.L254:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L246
	ldr	r3, .L256+8
	ldr	r2, [r3]
	cmp	r2, #100
	moveq	r2, #0
	streq	r2, [r3]
	bx	lr
.L257:
	.align	2
.L256:
	.word	enemies
	.word	shadowOAM+360
	.word	count
	.size	drawEnemies, .-drawEnemies
	.align	2
	.global	moveEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	moveEnemies, %function
moveEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L274
	ldr	r2, .L274+4
	add	ip, r3, #1472
	add	ip, ip, #8
.L266:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L272
	str	lr, [sp, #-4]!
.L267:
	ldr	r0, [r3]
	ldr	r1, [r3, #32]
	ldr	lr, [r3, #4]
	add	r3, r3, #40
	add	r0, r0, #3
	add	r1, r1, #32
	cmp	r3, ip
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	strh	lr, [r2, #2]	@ movhi
	add	r2, r2, #8
	beq	.L273
.L260:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	bne	.L267
	add	r3, r3, #40
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L260
.L273:
	ldr	lr, [sp], #4
	bx	lr
.L272:
	add	r3, r3, #40
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L266
	bx	lr
.L275:
	.align	2
.L274:
	.word	enemies
	.word	shadowOAM+360
	.size	moveEnemies, .-moveEnemies
	.align	2
	.global	clearEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	clearEnemies, %function
clearEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	lr, #5
	ldr	r3, .L280
	ldr	r2, .L280+4
	add	ip, r3, #1472
	add	ip, ip, #8
.L277:
	ldm	r3, {r0, r1}
	add	r3, r3, #40
	cmp	r3, ip
	strh	lr, [r2, #4]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	add	r2, r2, #8
	bne	.L277
	ldr	lr, [sp], #4
	bx	lr
.L281:
	.align	2
.L280:
	.word	enemies
	.word	shadowOAM+360
	.size	clearEnemies, .-clearEnemies
	.align	2
	.global	drawScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawScore, %function
drawScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	ip, #150
	mov	r4, #141
	mov	lr, #82
	mov	r0, #87
	ldr	r2, .L284
	ldr	r3, .L284+4
	ldr	r1, [r2, #48]
	ldr	r2, [r2, #44]
	add	r5, r3, #324
	add	r1, r1, #8
	strh	r1, [r5]	@ movhi
	add	r2, r2, #8
	add	r1, r3, #332
	strh	r2, [r1]	@ movhi
	add	r2, r3, #320
	add	r3, r3, #328
	strh	r4, [r2]	@ movhi
	strh	lr, [r2, #2]	@ movhi
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L285:
	.align	2
.L284:
	.word	panda
	.word	shadowOAM
	.size	drawScore, .-drawScore
	.align	2
	.global	drawBaskets
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBaskets, %function
drawBaskets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L290
	ldr	r3, .L290+4
	push	{r4, r5, lr}
	ldr	r5, [r2]
	ldr	r4, [r2, #4]
	ldr	r2, .L290+8
	add	lr, r3, #120
.L287:
	add	r0, r3, #8
	ldm	r0, {r0, r1}
	sub	r0, r0, r5
	sub	r1, r1, r4
	ldr	ip, [r3, #32]
	stm	r3, {r0, r1}
	add	r3, r3, #40
	cmp	r3, lr
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	strh	ip, [r2, #4]	@ movhi
	add	r2, r2, #8
	bne	.L287
	pop	{r4, r5, lr}
	bx	lr
.L291:
	.align	2
.L290:
	.word	.LANCHOR0
	.word	baskets
	.word	shadowOAM+256
	.size	drawBaskets, .-drawBaskets
	.align	2
	.global	drawFriendlyPandas
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFriendlyPandas, %function
drawFriendlyPandas:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L296
	ldr	r3, .L296+4
	push	{r4, r5, r6, lr}
	ldr	r6, [r2]
	ldr	r5, [r2, #4]
	ldr	r2, .L296+8
	add	r4, r3, #204
.L293:
	add	r0, r3, #8
	ldm	r0, {r0, r1}
	ldr	lr, [r3, #60]
	ldr	ip, [r3, #36]
	sub	r0, r0, r6
	sub	r1, r1, r5
	stm	r3, {r0, r1}
	add	r3, r3, #68
	add	ip, ip, lr, lsl #5
	cmp	r3, r4
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	strh	ip, [r2, #4]	@ movhi
	add	r2, r2, #8
	bne	.L293
	pop	{r4, r5, r6, lr}
	bx	lr
.L297:
	.align	2
.L296:
	.word	.LANCHOR0
	.word	pandas
	.word	shadowOAM+288
	.size	drawFriendlyPandas, .-drawFriendlyPandas
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #67108864
	mov	r3, #0
	ldr	ip, .L321
	push	{r4, r5, r6, lr}
	ldr	r2, [ip]
	ldr	r6, .L321+4
	strh	r3, [r1, #10]	@ movhi
	ldr	r0, [r6, #4]
	lsl	r3, r2, #24
	orr	r3, r3, #1073741824
	lsr	r3, r3, #16
	cmp	r0, #256
	strh	r3, [r1, #10]	@ movhi
	ble	.L299
	add	r2, r2, #1
	lsl	r3, r2, #24
	orr	r3, r3, #1073741824
	sub	r0, r0, #256
	lsr	r3, r3, #16
	str	r2, [ip]
	str	r0, [r6, #4]
	strh	r3, [r1, #10]	@ movhi
.L299:
	cmp	r2, #31
	beq	.L300
	cmp	r2, #30
	beq	.L320
.L301:
	ldr	r2, .L321+8
	ldr	r3, [r2]
	ldr	r5, .L321+12
	cmp	r3, #512
	subgt	r3, r3, #512
	strgt	r3, [r2]
	bl	updatePanda
	ldr	r1, [r5, #60]
	ldr	r3, [r5, #4]
	ldr	r2, [r5, #36]
	ldr	r4, .L321+16
	add	r2, r2, r1, lsl #5
	lsl	r3, r3, #23
	ldrb	r1, [r5]	@ zero_extendqisi2
	lsr	r3, r3, #23
	strh	r3, [r4, #2]	@ movhi
	strh	r1, [r4]	@ movhi
	strh	r2, [r4, #4]	@ movhi
	bl	checkFoodDelivered
	mov	lr, #141
	mov	ip, #82
	mov	r0, #150
	mov	r1, #87
	add	r2, r5, #44
	ldm	r2, {r2, r3}
	add	r5, r4, #324
	add	r3, r3, #8
	strh	r3, [r5]	@ movhi
	add	r2, r2, #8
	add	r5, r4, #332
	ldr	r3, .L321+20
	strh	r2, [r5]	@ movhi
	add	r2, r4, #320
	strh	lr, [r2]	@ movhi
	strh	ip, [r2, #2]	@ movhi
	ldr	r2, [r3, #44]
	add	r4, r4, #328
	cmp	r2, #5
	strh	r0, [r4]	@ movhi
	strh	r1, [r4, #2]	@ movhi
	beq	.L303
	ldr	r2, [r3, #48]
	cmp	r2, #3
	beq	.L303
.L304:
	mov	r3, #67108864
	ldrh	r2, [r6, #4]
	ldrh	r1, [r6]
	strh	r2, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	ldr	r2, .L321+24
	mov	lr, pc
	bx	r2
	ldr	r4, .L321+28
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L321+16
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L303:
	ldr	r2, [r3, #112]
	cmp	r2, #5
	beq	.L305
	ldr	r2, [r3, #116]
	cmp	r2, #3
	bne	.L304
.L305:
	ldr	r2, [r3, #180]
	cmp	r2, #5
	beq	.L306
	ldr	r3, [r3, #184]
	cmp	r3, #3
	bne	.L304
.L306:
	mov	r2, #1
	ldr	r3, .L321+32
	str	r2, [r3]
	b	.L304
.L320:
	ldr	r3, [r6, #4]
	cmp	r3, #255
	ble	.L301
.L300:
	bl	drawFriendlyPandas
	bl	drawBaskets
	b	.L301
.L322:
	.align	2
.L321:
	.word	screenBlock
	.word	.LANCHOR0
	.word	playerHOff
	.word	panda
	.word	shadowOAM
	.word	pandas
	.word	waitForVBlank
	.word	DMANow
	.word	hasWon
	.size	updateGame, .-updateGame
	.align	2
	.global	resetAnimationFriendly
	.syntax unified
	.arm
	.fpu softvfp
	.type	resetAnimationFriendly, %function
resetAnimationFriendly:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	ldr	r3, .L324
	str	r2, [r3, #60]
	str	r2, [r3, #128]
	str	r2, [r3, #196]
	bx	lr
.L325:
	.align	2
.L324:
	.word	pandas
	.size	resetAnimationFriendly, .-resetAnimationFriendly
	.align	2
	.global	updateGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame2, %function
updateGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r5, .L353
	ldr	r3, [r5]
	add	r3, r3, #1
	str	r3, [r5]
	mov	r6, #141
	bl	updatePanda2
	mov	lr, #82
	mov	ip, #150
	mov	r0, #87
	ldr	r4, .L353+4
	ldr	r3, [r4, #4]
	ldr	r2, .L353+8
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	ldr	r7, [r4, #60]
	strh	r3, [r2, #2]	@ movhi
	ldrb	r3, [r4]	@ zero_extendqisi2
	ldr	r1, [r4, #36]
	strh	r3, [r2]	@ movhi
	ldr	r3, [r4, #48]
	add	r1, r1, r7, lsl #5
	strh	r1, [r2, #4]	@ movhi
	add	r3, r3, #8
	add	r1, r2, #324
	strh	r3, [r1]	@ movhi
	ldr	r3, [r4, #44]
	add	r1, r2, #332
	add	r3, r3, #8
	strh	r3, [r1]	@ movhi
	ldr	r3, .L353+12
	ldr	r1, [r3]
	add	r3, r2, #320
	strh	r6, [r3]	@ movhi
	strh	lr, [r3, #2]	@ movhi
	cmp	r1, #0
	add	r3, r2, #328
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	beq	.L327
	mov	lr, #5
	ldr	r3, .L353+16
	add	r0, r3, #1472
	add	r0, r0, #8
.L329:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	ldrne	ip, [r3]
	ldrne	r1, [r3, #4]
	add	r3, r3, #40
	strhne	lr, [r2, #12]	@ movhi
	strhne	ip, [r2, #8]	@ movhi
	strhne	r1, [r2, #10]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L329
	mov	lr, #5
	ldr	r3, .L353+20
	ldr	r2, .L353+24
	add	ip, r3, #1472
	add	ip, ip, #8
.L330:
	ldm	r3, {r0, r1}
	add	r3, r3, #40
	cmp	r3, ip
	strh	lr, [r2, #4]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	add	r2, r2, #8
	bne	.L330
	mov	r3, #15
	str	r3, [r4, #48]
	str	r3, [r4, #44]
.L331:
	ldr	r4, .L353+28
	ldr	r1, .L353+32
	ldr	r3, [r4, #32]
	ldr	r2, .L353+36
	mla	r3, r1, r3, r2
	ldr	r2, .L353+40
	cmp	r2, r3, ror #3
	movcc	r3, #0
	strcc	r3, [r4, #60]
	strcc	r3, [r4, #128]
	strcc	r3, [r4, #196]
	ldr	r3, .L353+44
	mov	lr, pc
	bx	r3
	ldr	r5, .L353+48
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L353+8
	mov	lr, pc
	bx	r5
	mov	r3, #0
	str	r3, [r4, #60]
	str	r3, [r4, #128]
	str	r3, [r4, #196]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L327:
	ldr	r3, [r5]
	cmp	r3, #49
	bgt	.L332
	ldr	r3, .L353+20
	add	ip, r3, #1472
	add	r2, r2, #360
	add	ip, ip, #8
.L334:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L333
	ldr	r0, [r3]
	ldr	r1, [r3, #32]
	ldr	lr, [r3, #4]
	add	r0, r0, #3
	add	r1, r1, #32
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	strh	lr, [r2, #2]	@ movhi
.L333:
	add	r3, r3, #40
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L334
.L335:
	ldr	r3, .L353+16
	ldr	r2, .L353+8
	add	r0, r3, #1472
	add	r0, r0, #8
.L337:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L336
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	ldr	r1, [r3, #32]
	strh	lr, [r2, #8]	@ movhi
	strh	ip, [r2, #10]	@ movhi
	strh	r1, [r2, #12]	@ movhi
.L336:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L337
	bl	checkFoodCollected
	bl	checkEnemyCollision
	b	.L331
.L332:
	bl	drawEnemies
	b	.L335
.L354:
	.align	2
.L353:
	.word	count
	.word	panda
	.word	shadowOAM
	.word	cheatGame
	.word	food
	.word	enemies
	.word	shadowOAM+360
	.word	pandas
	.word	-1030792151
	.word	85899344
	.word	21474836
	.word	waitForVBlank
	.word	DMANow
	.size	updateGame2, .-updateGame2
	.comm	totalHOff,4,4
	.comm	screenBlock,4,4
	.comm	playerHOff,4,4
	.global	vOff
	.global	hOff
	.comm	count,4,4
	.comm	cheatGame,4,4
	.comm	hasWon,4,4
	.comm	hasLost,4,4
	.comm	pandas,204,4
	.comm	baskets,120,4
	.comm	enemies,1480,4
	.comm	food,1480,4
	.comm	panda,68,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	vOff, %object
	.size	vOff, 4
vOff:
	.space	4
	.type	hOff, %object
	.size	hOff, 4
hOff:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
