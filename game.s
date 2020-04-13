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
	mov	r0, #130
	mov	r1, #6
	mov	r5, #105
	mov	r4, #125
	mov	lr, #145
	ldr	r3, .L26
	str	r5, [r3, #12]
	str	r4, [r3, #52]
	str	lr, [r3, #92]
	str	ip, [r3, #36]
	str	ip, [r3, #76]
	str	ip, [r3, #116]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #64]
	str	r2, [r3, #68]
	str	r2, [r3, #104]
	str	r2, [r3, #108]
	str	r0, [r3, #8]
	str	r0, [r3, #48]
	str	r0, [r3, #88]
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
	mov	r2, #105
	mov	r0, #8
	mov	r4, #120
	mov	lr, #7
	mov	r1, #0
	mov	ip, #2
	ldr	r3, .L32
.L29:
	str	r2, [r3, #12]
	add	r2, r2, #20
	cmp	r2, #165
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	r4, [r3, #8]
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L60
	ldr	r3, [r4, #36]
	cmp	r3, #6
	movne	r2, #0
	strne	r3, [r4, #40]
	strne	r2, [r4, #36]
	ldr	r1, .L60+4
	ldr	r2, [r4, #32]
	ldr	r3, .L60+8
	mla	r3, r2, r3, r1
	ldr	r1, .L60+12
	cmp	r3, r1
	addhi	r2, r2, #1
	strhi	r2, [r4, #32]
	bhi	.L37
	ldr	r0, [r4, #60]
	ldr	r3, .L60+16
	ldr	r1, [r4, #64]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #60]
.L37:
	ldr	r3, .L60+20
	ldrh	r3, [r3, #48]
	ldr	ip, .L60+24
	tst	r3, #64
	ldr	r0, [ip]
	ldr	r3, [r4, #8]
	bne	.L38
	cmp	r3, #0
	ble	.L38
	mov	r2, #2
	ldr	r1, [r4, #16]
	cmp	r0, #0
	sub	r3, r3, r1
	str	r3, [r4, #8]
	str	r2, [r4, #36]
	ble	.L38
	ldr	r2, [r4, #28]
	ldr	r1, [r4]
	add	r2, r2, r2, lsr #31
	add	r2, r1, r2, asr #1
	cmp	r2, #80
	subeq	r0, r0, #1
	streq	r0, [ip]
.L38:
	ldr	r2, .L60+20
	ldrh	r2, [r2, #48]
	tst	r2, #128
	bne	.L39
	ldr	r2, [r4, #28]
	add	r1, r2, r3
	cmp	r1, #235
	ble	.L58
.L39:
	ldr	r2, .L60+20
	ldrh	r2, [r2, #48]
	ldr	r1, .L60+28
	tst	r2, #32
	ldr	lr, [r1]
	ldr	r2, [r4, #12]
	bne	.L40
	cmp	r2, #0
	ble	.L40
	mov	r6, #1
	ldr	r5, [ip, #4]
	sub	r2, r2, #1
	cmp	r5, #0
	str	r2, [r4, #12]
	str	r6, [r4, #36]
	ble	.L41
	ldr	r6, .L60+32
	ldr	r6, [r6]
	cmp	r6, #27
	subgt	r5, r5, #1
	subgt	lr, lr, #1
	strgt	r5, [ip, #4]
	strgt	lr, [r1]
.L41:
	ldr	r5, .L60+20
	ldrh	r5, [r5, #48]
	tst	r5, #16
	bne	.L44
.L47:
	ldr	r5, [r4, #24]
	add	r5, r2, r5
	cmp	r5, #1008
	ble	.L59
.L43:
	mov	r1, #1
	str	r1, [r4, #36]
.L44:
	ldr	r1, [r4, #32]
	add	r1, r1, #1
	str	r1, [r4, #32]
.L45:
	ldr	r1, .L60+36
	ldrh	r1, [r1]
	sub	r2, r2, lr
	sub	r3, r3, r0
	tst	r1, #1
	str	r2, [r4, #4]
	str	r3, [r4]
	beq	.L34
	ldr	r3, .L60+40
	ldrh	r3, [r3]
	tst	r3, #1
	moveq	r2, #1
	ldreq	r3, .L60+44
	streq	r2, [r3]
.L34:
	pop	{r4, r5, r6, lr}
	bx	lr
.L40:
	ldr	r5, .L60+20
	ldrh	r5, [r5, #48]
	tst	r5, #16
	beq	.L47
	ldr	r1, [r4, #36]
	cmp	r1, #6
	bne	.L44
	mov	ip, #0
	ldr	r1, [r4, #40]
	str	ip, [r4, #60]
	str	r1, [r4, #36]
	b	.L45
.L59:
	ldr	r5, .L60+32
	ldr	r5, [r5]
	add	r2, r2, #1
	cmp	r5, #30
	str	r2, [r4, #12]
	bgt	.L43
	ldr	r5, [ip, #4]
	cmp	r5, #256
	addle	r5, r5, #1
	addle	lr, lr, #1
	strle	r5, [ip, #4]
	strle	lr, [r1]
	b	.L43
.L58:
	mov	r1, #2
	ldr	lr, [r4, #16]
	cmp	r0, #95
	add	r3, r3, lr
	str	r3, [r4, #8]
	str	r1, [r4, #36]
	bgt	.L39
	ldr	r1, [r4]
	add	r2, r2, r2, lsr #31
	add	r2, r1, r2, asr #1
	cmp	r2, #80
	addeq	r0, r0, #1
	streq	r0, [ip]
	b	.L39
.L61:
	.align	2
.L60:
	.word	panda
	.word	85899345
	.word	-1030792151
	.word	171798690
	.word	__aeabi_idivmod
	.word	67109120
	.word	.LANCHOR0
	.word	playerHOff
	.word	screenBlock
	.word	oldButtons
	.word	buttons
	.word	cheatGame
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
	ldr	r4, .L109
	ldr	r3, [r4, #36]
	cmp	r3, #6
	movne	r2, #0
	strne	r3, [r4, #40]
	strne	r2, [r4, #36]
	ldr	r1, .L109+4
	ldr	r2, [r4, #32]
	ldr	r3, .L109+8
	mla	r3, r2, r3, r1
	ldr	r1, .L109+12
	cmp	r3, r1
	addhi	r2, r2, #1
	strhi	r2, [r4, #32]
	bhi	.L65
	ldr	r0, [r4, #60]
	ldr	r3, .L109+16
	ldr	r1, [r4, #64]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #60]
.L65:
	ldr	r3, .L109+20
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	bne	.L105
	cmp	r3, #0
	ble	.L105
	ldr	ip, [r4, #16]
	sub	ip, r3, ip
	ldr	r0, .L109+24
	add	r1, r2, ip, lsl #8
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, #0
	lsl	lr, ip, #8
	bne	.L100
.L105:
	ldr	lr, .L109+28
.L66:
	ldr	r1, .L109+20
	ldrh	r1, [r1, #48]
	tst	r1, #128
	bne	.L67
	ldr	r1, [r4]
	cmp	r1, #131
	ble	.L106
.L67:
	ldr	r1, .L109+20
	ldrh	r1, [r1, #48]
	tst	r1, #32
	ldr	r1, [lr, #4]
	bne	.L68
	cmp	r2, #0
	ble	.L68
	ldr	ip, [r4, #20]
	sub	ip, r2, ip
	ldr	r0, .L109+24
	add	r5, ip, r3, lsl #8
	lsl	r5, r5, #1
	ldrh	r5, [r0, r5]
	cmp	r5, #0
	lsl	r5, r3, #8
	beq	.L68
	ldr	r6, [r4, #28]
	ldr	r7, [r4, #16]
	add	r6, r3, r6
	sub	r6, r6, r7
	add	ip, ip, r6, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [r0, ip]
	cmp	ip, #0
	beq	.L68
	mov	ip, #1
	sub	r2, r2, #1
	cmp	r1, #0
	str	r2, [r4, #12]
	str	ip, [r4, #36]
	ble	.L69
	ldr	ip, [r4, #4]
	cmp	ip, #120
	suble	r1, r1, #1
	strle	r1, [lr, #4]
.L69:
	ldr	ip, .L109+20
	ldrh	ip, [ip, #48]
	tst	ip, #16
	bne	.L72
	ldr	ip, [r4, #24]
	add	ip, r2, ip
	cmp	ip, #255
	ble	.L74
	b	.L72
.L68:
	ldr	r0, .L109+20
	ldrh	r0, [r0, #48]
	tst	r0, #16
	bne	.L70
	ldr	ip, [r4, #24]
	add	ip, r2, ip
	cmp	ip, #255
	bgt	.L70
	ldr	r0, .L109+24
	lsl	r5, r3, #8
.L74:
	add	r5, r5, ip
	lsl	r5, r5, #1
	ldrh	r6, [r0, r5]
	ldr	r5, .L109+32
	cmp	r6, r5
	beq	.L107
.L70:
	ldr	r0, [r4, #36]
	cmp	r0, #6
	beq	.L108
.L72:
	ldr	r0, [r4, #32]
	add	r0, r0, #1
	str	r0, [r4, #32]
.L73:
	ldr	r0, [lr]
	sub	r2, r2, r1
	sub	r3, r3, r0
	str	r3, [r4]
	str	r2, [r4, #4]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L106:
	ldr	r6, [r4, #28]
	add	ip, r6, r3
	cmp	ip, #255
	bgt	.L67
	add	r5, r2, ip, lsl #8
	ldr	r0, .L109+24
	lsl	r5, r5, #1
	ldrh	r5, [r0, r5]
	cmp	r5, #0
	lsl	ip, ip, #8
	beq	.L67
	ldr	r5, [r4, #24]
	ldr	r7, [r4, #20]
	add	r5, r2, r5
	sub	r5, r5, r7
	add	ip, r5, ip
	lsl	ip, ip, #1
	ldrh	r0, [r0, ip]
	cmp	r0, #0
	beq	.L67
	mov	ip, #2
	ldr	r0, [r4, #16]
	add	r3, r3, r0
	ldr	r0, [lr]
	cmp	r0, #95
	str	r3, [r4, #8]
	str	ip, [r4, #36]
	bgt	.L67
	add	r6, r6, r6, lsr #31
	add	r1, r1, r6, asr #1
	cmp	r1, #80
	addeq	r0, r0, #1
	streq	r0, [lr]
	b	.L67
.L108:
	mov	ip, #0
	ldr	r0, [r4, #40]
	str	ip, [r4, #60]
	str	r0, [r4, #36]
	b	.L73
.L100:
	ldr	r1, [r4, #24]
	ldr	r5, [r4, #20]
	add	r1, r2, r1
	sub	r1, r1, r5
	add	r1, r1, lr
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, #0
	beq	.L105
	mov	r3, #2
	ldr	lr, .L109+28
	ldr	r1, [lr]
	cmp	r1, #0
	str	ip, [r4, #8]
	str	r3, [r4, #36]
	ble	.L76
	ldr	r3, [r4, #28]
	ldr	r0, [r4]
	add	r3, r3, r3, lsr #31
	add	r3, r0, r3, asr #1
	cmp	r3, #80
	subeq	r1, r1, #1
	moveq	r3, ip
	streq	r1, [lr]
	beq	.L66
.L76:
	mov	r3, ip
	b	.L66
.L107:
	ldr	r5, [r4, #28]
	ldr	r7, [r4, #16]
	add	r5, r3, r5
	sub	r5, r5, r7
	add	ip, ip, r5, lsl #8
	lsl	ip, ip, #1
	ldrh	r0, [r0, ip]
	cmp	r0, r6
	bne	.L70
	mov	r0, #1
	cmp	r1, #15
	add	r2, r2, r0
	str	r2, [r4, #12]
	str	r0, [r4, #36]
	bgt	.L72
	ldr	r0, [r4, #4]
	cmp	r0, #119
	addgt	r1, r1, #1
	strgt	r1, [lr, #4]
	b	.L72
.L110:
	.align	2
.L109:
	.word	panda
	.word	85899345
	.word	-1030792151
	.word	171798690
	.word	__aeabi_idivmod
	.word	67109120
	.word	collisionmapBitmap
	.word	.LANCHOR0
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
	ldr	r4, .L123
	ldr	r5, .L123+4
	mov	fp, #5
	ldr	r6, .L123+8
	ldr	r8, .L123+12
	ldr	r10, .L123+16
	sub	sp, sp, #20
	add	r7, r4, #1200
	sub	r9, r5, #8
	b	.L116
.L113:
	add	r4, r4, #40
	cmp	r4, r7
	add	r5, r5, #8
	beq	.L122
.L116:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L113
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
	beq	.L113
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
	bne	.L116
.L122:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L124:
	.align	2
.L123:
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
	ldr	r4, .L136
	ldr	r5, .L136+4
	ldr	r7, .L136+8
	ldr	r8, .L136+12
	sub	sp, sp, #16
	add	r6, r4, #600
	b	.L129
.L127:
	add	r4, r4, #40
	cmp	r4, r6
	beq	.L135
.L129:
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
	bne	.L129
.L135:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L137:
	.align	2
.L136:
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
	ldr	r5, .L160
	mov	r6, r5
	ldr	r4, .L160+4
	ldr	r9, .L160+8
	ldr	fp, .L160+12
	ldr	r8, .L160+16
	sub	sp, sp, #20
	add	r10, r4, #120
.L145:
	ldrh	r2, [r9]
	tst	r2, #1
	beq	.L139
	ldrh	r7, [fp]
	ands	r7, r7, #1
	beq	.L157
.L139:
	ldr	r3, [r5, #32]
	add	r3, r3, #1
	str	r3, [r5, #32]
.L142:
	tst	r2, #2
	beq	.L143
	ldrh	r2, [fp]
	ands	r7, r2, #2
	beq	.L158
.L143:
	ldr	r3, [r5, #32]
	add	r3, r3, #1
	str	r3, [r5, #32]
.L144:
	add	r4, r4, #40
	cmp	r10, r4
	add	r6, r6, #68
	bne	.L145
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L157:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #28]
	ldr	r1, [r4, #24]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r8, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r8]
	ldr	r0, [r8, #4]
	ldr	ip, .L160+20
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L141
	ldr	r3, [r8, #44]
	cmp	r3, #0
	bgt	.L159
.L141:
	ldrh	r2, [r9]
	b	.L139
.L158:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #28]
	ldr	r1, [r4, #24]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r8, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r8]
	ldr	r0, [r8, #4]
	ldr	ip, .L160+20
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L143
	ldr	r3, [r8, #48]
	cmp	r3, #0
	ble	.L143
	mov	r2, r7
	ldr	r3, .L160+24
	ldr	r1, .L160+28
	ldr	r0, .L160+32
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
	b	.L144
.L159:
	mov	r2, r7
	ldr	r3, .L160+24
	ldr	r1, .L160+28
	ldr	r0, .L160+32
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
	b	.L142
.L161:
	.align	2
.L160:
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
	ldr	r2, .L164
	ldr	r3, [r2, #4]
	str	lr, [sp, #-4]!
	ldr	r0, [r2, #36]
	ldr	lr, [r2, #60]
	ldrb	ip, [r2]	@ zero_extendqisi2
	ldr	r1, .L164+4
	lsl	r3, r3, #23
	add	r2, r0, lr, lsl #5
	lsr	r3, r3, #23
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L165:
	.align	2
.L164:
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
	ldr	r3, .L182
	ldr	r2, .L182+4
	add	r0, r3, #1200
.L174:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L180
	str	lr, [sp, #-4]!
.L175:
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	ldr	r1, [r3, #32]
	add	r3, r3, #40
	cmp	r3, r0
	strh	lr, [r2, #8]	@ movhi
	strh	ip, [r2, #10]	@ movhi
	strh	r1, [r2, #12]	@ movhi
	add	r2, r2, #8
	beq	.L181
.L168:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	bne	.L175
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L168
.L181:
	ldr	lr, [sp], #4
	bx	lr
.L180:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L174
	bx	lr
.L183:
	.align	2
.L182:
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
	ldr	r3, .L192
	ldr	r2, .L192+4
	add	r0, r3, #1200
.L186:
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
	bne	.L186
	ldr	lr, [sp], #4
	bx	lr
.L193:
	.align	2
.L192:
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
	ldr	r3, .L213
	ldr	r2, .L213+4
	add	r0, r3, #600
.L203:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L211
	str	lr, [sp, #-4]!
.L204:
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
	beq	.L212
.L196:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	bne	.L204
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L196
.L212:
	ldr	r3, .L213+8
	ldr	r2, [r3]
	cmp	r2, #100
	moveq	r2, #0
	ldr	lr, [sp], #4
	streq	r2, [r3]
	bx	lr
.L211:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L203
	ldr	r3, .L213+8
	ldr	r2, [r3]
	cmp	r2, #100
	moveq	r2, #0
	streq	r2, [r3]
	bx	lr
.L214:
	.align	2
.L213:
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
	ldr	r3, .L231
	ldr	r2, .L231+4
	add	ip, r3, #600
.L223:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L229
	str	lr, [sp, #-4]!
.L224:
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
	beq	.L230
.L217:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	bne	.L224
	add	r3, r3, #40
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L217
.L230:
	ldr	lr, [sp], #4
	bx	lr
.L229:
	add	r3, r3, #40
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L223
	bx	lr
.L232:
	.align	2
.L231:
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
	ldr	r3, .L237
	ldr	r2, .L237+4
	add	ip, r3, #600
.L234:
	ldm	r3, {r0, r1}
	add	r3, r3, #40
	cmp	r3, ip
	strh	lr, [r2, #4]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	add	r2, r2, #8
	bne	.L234
	ldr	lr, [sp], #4
	bx	lr
.L238:
	.align	2
.L237:
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
	ldr	r2, .L241
	ldr	r3, .L241+4
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
.L242:
	.align	2
.L241:
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
	ldr	r2, .L247
	ldr	r3, .L247+4
	push	{r4, r5, lr}
	ldr	r5, [r2]
	ldr	r4, [r2, #4]
	ldr	r2, .L247+8
	add	lr, r3, #120
.L244:
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
	bne	.L244
	pop	{r4, r5, lr}
	bx	lr
.L248:
	.align	2
.L247:
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
	ldr	r2, .L253
	ldr	r3, .L253+4
	push	{r4, r5, r6, lr}
	ldr	r6, [r2]
	ldr	r5, [r2, #4]
	ldr	r2, .L253+8
	add	r4, r3, #204
.L250:
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
	bne	.L250
	pop	{r4, r5, r6, lr}
	bx	lr
.L254:
	.align	2
.L253:
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
	mov	ip, #67108864
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	lr, .L284
	ldr	r5, .L284+4
	ldr	r2, [lr]
	ldr	r4, .L284+8
	ldr	r1, [r5]
	ldr	r0, [r4, #4]
	lsl	r3, r2, #24
	orr	r3, r3, #1073741824
	lsr	r3, r3, #16
	add	r1, r1, #1
	cmp	r0, #256
	str	r1, [r5]
	strh	r3, [ip, #10]	@ movhi
	ble	.L256
	add	r2, r2, #1
	lsl	r3, r2, #24
	orr	r3, r3, #1073741824
	lsr	r3, r3, #16
	sub	r0, r0, #256
	str	r2, [lr]
	str	r0, [r4, #4]
	strh	r3, [ip, #10]	@ movhi
.L257:
	ldr	r2, .L284+12
	ldr	r3, [r2]
	cmp	r3, #512
	subgt	r3, r3, #512
	strgt	r3, [r2]
	ldr	r3, .L284+16
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L259
	ldr	r5, .L284+20
	mov	lr, #5
	mov	r2, r5
	ldr	r3, .L284+24
	add	r0, r3, #1200
.L261:
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
	bne	.L261
	mov	lr, #5
	ldr	r3, .L284+28
	ldr	r2, .L284+32
	add	ip, r3, #600
.L262:
	ldm	r3, {r0, r1}
	add	r3, r3, #40
	cmp	r3, ip
	strh	lr, [r2, #4]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	add	r2, r2, #8
	bne	.L262
	mov	r2, #15
	mov	r3, #0
	ldr	r6, .L284+36
	str	r2, [r6, #48]
	str	r3, [r6, #44]
.L263:
	ldr	r7, .L284+40
	bl	updatePanda
	mov	r8, #141
	mov	lr, #82
	mov	r2, r7
	mov	ip, #150
	mov	r0, #87
	mov	r1, #67108864
	ldr	r3, [r6, #4]
	ldr	r10, [r6, #60]
	ldr	r9, [r6, #36]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	strh	r3, [r5, #2]	@ movhi
	add	r9, r9, r10, lsl #5
	ldr	r3, [r6, #48]
	strh	r9, [r5, #4]	@ movhi
	ldrb	r9, [r6]	@ zero_extendqisi2
	add	r3, r3, #8
	strh	r9, [r5]	@ movhi
	strh	r3, [r7, #4]	@ movhi
	strh	lr, [r7, #2]	@ movhi
	strh	r8, [r7]	@ movhi
	strh	ip, [r2, #8]!	@ movhi
	ldr	r3, [r6, #44]
	strh	r0, [r2, #2]	@ movhi
	ldrh	r2, [r4, #4]
	strh	r2, [r1, #20]	@ movhi
	ldrh	r2, [r4]
	add	r3, r3, #8
	strh	r2, [r1, #22]	@ movhi
	strh	r3, [r7, #12]	@ movhi
	ldr	r2, .L284+44
	mov	lr, pc
	bx	r2
	ldr	r4, .L284+48
	sub	r1, r7, #320
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L259:
	cmp	r1, #49
	bgt	.L264
	ldr	r3, .L284+28
	ldr	r2, .L284+32
	add	ip, r3, #600
.L266:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L265
	ldr	r0, [r3, #4]
	ldr	r1, [r3, #32]
	ldr	lr, [r3]
	add	r0, r0, #5
	add	r1, r1, #32
	strh	r0, [r2, #2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	strh	lr, [r2]	@ movhi
.L265:
	add	r3, r3, #40
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L266
.L267:
	ldr	r5, .L284+20
	mov	r2, r5
	ldr	r3, .L284+24
	add	r0, r3, #1200
.L269:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L268
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	ldr	r1, [r3, #32]
	strh	lr, [r2, #8]	@ movhi
	strh	ip, [r2, #10]	@ movhi
	strh	r1, [r2, #12]	@ movhi
.L268:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L269
	bl	checkFoodCollected
	ldr	r6, .L284+36
	bl	checkEnemyCollision
	b	.L263
.L256:
	cmp	r0, #0
	bne	.L257
	cmp	r2, #28
	ble	.L257
	mov	r0, #256
	sub	r2, r2, #1
	lsl	r3, r2, #24
	orr	r3, r3, #1073741824
	lsr	r3, r3, #16
	str	r2, [lr]
	str	r0, [r4, #4]
	strh	r3, [ip, #10]	@ movhi
	b	.L257
.L264:
	bl	drawEnemies
	b	.L267
.L285:
	.align	2
.L284:
	.word	screenBlock
	.word	count
	.word	.LANCHOR0
	.word	playerHOff
	.word	cheatGame
	.word	shadowOAM
	.word	food
	.word	enemies
	.word	shadowOAM+360
	.word	panda
	.word	shadowOAM+320
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
	ldr	r3, .L287
	str	r2, [r3, #60]
	str	r2, [r3, #128]
	str	r2, [r3, #196]
	bx	lr
.L288:
	.align	2
.L287:
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
	push	{r4, r5, r6, lr}
	ldr	r6, .L342
	bl	updatePanda2
	ldr	r3, [r6, #4]
	ldr	r0, [r6, #60]
	ldr	r2, [r6, #36]
	ldr	r4, .L342+4
	ldrb	r1, [r6]	@ zero_extendqisi2
	lsl	r3, r3, #23
	add	r2, r2, r0, lsl #5
	lsr	r3, r3, #23
	strh	r3, [r4, #2]	@ movhi
	strh	r1, [r4]	@ movhi
	strh	r2, [r4, #4]	@ movhi
	bl	drawBaskets
	mov	r1, #150
	mov	r2, #87
	mov	ip, #141
	mov	r0, #82
	ldr	r3, [r6, #48]
	add	lr, r4, #324
	add	r3, r3, #8
	strh	r3, [lr]	@ movhi
	ldr	r3, [r6, #44]
	add	lr, r4, #332
	add	r3, r3, #8
	strh	r3, [lr]	@ movhi
	ldr	r5, .L342+8
	add	r3, r4, #320
	add	r4, r4, #328
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r1, [r4]	@ movhi
	strh	r2, [r4, #2]	@ movhi
	bl	checkFoodDelivered
	bl	drawFriendlyPandas
	ldr	r2, .L342+12
	ldr	r3, [r5, #32]
	ldr	r1, .L342+16
	mla	r3, r1, r3, r2
	ldr	r2, .L342+20
	cmp	r2, r3, ror #3
	movcc	r3, #0
	strcc	r3, [r5, #60]
	strcc	r3, [r5, #128]
	strcc	r3, [r5, #196]
	ldr	r3, [r5, #44]
	cmp	r3, #5
	beq	.L291
	ldr	r2, [r5, #48]
	cmp	r2, #3
	beq	.L291
.L292:
	mov	r3, #67108864
	ldr	r2, .L342+24
	ldrh	r1, [r2, #4]
	strh	r1, [r3, #24]	@ movhi
	ldrh	r1, [r2]
	ldr	r2, .L342+28
	strh	r1, [r3, #26]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r4, .L342+32
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L342+4
	mov	lr, pc
	bx	r4
	mov	r3, #0
	str	r3, [r5, #60]
	str	r3, [r5, #128]
	str	r3, [r5, #196]
	pop	{r4, r5, r6, lr}
	bx	lr
.L291:
	ldr	r2, [r5, #112]
	cmp	r2, #5
	beq	.L293
	ldr	r1, [r5, #116]
	cmp	r1, #3
	beq	.L293
	cmp	r3, #5
	beq	.L292
	ldr	r3, [r5, #48]
	cmp	r3, #3
	bne	.L292
	ldr	r3, [r5, #116]
	cmp	r3, #3
	bne	.L292
.L298:
	ldr	r3, [r5, #180]
	cmp	r3, #5
	beq	.L302
	ldr	r3, [r5, #184]
	cmp	r3, #3
	bne	.L292
.L302:
	add	r2, r6, #44
	ldmia	r2, {r2, r3}
	orr	r3, r2, r3
	cmp	r3, #0
	movne	r2, #1
	ldrne	r3, .L342+36
	strne	r2, [r3]
	b	.L292
.L293:
	ldr	r1, [r5, #180]
	cmp	r1, #5
	beq	.L295
	ldr	r1, [r5, #184]
	cmp	r1, #3
	beq	.L295
	cmp	r3, #5
	bne	.L297
.L300:
	cmp	r2, #5
	beq	.L298
.L341:
	ldr	r3, [r5, #116]
	cmp	r3, #3
	beq	.L298
	b	.L292
.L297:
	ldr	r3, [r5, #48]
	cmp	r3, #3
	bne	.L292
	cmp	r2, #5
	beq	.L298
	b	.L341
.L295:
	add	r0, r6, #44
	ldmia	r0, {r0, r1}
	orr	r1, r0, r1
	cmp	r1, #0
	moveq	r0, #1
	ldreq	r1, .L342+40
	streq	r0, [r1]
	cmp	r3, #5
	beq	.L300
	b	.L297
.L343:
	.align	2
.L342:
	.word	panda
	.word	shadowOAM
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
