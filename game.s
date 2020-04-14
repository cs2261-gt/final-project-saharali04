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
	push	{r4, lr}
	mov	r2, #0
	mov	r0, #8
	mov	r4, #76
	mov	lr, #66
	mov	r1, #1
	mov	ip, #3
	ldr	r3, .L4
	str	r4, [r3, #12]
	str	lr, [r3, #8]
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
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
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
	mov	r9, #0
	mov	r8, #1
	ldr	r4, .L12
	ldr	r5, .L12+4
	ldr	r7, .L12+8
	ldr	r6, .L12+12
.L8:
	mov	r3, #8
	str	r8, [r4, #36]
	str	r3, [r4, #24]
	str	r3, [r4, #28]
	mov	lr, pc
	bx	r5
	smull	r3, r2, r7, r0
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #7
	rsb	r2, r3, r3, lsl #3
	add	r3, r3, r2, lsl #2
	sub	r0, r0, r3, lsl #3
	str	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	mov	r1, #2
	tst	r9, #1
	moveq	ip, #4
	movne	ip, #3
	smull	r3, r2, r6, r0
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #7
	add	r2, r3, r3, lsl #5
	add	r9, r9, #1
	add	r3, r3, r2, lsl r1
	sub	r3, r0, r3
	cmp	r9, #30
	str	r3, [r4]
	str	ip, [r4, #32]
	str	r1, [r4, #20]
	str	r1, [r4, #16]
	add	r4, r4, #40
	bne	.L8
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L13:
	.align	2
.L12:
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
	mov	r9, #1
	ldr	r4, .L18
	ldr	r5, .L18+4
	ldr	r8, .L18+8
	ldr	r7, .L18+12
	add	r6, r4, #600
.L15:
	mov	r10, #8
	str	r9, [r4, #36]
	str	r10, [r4, #24]
	str	r10, [r4, #28]
	mov	lr, pc
	bx	r5
	smull	r3, r2, r8, r0
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #7
	rsb	r2, r3, r3, lsl #3
	rsb	r3, r3, r2, lsl #4
	sub	r0, r0, r3, lsl #1
	str	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	mov	r1, #2
	smull	r3, r2, r7, r0
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #7
	add	r2, r3, r3, lsl #5
	add	r3, r3, r2, lsl r1
	sub	r3, r0, r3
	str	r10, [r4, #32]
	str	r3, [r4]
	str	r1, [r4, #20]
	str	r1, [r4, #16]
	add	r4, r4, #40
	cmp	r4, r6
	bne	.L15
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	enemies
	.word	rand
	.word	-1818589755
	.word	-161464935
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
	push	{r4, r5, r6, lr}
	mov	r4, #0
	mov	r0, #3
	mov	lr, #66
	mov	r1, #8
	mov	r2, #1
	mov	ip, #28
	mov	r5, #76
	ldr	r3, .L22
	str	r4, [r3]
	ldr	r3, .L22+4
	str	r4, [r3]
	str	r4, [r3, #4]
	ldr	r3, .L22+8
	str	r0, [r3, #64]
	ldr	r0, .L22+12
	str	r4, [r3, #32]
	str	r4, [r3, #36]
	str	r4, [r3, #44]
	str	r4, [r3, #48]
	str	r4, [r3, #60]
	str	r5, [r3, #12]
	str	lr, [r3, #8]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	ip, [r0]
	bl	initFood
	bl	initEnemies
	ldr	r3, .L22+16
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	playerHOff
	.word	.LANCHOR0
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
	ldr	r3, .L26
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
.L27:
	.align	2
.L26:
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
	ldr	r3, .L32
.L29:
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
	bne	.L29
	pop	{r4, lr}
	bx	lr
.L33:
	.align	2
.L32:
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L70
	ldr	r3, [r4, #36]
	cmp	r3, #6
	movne	r2, #0
	strne	r3, [r4, #40]
	strne	r2, [r4, #36]
	ldr	r1, .L70+4
	ldr	r2, [r4, #32]
	ldr	r3, .L70+8
	mla	r3, r2, r3, r1
	ldr	r1, .L70+12
	cmp	r3, r1
	addhi	r2, r2, #1
	strhi	r2, [r4, #32]
	bhi	.L37
	ldr	r0, [r4, #60]
	ldr	r3, .L70+16
	ldr	r1, [r4, #64]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #60]
.L37:
	ldr	r3, .L70+20
	ldrh	r3, [r3, #48]
	ldr	r5, .L70+24
	tst	r3, #64
	ldr	ip, [r5]
	ldr	r3, [r4, #8]
	ldr	r0, [r4, #12]
	bne	.L38
	ldr	r2, [r4, #16]
	sub	r2, r3, r2
	ldr	lr, .L70+28
	add	r1, r0, r2, lsl #10
	lsl	r1, r1, #1
	ldrh	r1, [lr, r1]
	cmp	r1, #0
	lsl	r6, r2, #10
	bne	.L68
.L38:
	ldr	r2, .L70+20
	ldrh	r2, [r2, #48]
	tst	r2, #128
	bne	.L39
	ldr	r1, [r4, #28]
	add	r2, r1, r3
	cmp	r2, #235
	bgt	.L39
	add	lr, r0, r2, lsl #10
	ldr	r7, .L70+28
	lsl	lr, lr, #1
	ldrh	lr, [r7, lr]
	cmp	lr, #0
	lsl	r2, r2, #10
	beq	.L39
	add	r6, r4, #20
	ldm	r6, {r6, lr}
	add	lr, r0, lr
	sub	r6, lr, r6
	add	r2, r6, r2
	lsl	r2, r2, #1
	ldrh	r2, [r7, r2]
	cmp	r2, #0
	beq	.L39
	mov	r2, #2
	ldr	r6, [r4, #16]
	cmp	ip, #95
	add	r3, r3, r6
	str	r3, [r4, #8]
	str	r2, [r4, #36]
	bgt	.L40
	ldr	r2, [r4]
	add	r1, r1, r1, lsr #31
	add	r1, r2, r1, asr #1
	cmp	r1, #80
	addeq	ip, ip, #1
	streq	ip, [r5]
.L40:
	ldr	r2, .L70+20
	ldrh	r2, [r2, #48]
	ldr	r1, .L70+32
	tst	r2, #16
	ldr	r2, [r1]
	beq	.L45
	b	.L43
.L39:
	ldr	r2, .L70+20
	ldrh	r2, [r2, #48]
	ldr	r1, .L70+32
	tst	r2, #16
	ldr	r2, [r1]
	bne	.L41
	ldr	lr, [r4, #24]
	add	lr, r0, lr
.L45:
	cmp	lr, #1008
	bgt	.L42
	ldr	r7, .L70+28
	add	r6, lr, r3, lsl #10
	lsl	r6, r6, #1
	ldrh	r8, [r7, r6]
	ldr	r6, .L70+36
	cmp	r8, r6
	beq	.L69
.L42:
	mov	r1, #1
	str	r1, [r4, #36]
.L43:
	ldr	r1, [r4, #32]
	add	r1, r1, #1
	str	r1, [r4, #32]
	b	.L44
.L41:
	ldr	r1, [r4, #36]
	cmp	r1, #6
	bne	.L43
	mov	lr, #0
	ldr	r1, [r4, #40]
	str	lr, [r4, #60]
	str	r1, [r4, #36]
.L44:
	sub	r2, r0, r2
	sub	r3, r3, ip
	str	r2, [r4, #4]
	str	r3, [r4]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L68:
	ldr	r1, [r4, #24]
	ldr	r7, [r4, #20]
	add	r1, r0, r1
	sub	r1, r1, r7
	add	r1, r1, r6
	lsl	r1, r1, #1
	ldrh	r1, [lr, r1]
	cmp	r1, #0
	cmpne	r3, #0
	ble	.L38
	mov	r3, #2
	cmp	ip, #0
	str	r2, [r4, #8]
	str	r3, [r4, #36]
	ble	.L47
	ldr	r3, [r4, #28]
	ldr	r1, [r4]
	add	r3, r3, r3, lsr #31
	add	r3, r1, r3, asr #1
	cmp	r3, #80
	subeq	ip, ip, #1
	moveq	r3, r2
	streq	ip, [r5]
	beq	.L38
.L47:
	mov	r3, r2
	b	.L38
.L69:
	ldr	r6, [r4, #28]
	ldr	r9, [r4, #16]
	add	r6, r3, r6
	sub	r6, r6, r9
	add	lr, lr, r6, lsl #10
	lsl	lr, lr, #1
	ldrh	lr, [r7, lr]
	cmp	lr, r8
	bne	.L42
	ldr	lr, .L70+40
	ldr	lr, [lr]
	add	r0, r0, #1
	cmp	lr, #30
	str	r0, [r4, #12]
	bgt	.L42
	ldr	lr, [r5, #4]
	cmp	lr, #256
	addle	lr, lr, #1
	addle	r2, r2, #1
	strle	lr, [r5, #4]
	strle	r2, [r1]
	b	.L42
.L71:
	.align	2
.L70:
	.word	panda
	.word	85899345
	.word	-1030792151
	.word	171798690
	.word	__aeabi_idivmod
	.word	67109120
	.word	.LANCHOR0
	.word	collisionmap2Bitmap
	.word	playerHOff
	.word	32767
	.word	screenBlock
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L123
	ldr	r3, [r4, #36]
	cmp	r3, #6
	movne	r2, #0
	strne	r3, [r4, #40]
	strne	r2, [r4, #36]
	ldr	r1, .L123+4
	ldr	r2, [r4, #32]
	ldr	r3, .L123+8
	mla	r3, r2, r3, r1
	ldr	r1, .L123+12
	cmp	r3, r1
	addhi	r2, r2, #1
	strhi	r2, [r4, #32]
	bhi	.L75
	ldr	r0, [r4, #60]
	ldr	r3, .L123+16
	ldr	r1, [r4, #64]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #60]
.L75:
	ldr	r3, .L123+20
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	bne	.L119
	cmp	r3, #0
	ble	.L119
	ldr	ip, [r4, #16]
	sub	ip, r3, ip
	ldr	r0, .L123+24
	add	r1, r2, ip, lsl #8
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, #0
	lsl	lr, ip, #8
	bne	.L114
.L119:
	ldr	lr, .L123+28
.L76:
	ldr	r1, .L123+20
	ldrh	r1, [r1, #48]
	tst	r1, #128
	bne	.L77
	ldr	r1, [r4]
	cmp	r1, #131
	ble	.L120
.L77:
	ldr	r1, .L123+20
	ldrh	r1, [r1, #48]
	tst	r1, #32
	ldr	r1, [lr, #4]
	bne	.L78
	cmp	r2, #0
	ble	.L78
	ldr	ip, [r4, #20]
	sub	ip, r2, ip
	ldr	r0, .L123+24
	add	r5, ip, r3, lsl #8
	lsl	r5, r5, #1
	ldrh	r5, [r0, r5]
	cmp	r5, #0
	lsl	r5, r3, #8
	beq	.L78
	ldr	r6, [r4, #28]
	ldr	r7, [r4, #16]
	add	r6, r3, r6
	sub	r6, r6, r7
	add	ip, ip, r6, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [r0, ip]
	cmp	ip, #0
	beq	.L78
	mov	ip, #1
	sub	r2, r2, #1
	cmp	r1, #0
	str	r2, [r4, #12]
	str	ip, [r4, #36]
	ble	.L79
	ldr	ip, [r4, #4]
	cmp	ip, #120
	suble	r1, r1, #1
	strle	r1, [lr, #4]
.L79:
	ldr	ip, .L123+20
	ldrh	ip, [ip, #48]
	tst	ip, #16
	bne	.L82
	ldr	ip, [r4, #24]
	add	ip, r2, ip
	cmp	ip, #255
	bgt	.L82
	b	.L85
.L78:
	ldr	r0, .L123+20
	ldrh	r0, [r0, #48]
	tst	r0, #16
	beq	.L121
.L80:
	ldr	r0, [r4, #36]
	cmp	r0, #6
	beq	.L122
.L82:
	ldr	r0, [r4, #32]
	add	r0, r0, #1
	str	r0, [r4, #32]
.L83:
	ldr	r0, .L123+32
	ldrh	r0, [r0]
	tst	r0, #1
	beq	.L84
	ldr	r0, .L123+36
	ldrh	r0, [r0]
	tst	r0, #1
	moveq	ip, #1
	ldreq	r0, .L123+40
	streq	ip, [r0]
.L84:
	ldr	r0, [lr]
	sub	r2, r2, r1
	sub	r3, r3, r0
	str	r3, [r4]
	str	r2, [r4, #4]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L121:
	ldr	ip, [r4, #24]
	add	ip, r2, ip
	cmp	ip, #255
	bgt	.L80
	ldr	r0, .L123+24
	lsl	r5, r3, #8
.L85:
	add	r5, r5, ip
	lsl	r5, r5, #1
	ldrh	r6, [r0, r5]
	ldr	r5, .L123+44
	cmp	r6, r5
	bne	.L80
	ldr	r5, [r4, #28]
	ldr	r7, [r4, #16]
	add	r5, r3, r5
	sub	r5, r5, r7
	add	ip, ip, r5, lsl #8
	lsl	ip, ip, #1
	ldrh	r0, [r0, ip]
	cmp	r0, r6
	bne	.L80
	mov	r0, #1
	cmp	r1, #15
	add	r2, r2, r0
	str	r2, [r4, #12]
	str	r0, [r4, #36]
	bgt	.L82
	ldr	r0, [r4, #4]
	cmp	r0, #119
	addgt	r1, r1, #1
	strgt	r1, [lr, #4]
	b	.L82
.L120:
	ldr	r6, [r4, #28]
	add	ip, r6, r3
	cmp	ip, #255
	bgt	.L77
	add	r5, r2, ip, lsl #8
	ldr	r0, .L123+24
	lsl	r5, r5, #1
	ldrh	r5, [r0, r5]
	cmp	r5, #0
	lsl	ip, ip, #8
	beq	.L77
	ldr	r5, [r4, #24]
	ldr	r7, [r4, #20]
	add	r5, r2, r5
	sub	r5, r5, r7
	add	ip, r5, ip
	lsl	ip, ip, #1
	ldrh	r0, [r0, ip]
	cmp	r0, #0
	beq	.L77
	mov	ip, #2
	ldr	r0, [r4, #16]
	add	r3, r3, r0
	ldr	r0, [lr]
	cmp	r0, #95
	str	r3, [r4, #8]
	str	ip, [r4, #36]
	bgt	.L77
	add	r6, r6, r6, lsr #31
	add	r1, r1, r6, asr #1
	cmp	r1, #80
	addeq	r0, r0, #1
	streq	r0, [lr]
	b	.L77
.L122:
	mov	ip, #0
	ldr	r0, [r4, #40]
	str	ip, [r4, #60]
	str	r0, [r4, #36]
	b	.L83
.L114:
	ldr	r1, [r4, #24]
	ldr	r5, [r4, #20]
	add	r1, r2, r1
	sub	r1, r1, r5
	add	r1, r1, lr
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, #0
	beq	.L119
	mov	r3, #2
	ldr	lr, .L123+28
	ldr	r1, [lr]
	cmp	r1, #0
	str	ip, [r4, #8]
	str	r3, [r4, #36]
	ble	.L87
	ldr	r3, [r4, #28]
	ldr	r0, [r4]
	add	r3, r3, r3, lsr #31
	add	r3, r0, r3, asr #1
	cmp	r3, #80
	subeq	r1, r1, #1
	moveq	r3, ip
	streq	r1, [lr]
	beq	.L76
.L87:
	mov	r3, ip
	b	.L76
.L124:
	.align	2
.L123:
	.word	panda
	.word	85899345
	.word	-1030792151
	.word	171798690
	.word	__aeabi_idivmod
	.word	67109120
	.word	collisionmapBitmap
	.word	.LANCHOR0
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
	ldr	r4, .L137
	ldr	r5, .L137+4
	mov	fp, #5
	ldr	r6, .L137+8
	ldr	r8, .L137+12
	ldr	r10, .L137+16
	sub	sp, sp, #20
	add	r7, r4, #1200
	sub	r9, r5, #8
	b	.L130
.L127:
	add	r4, r4, #40
	cmp	r4, r7
	add	r5, r5, #8
	beq	.L136
.L130:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L127
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
	beq	.L127
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
	bne	.L130
.L136:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L138:
	.align	2
.L137:
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
	ldr	r4, .L150
	ldr	r5, .L150+4
	ldr	r7, .L150+8
	ldr	r8, .L150+12
	sub	sp, sp, #16
	add	r6, r4, #600
	b	.L143
.L141:
	add	r4, r4, #40
	cmp	r4, r6
	beq	.L149
.L143:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L141
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
	bne	.L143
.L149:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L151:
	.align	2
.L150:
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
	ldr	r4, .L174
	mov	r6, r4
	ldr	r5, .L174+4
	ldr	r9, .L174+8
	ldr	fp, .L174+12
	ldr	r8, .L174+16
	sub	sp, sp, #20
	add	r10, r5, #120
.L159:
	ldrh	r2, [r9]
	tst	r2, #1
	beq	.L153
	ldrh	r7, [fp]
	ands	r7, r7, #1
	beq	.L171
.L153:
	ldr	r3, [r4, #32]
	add	r3, r3, #1
	str	r3, [r4, #32]
.L156:
	tst	r2, #2
	beq	.L157
	ldrh	r2, [fp]
	ands	r7, r2, #2
	beq	.L172
.L157:
	ldr	r3, [r4, #32]
	add	r3, r3, #1
	str	r3, [r4, #32]
.L158:
	add	r5, r5, #40
	cmp	r10, r5
	add	r6, r6, #68
	bne	.L159
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L171:
	mov	r0, #47
	mov	r1, #210
	ldr	r2, [r5, #28]
	ldr	r3, [r5, #24]
	str	r0, [sp, #4]
	str	r1, [sp]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	add	r2, r8, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r8]
	ldr	r0, [r8, #4]
	ldr	ip, .L174+20
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L155
	ldr	r3, [r8, #44]
	cmp	r3, #0
	bgt	.L173
.L155:
	ldrh	r2, [r9]
	b	.L153
.L172:
	ldm	r5, {r2, r3}
	ldr	r0, [r5, #28]
	ldr	r1, [r5, #24]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r8, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r8]
	ldr	r0, [r8, #4]
	ldr	ip, .L174+20
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L157
	ldr	r3, [r8, #48]
	cmp	r3, #0
	ble	.L157
	mov	r2, r7
	ldr	r3, .L174+24
	ldr	r1, .L174+28
	ldr	r0, .L174+32
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, [r6, #48]
	add	r3, r3, r2
	str	r3, [r6, #48]
	str	r2, [r6, #60]
	ldr	r3, [r8, #48]
	ldr	r2, [r4, #32]
	sub	r3, r3, #1
	add	r2, r2, #1
	str	r2, [r4, #32]
	str	r3, [r8, #48]
	b	.L158
.L173:
	mov	r2, r7
	ldr	r3, .L174+24
	ldr	r1, .L174+28
	ldr	r0, .L174+32
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, [r6, #44]
	add	r3, r3, r2
	str	r3, [r6, #44]
	str	r2, [r6, #60]
	ldr	r3, [r8, #44]
	ldr	r2, [r4, #32]
	sub	r3, r3, #1
	add	r2, r2, #1
	str	r2, [r4, #32]
	str	r3, [r8, #44]
	ldrh	r2, [r9]
	b	.L156
.L175:
	.align	2
.L174:
	.word	pandas
	.word	baskets
	.word	oldButtons
	.word	buttons
	.word	panda
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
	ldr	r2, .L178
	ldr	r3, [r2, #4]
	str	lr, [sp, #-4]!
	ldr	r0, [r2, #36]
	ldr	lr, [r2, #60]
	ldrb	ip, [r2]	@ zero_extendqisi2
	ldr	r1, .L178+4
	lsl	r3, r3, #23
	add	r2, r0, lr, lsl #5
	lsr	r3, r3, #23
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L179:
	.align	2
.L178:
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
	ldr	r3, .L196
	ldr	r2, .L196+4
	add	r0, r3, #1200
.L188:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L194
	str	lr, [sp, #-4]!
.L189:
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	ldr	r1, [r3, #32]
	add	r3, r3, #40
	cmp	r3, r0
	strh	lr, [r2, #8]	@ movhi
	strh	ip, [r2, #10]	@ movhi
	strh	r1, [r2, #12]	@ movhi
	add	r2, r2, #8
	beq	.L195
.L182:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	bne	.L189
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L182
.L195:
	ldr	lr, [sp], #4
	bx	lr
.L194:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L188
	bx	lr
.L197:
	.align	2
.L196:
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
	ldr	r3, .L206
	ldr	r2, .L206+4
	add	r0, r3, #1200
.L200:
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
	bne	.L200
	ldr	lr, [sp], #4
	bx	lr
.L207:
	.align	2
.L206:
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
	ldr	r3, .L227
	ldr	r2, .L227+4
	add	r0, r3, #600
.L217:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L225
	str	lr, [sp, #-4]!
.L218:
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
	beq	.L226
.L210:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	bne	.L218
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L210
.L226:
	ldr	r3, .L227+8
	ldr	r2, [r3]
	cmp	r2, #100
	moveq	r2, #0
	ldr	lr, [sp], #4
	streq	r2, [r3]
	bx	lr
.L225:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L217
	ldr	r3, .L227+8
	ldr	r2, [r3]
	cmp	r2, #100
	moveq	r2, #0
	streq	r2, [r3]
	bx	lr
.L228:
	.align	2
.L227:
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
	ldr	r3, .L245
	ldr	r2, .L245+4
	add	ip, r3, #600
.L237:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L243
	str	lr, [sp, #-4]!
.L238:
	ldr	r0, [r3, #4]
	ldr	r1, [r3, #32]
	ldr	lr, [r3]
	add	r3, r3, #40
	add	r0, r0, #5
	add	r1, r1, #32
	cmp	r3, ip
	strh	r0, [r2, #2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	strh	lr, [r2]	@ movhi
	add	r2, r2, #8
	beq	.L244
.L231:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	bne	.L238
	add	r3, r3, #40
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L231
.L244:
	ldr	lr, [sp], #4
	bx	lr
.L243:
	add	r3, r3, #40
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L237
	bx	lr
.L246:
	.align	2
.L245:
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
	ldr	r3, .L251
	ldr	r2, .L251+4
	add	ip, r3, #600
.L248:
	ldm	r3, {r0, r1}
	add	r3, r3, #40
	cmp	r3, ip
	strh	lr, [r2, #4]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	add	r2, r2, #8
	bne	.L248
	ldr	lr, [sp], #4
	bx	lr
.L252:
	.align	2
.L251:
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
	ldr	r2, .L255
	ldr	r3, .L255+4
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
.L256:
	.align	2
.L255:
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
	ldr	r2, .L261
	ldr	r3, .L261+4
	push	{r4, r5, lr}
	ldr	r5, [r2]
	ldr	r4, [r2, #4]
	ldr	r2, .L261+8
	add	lr, r3, #120
.L258:
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
	bne	.L258
	pop	{r4, r5, lr}
	bx	lr
.L262:
	.align	2
.L261:
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
	ldr	r2, .L267
	ldr	r3, .L267+4
	push	{r4, r5, r6, lr}
	ldr	r6, [r2]
	ldr	r5, [r2, #4]
	ldr	r2, .L267+8
	add	r4, r3, #204
.L264:
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
	bne	.L264
	pop	{r4, r5, r6, lr}
	bx	lr
.L268:
	.align	2
.L267:
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
	ldr	ip, .L279
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r2, [ip]
	ldr	r6, .L279+4
	strh	r3, [r1, #10]	@ movhi
	ldr	r0, [r6, #4]
	lsl	r3, r2, #24
	orr	r3, r3, #1073741824
	lsr	r3, r3, #16
	cmp	r0, #256
	strh	r3, [r1, #10]	@ movhi
	ble	.L270
	add	r2, r2, #1
	lsl	r3, r2, #24
	orr	r3, r3, #1073741824
	sub	r0, r0, #256
	lsr	r3, r3, #16
	str	r2, [ip]
	str	r0, [r6, #4]
	strh	r3, [r1, #10]	@ movhi
.L270:
	cmp	r2, #31
	beq	.L271
	cmp	r2, #30
	beq	.L278
.L272:
	ldr	r2, .L279+8
	ldr	r3, [r2]
	ldr	r5, .L279+12
	cmp	r3, #512
	subgt	r3, r3, #512
	strgt	r3, [r2]
	bl	updatePanda
	ldr	r1, [r5, #60]
	ldr	r3, [r5, #4]
	ldr	r2, [r5, #36]
	ldr	r4, .L279+16
	add	r2, r2, r1, lsl #5
	lsl	r3, r3, #23
	ldrb	r1, [r5]	@ zero_extendqisi2
	lsr	r3, r3, #23
	strh	r3, [r4, #2]	@ movhi
	strh	r1, [r4]	@ movhi
	strh	r2, [r4, #4]	@ movhi
	bl	checkFoodDelivered
	mov	r1, #67108864
	mov	lr, #82
	mov	ip, #150
	mov	r0, #87
	mov	r7, #141
	ldr	r2, [r5, #48]
	ldr	r3, [r5, #44]
	ldrh	r5, [r6, #4]
	ldrh	r6, [r6]
	strh	r5, [r1, #20]	@ movhi
	add	r2, r2, #8
	add	r5, r4, #324
	strh	r6, [r1, #22]	@ movhi
	add	r3, r3, #8
	strh	r2, [r5]	@ movhi
	add	r2, r4, #332
	strh	r3, [r2]	@ movhi
	add	r3, r4, #328
	add	r2, r4, #320
	strh	lr, [r2, #2]	@ movhi
	strh	r7, [r2]	@ movhi
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	ldr	r2, .L279+20
	mov	lr, pc
	bx	r2
	mov	r1, r4
	mov	r3, #512
	ldr	r4, .L279+24
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L278:
	ldr	r3, [r6, #4]
	cmp	r3, #230
	ble	.L272
.L271:
	bl	drawFriendlyPandas
	bl	drawBaskets
	b	.L272
.L280:
	.align	2
.L279:
	.word	screenBlock
	.word	.LANCHOR0
	.word	playerHOff
	.word	panda
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
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
	ldr	r3, .L282
	str	r2, [r3, #60]
	str	r2, [r3, #128]
	str	r2, [r3, #196]
	bx	lr
.L283:
	.align	2
.L282:
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
	ldr	r5, .L361
	ldr	r3, [r5]
	add	r3, r3, #1
	str	r3, [r5]
	mov	r6, #141
	bl	updatePanda2
	mov	lr, #82
	mov	ip, #150
	mov	r0, #87
	ldr	r4, .L361+4
	ldr	r3, [r4, #4]
	ldr	r2, .L361+8
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
	ldr	r3, .L361+12
	ldr	r1, [r3]
	add	r3, r2, #320
	strh	r6, [r3]	@ movhi
	strh	lr, [r3, #2]	@ movhi
	cmp	r1, #0
	add	r3, r2, #328
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	beq	.L285
	mov	lr, #5
	ldr	r3, .L361+16
	add	r0, r3, #1200
.L287:
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
	bne	.L287
	mov	lr, #5
	ldr	r3, .L361+20
	ldr	r2, .L361+24
	add	ip, r3, #600
.L288:
	ldm	r3, {r0, r1}
	add	r3, r3, #40
	cmp	ip, r3
	strh	lr, [r2, #4]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	add	r2, r2, #8
	bne	.L288
	mov	r2, #15
	mov	r3, #0
	str	r2, [r4, #48]
	str	r3, [r4, #44]
.L289:
	ldr	r5, .L361+28
	ldr	r2, .L361+32
	ldr	r1, .L361+36
	ldr	r3, [r5, #32]
	mla	r3, r1, r3, r2
	ldr	r2, .L361+40
	cmp	r2, r3, ror #3
	movcc	r3, #0
	strcc	r3, [r5, #60]
	strcc	r3, [r5, #128]
	strcc	r3, [r5, #196]
	ldr	r3, [r5, #44]
	cmp	r3, #5
	beq	.L297
	ldr	r2, [r5, #48]
	cmp	r2, #3
	beq	.L297
.L298:
	mov	r3, #67108864
	ldr	r2, .L361+44
	ldrh	r1, [r2, #4]
	strh	r1, [r3, #24]	@ movhi
	ldrh	r1, [r2]
	ldr	r2, .L361+48
	strh	r1, [r3, #26]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r4, .L361+52
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L361+8
	mov	lr, pc
	bx	r4
	mov	r3, #0
	str	r3, [r5, #60]
	str	r3, [r5, #128]
	str	r3, [r5, #196]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L297:
	ldr	r2, [r5, #112]
	cmp	r2, #5
	beq	.L299
	ldr	r1, [r5, #116]
	cmp	r1, #3
	beq	.L299
	cmp	r3, #5
	beq	.L298
	ldr	r3, [r5, #48]
	cmp	r3, #3
	bne	.L298
	ldr	r3, [r5, #116]
	cmp	r3, #3
	bne	.L298
.L304:
	ldr	r3, [r5, #180]
	cmp	r3, #5
	beq	.L308
	ldr	r3, [r5, #184]
	cmp	r3, #3
	bne	.L298
.L308:
	add	r2, r4, #44
	ldmia	r2, {r2, r3}
	orr	r3, r2, r3
	cmp	r3, #0
	movne	r2, #1
	ldrne	r3, .L361+56
	strne	r2, [r3]
	b	.L298
.L285:
	ldr	r3, [r5]
	cmp	r3, #49
	bgt	.L290
	ldr	r3, .L361+20
	add	r2, r2, #360
	add	ip, r3, #600
.L292:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L291
	ldr	r0, [r3, #4]
	ldr	r1, [r3, #32]
	ldr	lr, [r3]
	add	r0, r0, #5
	add	r1, r1, #32
	strh	r0, [r2, #2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	strh	lr, [r2]	@ movhi
.L291:
	add	r3, r3, #40
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L292
.L293:
	ldr	r3, .L361+16
	ldr	r2, .L361+8
	add	r0, r3, #1200
.L295:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L294
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	ldr	r1, [r3, #32]
	strh	lr, [r2, #8]	@ movhi
	strh	ip, [r2, #10]	@ movhi
	strh	r1, [r2, #12]	@ movhi
.L294:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L295
	bl	checkFoodCollected
	bl	checkEnemyCollision
	b	.L289
.L299:
	ldr	r1, [r5, #180]
	cmp	r1, #5
	beq	.L301
	ldr	r1, [r5, #184]
	cmp	r1, #3
	beq	.L301
	cmp	r3, #5
	bne	.L303
.L306:
	cmp	r2, #5
	beq	.L304
.L360:
	ldr	r3, [r5, #116]
	cmp	r3, #3
	beq	.L304
	b	.L298
.L290:
	bl	drawEnemies
	b	.L293
.L303:
	ldr	r3, [r5, #48]
	cmp	r3, #3
	bne	.L298
	cmp	r2, #5
	beq	.L304
	b	.L360
.L301:
	add	r0, r4, #44
	ldmia	r0, {r0, r1}
	orr	r1, r0, r1
	cmp	r1, #0
	moveq	r0, #1
	ldreq	r1, .L361+60
	streq	r0, [r1]
	cmp	r3, #5
	beq	.L306
	b	.L303
.L362:
	.align	2
.L361:
	.word	count
	.word	panda
	.word	shadowOAM
	.word	cheatGame
	.word	food
	.word	enemies
	.word	shadowOAM+360
	.word	pandas
	.word	85899344
	.word	-1030792151
	.word	21474836
	.word	.LANCHOR0
	.word	waitForVBlank
	.word	DMANow
	.word	hasLost
	.word	hasWon
	.size	updateGame2, .-updateGame2
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
	.comm	enemies,600,4
	.comm	food,1200,4
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
