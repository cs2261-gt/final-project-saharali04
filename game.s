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
	str	r8, [r4, #28]
	str	r3, [r4, #16]
	str	r3, [r4, #20]
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
	str	ip, [r4, #24]
	str	r1, [r4, #12]
	str	r1, [r4, #8]
	add	r4, r4, #32
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
	add	r6, r4, #480
.L15:
	mov	r10, #8
	str	r9, [r4, #28]
	str	r10, [r4, #16]
	str	r10, [r4, #20]
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
	str	r10, [r4, #24]
	str	r3, [r4]
	str	r1, [r4, #12]
	str	r1, [r4, #8]
	add	r4, r4, #32
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
	str	lr, [sp, #-4]!
	mov	r2, #60
	mov	lr, #1
	mov	r1, #8
	mov	ip, #80
	mov	r0, #6
	ldr	r3, .L28
.L25:
	str	r2, [r3, #4]
	add	r2, r2, #60
	cmp	r2, #240
	str	lr, [r3, #28]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	ip, [r3]
	str	r0, [r3, #24]
	add	r3, r3, #32
	bne	.L25
	ldr	lr, [sp], #4
	bx	lr
.L29:
	.align	2
.L28:
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
	mov	r2, #60
	mov	r0, #8
	mov	r4, #50
	mov	lr, #7
	mov	r1, #0
	mov	ip, #2
	ldr	r3, .L34
.L31:
	str	r2, [r3, #4]
	add	r2, r2, #60
	cmp	r2, #240
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	r4, [r3]
	str	lr, [r3, #36]
	str	r1, [r3, #44]
	str	r1, [r3, #48]
	str	r1, [r3, #60]
	str	ip, [r3, #64]
	add	r3, r3, #68
	bne	.L31
	pop	{r4, lr}
	bx	lr
.L35:
	.align	2
.L34:
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
	ldr	r4, .L64
	ldr	r3, [r4, #36]
	cmp	r3, #6
	movne	r2, #0
	strne	r3, [r4, #40]
	strne	r2, [r4, #36]
	ldr	r1, .L64+4
	ldr	r2, [r4, #32]
	ldr	r3, .L64+8
	mla	r3, r2, r3, r1
	ldr	r1, .L64+12
	cmp	r3, r1
	addhi	r2, r2, #1
	strhi	r2, [r4, #32]
	bhi	.L39
	ldr	r0, [r4, #60]
	ldr	r3, .L64+16
	ldr	r1, [r4, #64]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #60]
.L39:
	ldr	r3, .L64+20
	ldrh	r3, [r3, #48]
	ldr	ip, .L64+24
	tst	r3, #64
	ldr	lr, [ip]
	ldr	r3, [r4, #8]
	bne	.L40
	cmp	r3, #0
	ble	.L40
	mov	r2, #2
	ldr	r1, [r4, #16]
	cmp	lr, #0
	sub	r3, r3, r1
	str	r3, [r4, #8]
	str	r2, [r4, #36]
	ble	.L40
	ldr	r2, [r4, #28]
	ldr	r1, [r4]
	add	r2, r2, r2, lsr #31
	add	r2, r1, r2, asr #1
	cmp	r2, #80
	subeq	lr, lr, #1
	streq	lr, [ip]
.L40:
	ldr	r2, .L64+20
	ldrh	r2, [r2, #48]
	tst	r2, #128
	bne	.L41
	ldr	r2, [r4, #28]
	add	r1, r2, r3
	cmp	r1, #235
	ble	.L62
.L41:
	ldr	r2, .L64+20
	ldrh	r2, [r2, #48]
	ldr	r1, .L64+28
	tst	r2, #32
	ldr	r0, [r4, #12]
	ldr	r2, [r1]
	bne	.L42
	cmp	r0, #0
	ldr	r5, [ip, #4]
	ble	.L43
	mov	r6, #1
	sub	r0, r0, #1
	cmp	r5, #0
	str	r0, [r4, #12]
	str	r6, [r4, #36]
	ble	.L44
	ldr	r6, .L64+32
	ldr	r6, [r6]
	cmp	r6, #27
	ble	.L42
	ldr	r6, [r4, #4]
	cmp	r6, #120
	bgt	.L45
	sub	r5, r5, #1
	sub	r2, r2, #1
	cmp	r5, #0
	str	r5, [ip, #4]
	str	r2, [r1]
	bne	.L45
.L44:
	ldr	r5, .L64+20
	ldrh	r5, [r5, #48]
	tst	r5, #16
	bne	.L48
.L51:
	ldr	r5, [r4, #24]
	add	r5, r0, r5
	cmp	r5, #1008
	ble	.L63
.L47:
	mov	r1, #1
	str	r1, [r4, #36]
.L48:
	ldr	r1, [r4, #32]
	add	r1, r1, #1
	str	r1, [r4, #32]
.L49:
	ldr	r1, .L64+36
	ldrh	r1, [r1]
	sub	r2, r0, r2
	sub	r3, r3, lr
	tst	r1, #1
	str	r2, [r4, #4]
	str	r3, [r4]
	beq	.L36
	ldr	r3, .L64+40
	ldrh	r3, [r3]
	tst	r3, #1
	moveq	r2, #1
	ldreq	r3, .L64+44
	streq	r2, [r3]
.L36:
	pop	{r4, r5, r6, lr}
	bx	lr
.L43:
	cmp	r5, #0
	ble	.L42
	ldr	r6, .L64+32
	ldr	r6, [r6]
	cmp	r6, #27
	ble	.L42
.L45:
	sub	r5, r5, #1
	sub	r2, r2, #1
	str	r5, [ip, #4]
	str	r2, [r1]
.L42:
	ldr	r5, .L64+20
	ldrh	r5, [r5, #48]
	tst	r5, #16
	beq	.L51
	ldr	r1, [r4, #36]
	cmp	r1, #6
	bne	.L48
	mov	ip, #0
	ldr	r1, [r4, #40]
	str	ip, [r4, #60]
	str	r1, [r4, #36]
	b	.L49
.L62:
	mov	r1, #2
	ldr	r0, [r4, #16]
	cmp	lr, #95
	add	r3, r3, r0
	str	r3, [r4, #8]
	str	r1, [r4, #36]
	bgt	.L41
	ldr	r1, [r4]
	add	r2, r2, r2, lsr #31
	add	r2, r1, r2, asr #1
	cmp	r2, #80
	addeq	lr, lr, #1
	streq	lr, [ip]
	b	.L41
.L63:
	ldr	r5, .L64+32
	ldr	r5, [r5]
	add	r0, r0, #1
	cmp	r5, #30
	str	r0, [r4, #12]
	bgt	.L47
	ldr	r5, [ip, #4]
	cmp	r5, #256
	bgt	.L47
	ldr	r6, [r4, #4]
	cmp	r6, #109
	addgt	r5, r5, #1
	addgt	r2, r2, #1
	strgt	r5, [ip, #4]
	strgt	r2, [r1]
	b	.L47
.L65:
	.align	2
.L64:
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
	push	{r4, lr}
	ldr	r4, .L93
	ldr	r3, [r4, #36]
	cmp	r3, #6
	movne	r2, #0
	strne	r3, [r4, #40]
	strne	r2, [r4, #36]
	ldr	r1, .L93+4
	ldr	r2, [r4, #32]
	ldr	r3, .L93+8
	mla	r3, r2, r3, r1
	ldr	r1, .L93+12
	cmp	r3, r1
	addhi	r2, r2, #1
	strhi	r2, [r4, #32]
	bhi	.L69
	ldr	r0, [r4, #60]
	ldr	r3, .L93+16
	ldr	r1, [r4, #64]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #60]
.L69:
	ldr	r3, .L93+20
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L90
	ldr	r3, [r4, #8]
	cmp	r3, #0
	ble	.L90
	mov	r0, #2
	ldr	r1, .L93+24
	ldr	ip, [r4, #16]
	ldr	r2, [r1]
	sub	r3, r3, ip
	cmp	r2, #0
	str	r3, [r4, #8]
	str	r0, [r4, #36]
	ble	.L71
	ldr	r3, [r4, #28]
	ldr	r0, [r4]
	add	r3, r3, r3, lsr #31
	add	r3, r0, r3, asr #1
	cmp	r3, #80
	ldr	r3, .L93+20
	ldrh	r3, [r3, #48]
	subeq	r2, r2, #1
	streq	r2, [r1]
	tst	r3, #128
	beq	.L91
.L74:
	ldr	r3, .L93+20
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldr	r0, [r1, #4]
	ldr	r3, [r4, #12]
	bne	.L76
	cmp	r3, #0
	ble	.L76
	mov	r2, #1
	sub	r3, r3, #1
	cmp	r0, #0
	str	r3, [r4, #12]
	str	r2, [r4, #36]
	ble	.L77
	ldr	r2, [r4, #4]
	cmp	r2, #120
	suble	r0, r0, #1
	strle	r0, [r1, #4]
.L77:
	ldr	r2, .L93+20
	ldrh	r2, [r2, #48]
	tst	r2, #16
	beq	.L92
.L80:
	ldr	r2, [r4, #32]
	add	r2, r2, #1
	str	r2, [r4, #32]
.L81:
	ldr	r2, [r4, #8]
	ldr	r1, [r1]
	sub	r3, r3, r0
	sub	r2, r2, r1
	stm	r4, {r2, r3}
	pop	{r4, lr}
	bx	lr
.L90:
	ldr	r1, .L93+24
.L71:
	ldr	r3, .L93+20
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L74
.L91:
	ldr	r3, [r4]
	cmp	r3, #131
	bgt	.L74
	ldr	r0, [r4, #8]
	ldr	r2, [r4, #28]
	add	ip, r0, r2
	cmp	ip, #255
	bgt	.L74
	mov	lr, #2
	ldr	ip, [r4, #16]
	add	r0, ip, r0
	ldr	ip, [r1]
	cmp	ip, #95
	str	r0, [r4, #8]
	str	lr, [r4, #36]
	bgt	.L74
	add	r2, r2, r2, lsr #31
	add	r3, r3, r2, asr #1
	cmp	r3, #80
	addeq	ip, ip, #1
	streq	ip, [r1]
	b	.L74
.L76:
	ldr	r2, .L93+20
	ldrh	r2, [r2, #48]
	tst	r2, #16
	bne	.L78
	ldr	r2, [r4, #24]
	add	r2, r3, r2
	cmp	r2, #255
	bgt	.L78
.L82:
	mov	r2, #1
	cmp	r0, #15
	add	r3, r3, r2
	str	r3, [r4, #12]
	str	r2, [r4, #36]
	bgt	.L80
	ldr	r2, [r4, #4]
	cmp	r2, #119
	addgt	r0, r0, #1
	strgt	r0, [r1, #4]
	b	.L80
.L78:
	ldr	r2, [r4, #36]
	cmp	r2, #6
	bne	.L80
	mov	ip, #0
	ldr	r2, [r4, #40]
	str	ip, [r4, #60]
	str	r2, [r4, #36]
	b	.L81
.L92:
	ldr	r2, [r4, #24]
	add	r2, r3, r2
	cmp	r2, #255
	ble	.L82
	b	.L80
.L94:
	.align	2
.L93:
	.word	panda
	.word	85899345
	.word	-1030792151
	.word	171798690
	.word	__aeabi_idivmod
	.word	67109120
	.word	.LANCHOR0
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
	ldr	r4, .L107
	ldr	r5, .L107+4
	mov	fp, #5
	ldr	r6, .L107+8
	ldr	r8, .L107+12
	ldr	r10, .L107+16
	sub	sp, sp, #20
	add	r7, r4, #960
	sub	r9, r5, #8
	b	.L100
.L97:
	add	r4, r4, #32
	cmp	r4, r7
	add	r5, r5, #8
	beq	.L106
.L100:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	beq	.L97
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
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
	beq	.L97
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
	ldr	r2, [r4, #24]
	cmp	r2, #4
	str	r3, [r4, #28]
	ldreq	r3, [r6, #44]
	ldrne	r3, [r6, #48]
	addeq	r3, r3, #1
	addne	r3, r3, #1
	add	r4, r4, #32
	streq	r3, [r6, #44]
	strne	r3, [r6, #48]
	cmp	r4, r7
	add	r5, r5, #8
	bne	.L100
.L106:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L108:
	.align	2
.L107:
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
	ldr	r4, .L120
	ldr	r5, .L120+4
	ldr	r7, .L120+8
	ldr	r8, .L120+12
	sub	sp, sp, #16
	add	r6, r4, #480
	b	.L113
.L111:
	add	r4, r4, #32
	cmp	r4, r6
	beq	.L119
.L113:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	beq	.L111
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
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
	add	r4, r4, #32
	strne	r3, [r8]
	cmp	r4, r6
	bne	.L113
.L119:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L121:
	.align	2
.L120:
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
	ldr	r5, .L144
	mov	r6, r5
	ldr	r4, .L144+4
	ldr	r9, .L144+8
	ldr	fp, .L144+12
	ldr	r8, .L144+16
	sub	sp, sp, #20
	add	r10, r4, #96
.L129:
	ldrh	r2, [r9]
	tst	r2, #1
	beq	.L123
	ldrh	r7, [fp]
	ands	r7, r7, #1
	beq	.L141
.L123:
	ldr	r3, [r5, #32]
	add	r3, r3, #1
	str	r3, [r5, #32]
.L126:
	tst	r2, #2
	beq	.L127
	ldrh	r2, [fp]
	ands	r7, r2, #2
	beq	.L142
.L127:
	ldr	r3, [r5, #32]
	add	r3, r3, #1
	str	r3, [r5, #32]
.L128:
	add	r4, r4, #32
	cmp	r10, r4
	add	r6, r6, #68
	bne	.L129
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L141:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r8, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r8]
	ldr	r0, [r8, #4]
	ldr	ip, .L144+20
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L125
	ldr	r3, [r8, #44]
	cmp	r3, #0
	bgt	.L143
.L125:
	ldrh	r2, [r9]
	b	.L123
.L142:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r8, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r8]
	ldr	r0, [r8, #4]
	ldr	ip, .L144+20
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L127
	ldr	r3, [r8, #48]
	cmp	r3, #0
	ble	.L127
	mov	r2, r7
	ldr	r3, .L144+24
	ldr	r1, .L144+28
	ldr	r0, .L144+32
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
	b	.L128
.L143:
	mov	r2, r7
	ldr	r3, .L144+24
	ldr	r1, .L144+28
	ldr	r0, .L144+32
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
	b	.L126
.L145:
	.align	2
.L144:
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
	ldr	r2, .L148
	ldr	r3, [r2, #4]
	str	lr, [sp, #-4]!
	ldr	r0, [r2, #36]
	ldr	lr, [r2, #60]
	ldrb	ip, [r2]	@ zero_extendqisi2
	ldr	r1, .L148+4
	lsl	r3, r3, #23
	add	r2, r0, lr, lsl #5
	lsr	r3, r3, #23
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L149:
	.align	2
.L148:
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
	ldr	r3, .L166
	ldr	r2, .L166+4
	add	r0, r3, #240
.L158:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	beq	.L164
	str	lr, [sp, #-4]!
.L159:
	ldr	lr, [r2]
	ldr	ip, [r2, #4]
	ldr	r1, [r2, #24]
	strh	lr, [r3, #8]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	beq	.L165
.L152:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	bne	.L159
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	bne	.L152
.L165:
	ldr	lr, [sp], #4
	bx	lr
.L164:
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	bne	.L158
	bx	lr
.L167:
	.align	2
.L166:
	.word	shadowOAM
	.word	food
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
	ldr	r3, .L176
	ldr	r2, .L176+4
	add	r0, r3, #240
.L170:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	ldrne	ip, [r2]
	ldrne	r1, [r2, #4]
	strhne	lr, [r3, #12]	@ movhi
	strhne	ip, [r3, #8]	@ movhi
	strhne	r1, [r3, #10]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	bne	.L170
	ldr	lr, [sp], #4
	bx	lr
.L177:
	.align	2
.L176:
	.word	shadowOAM
	.word	food
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
	ldr	r3, .L197
	ldr	r2, .L197+4
	add	r0, r3, #120
.L187:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	beq	.L195
	str	lr, [sp, #-4]!
.L188:
	ldr	r1, [r2, #24]
	ldr	lr, [r2]
	ldr	ip, [r2, #4]
	add	r1, r1, #32
	strh	r1, [r3, #4]	@ movhi
	strh	lr, [r3]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	beq	.L196
.L180:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	bne	.L188
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	bne	.L180
.L196:
	ldr	r3, .L197+8
	ldr	r2, [r3]
	cmp	r2, #100
	moveq	r2, #0
	ldr	lr, [sp], #4
	streq	r2, [r3]
	bx	lr
.L195:
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	bne	.L187
	ldr	r3, .L197+8
	ldr	r2, [r3]
	cmp	r2, #100
	moveq	r2, #0
	streq	r2, [r3]
	bx	lr
.L198:
	.align	2
.L197:
	.word	shadowOAM+360
	.word	enemies
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
	ldr	r3, .L215
	ldr	r2, .L215+4
	add	ip, r3, #120
.L207:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	beq	.L213
	str	lr, [sp, #-4]!
.L208:
	ldr	r0, [r2, #4]
	ldr	r1, [r2, #24]
	ldr	lr, [r2]
	add	r0, r0, #5
	add	r1, r1, #32
	strh	r0, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	strh	lr, [r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	add	r2, r2, #32
	beq	.L214
.L201:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	bne	.L208
	add	r3, r3, #8
	cmp	r3, ip
	add	r2, r2, #32
	bne	.L201
.L214:
	ldr	lr, [sp], #4
	bx	lr
.L213:
	add	r3, r3, #8
	cmp	r3, ip
	add	r2, r2, #32
	bne	.L207
	bx	lr
.L216:
	.align	2
.L215:
	.word	shadowOAM+360
	.word	enemies
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
	ldr	r3, .L221
	ldr	r2, .L221+4
	add	ip, r3, #120
.L218:
	ldm	r2, {r0, r1}
	strh	lr, [r3, #4]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	add	r2, r2, #32
	bne	.L218
	ldr	lr, [sp], #4
	bx	lr
.L222:
	.align	2
.L221:
	.word	shadowOAM+360
	.word	enemies
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
	ldr	r2, .L225
	ldr	r3, .L225+4
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
.L226:
	.align	2
.L225:
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
	ldr	r3, .L231
	ldr	r2, .L231+4
	str	lr, [sp, #-4]!
	add	lr, r3, #24
.L228:
	ldr	ip, [r2]
	ldr	r0, [r2, #4]
	ldr	r1, [r2, #24]
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	add	r3, r3, #8
	cmp	r3, lr
	add	r2, r2, #32
	bne	.L228
	ldr	lr, [sp], #4
	bx	lr
.L232:
	.align	2
.L231:
	.word	shadowOAM+256
	.word	baskets
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
	ldr	r3, .L237
	ldr	r2, .L237+4
	push	{r4, lr}
	add	r4, r3, #204
.L234:
	ldr	lr, [r3, #60]
	ldr	r1, [r3, #36]
	ldr	ip, [r3]
	ldr	r0, [r3, #4]
	add	r3, r3, #68
	add	r1, r1, lr, lsl #5
	cmp	r3, r4
	strh	r1, [r2, #4]	@ movhi
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #2]	@ movhi
	add	r2, r2, #8
	bne	.L234
	pop	{r4, lr}
	bx	lr
.L238:
	.align	2
.L237:
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
	ldr	lr, .L268
	ldr	r5, .L268+4
	ldr	r2, [lr]
	ldr	r4, .L268+8
	ldr	r1, [r5]
	ldr	r0, [r4, #4]
	lsl	r3, r2, #24
	orr	r3, r3, #1073741824
	lsr	r3, r3, #16
	add	r1, r1, #1
	cmp	r0, #256
	str	r1, [r5]
	strh	r3, [ip, #10]	@ movhi
	ble	.L240
	add	r2, r2, #1
	lsl	r3, r2, #24
	orr	r3, r3, #1073741824
	lsr	r3, r3, #16
	sub	r0, r0, #256
	str	r2, [lr]
	str	r0, [r4, #4]
	strh	r3, [ip, #10]	@ movhi
.L241:
	ldr	r2, .L268+12
	ldr	r3, [r2]
	cmp	r3, #512
	subgt	r3, r3, #512
	strgt	r3, [r2]
	ldr	r3, .L268+16
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L243
	ldr	r0, .L268+20
	sub	r5, r0, #240
	mov	r3, r5
	mov	lr, #5
	ldr	r2, .L268+24
.L245:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	ldrne	ip, [r2]
	ldrne	r1, [r2, #4]
	strhne	lr, [r3, #12]	@ movhi
	strhne	ip, [r3, #8]	@ movhi
	strhne	r1, [r3, #10]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	bne	.L245
	mov	lr, #5
	ldr	r3, .L268+28
	ldr	r2, .L268+32
	add	ip, r3, #120
.L246:
	ldm	r2, {r0, r1}
	strh	lr, [r3, #4]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	add	r2, r2, #32
	bne	.L246
	mov	r2, #15
	mov	r3, #0
	ldr	r6, .L268+36
	str	r2, [r6, #48]
	str	r3, [r6, #44]
.L247:
	ldr	r7, .L268+40
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
	ldr	r2, .L268+44
	mov	lr, pc
	bx	r2
	ldr	r4, .L268+48
	sub	r1, r7, #320
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L243:
	cmp	r1, #49
	bgt	.L248
	ldr	r3, .L268+28
	ldr	r2, .L268+32
	add	ip, r3, #120
.L250:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	beq	.L249
	ldr	r0, [r2, #4]
	ldr	r1, [r2, #24]
	ldr	lr, [r2]
	add	r0, r0, #5
	add	r1, r1, #32
	strh	r0, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	strh	lr, [r3]	@ movhi
.L249:
	add	r3, r3, #8
	cmp	r3, ip
	add	r2, r2, #32
	bne	.L250
.L251:
	ldr	r5, .L268+52
	mov	r2, r5
	ldr	r3, .L268+24
	add	r0, r5, #240
.L253:
	ldr	r1, [r3, #28]
	cmp	r1, #0
	beq	.L252
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	ldr	r1, [r3, #24]
	strh	lr, [r2, #8]	@ movhi
	strh	ip, [r2, #10]	@ movhi
	strh	r1, [r2, #12]	@ movhi
.L252:
	add	r2, r2, #8
	cmp	r2, r0
	add	r3, r3, #32
	bne	.L253
	bl	checkFoodCollected
	ldr	r6, .L268+36
	bl	checkEnemyCollision
	b	.L247
.L240:
	cmp	r0, #0
	bne	.L241
	cmp	r2, #28
	ble	.L241
	mov	r0, #256
	sub	r2, r2, #1
	lsl	r3, r2, #24
	orr	r3, r3, #1073741824
	lsr	r3, r3, #16
	str	r2, [lr]
	str	r0, [r4, #4]
	strh	r3, [ip, #10]	@ movhi
	b	.L241
.L248:
	bl	drawEnemies
	b	.L251
.L269:
	.align	2
.L268:
	.word	screenBlock
	.word	count
	.word	.LANCHOR0
	.word	playerHOff
	.word	cheatGame
	.word	shadowOAM+240
	.word	food
	.word	shadowOAM+360
	.word	enemies
	.word	panda
	.word	shadowOAM+320
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
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
	ldr	r3, .L271
	str	r2, [r3, #60]
	str	r2, [r3, #128]
	str	r2, [r3, #196]
	bx	lr
.L272:
	.align	2
.L271:
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
	ldr	r6, .L330
	bl	updatePanda2
	ldr	r3, [r6, #4]
	ldr	ip, [r6, #60]
	ldr	r2, [r6, #36]
	ldr	r1, .L330+4
	ldrb	r0, [r6]	@ zero_extendqisi2
	add	r2, r2, ip, lsl #5
	lsl	r3, r3, #23
	strh	r2, [r1, #4]	@ movhi
	lsr	r3, r3, #23
	ldr	r2, .L330+8
	strh	r3, [r1, #2]	@ movhi
	strh	r0, [r1]	@ movhi
	add	r3, r1, #256
	add	r1, r1, #280
.L274:
	ldr	lr, [r2]
	ldr	ip, [r2, #4]
	ldr	r0, [r2, #24]
	strh	lr, [r3]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	add	r3, r3, #8
	cmp	r3, r1
	add	r2, r2, #32
	bne	.L274
	ldr	r4, .L330+12
	mov	lr, #141
	mov	r2, r4
	mov	ip, #82
	mov	r0, #150
	mov	r1, #87
	ldr	r3, [r6, #48]
	add	r3, r3, #8
	strh	r3, [r4, #4]	@ movhi
	ldr	r3, [r6, #44]
	strh	lr, [r4]	@ movhi
	strh	ip, [r4, #2]	@ movhi
	strh	r0, [r2, #8]!	@ movhi
	add	r3, r3, #8
	ldr	r5, .L330+16
	strh	r1, [r2, #2]	@ movhi
	strh	r3, [r4, #12]	@ movhi
	bl	checkFoodDelivered
	mov	r2, r5
	sub	r3, r4, #32
	add	r4, r5, #204
.L275:
	ldr	lr, [r2, #60]
	ldr	r1, [r2, #36]
	ldr	ip, [r2]
	ldr	r0, [r2, #4]
	add	r2, r2, #68
	add	r1, r1, lr, lsl #5
	cmp	r4, r2
	strh	r1, [r3, #4]	@ movhi
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	add	r3, r3, #8
	bne	.L275
	ldr	r2, .L330+20
	ldr	r3, [r5, #32]
	ldr	r1, .L330+24
	mla	r3, r1, r3, r2
	ldr	r2, .L330+28
	cmp	r2, r3, ror #3
	movcc	r3, #0
	strcc	r3, [r5, #60]
	strcc	r3, [r5, #128]
	strcc	r3, [r5, #196]
	ldr	r3, [r5, #44]
	cmp	r3, #5
	beq	.L277
	ldr	r2, [r5, #48]
	cmp	r2, #3
	beq	.L277
.L278:
	mov	r3, #67108864
	ldr	r2, .L330+32
	ldrh	r1, [r2, #4]
	strh	r1, [r3, #20]	@ movhi
	ldrh	r1, [r2]
	ldr	r2, .L330+36
	strh	r1, [r3, #22]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r4, .L330+40
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L330+4
	mov	lr, pc
	bx	r4
	mov	r3, #0
	str	r3, [r5, #60]
	str	r3, [r5, #128]
	str	r3, [r5, #196]
	pop	{r4, r5, r6, lr}
	bx	lr
.L277:
	ldr	r2, [r5, #112]
	cmp	r2, #5
	beq	.L279
	ldr	r1, [r5, #116]
	cmp	r1, #3
	beq	.L279
	cmp	r3, #5
	beq	.L278
	ldr	r3, [r5, #48]
	cmp	r3, #3
	bne	.L278
	ldr	r3, [r5, #116]
	cmp	r3, #3
	bne	.L278
.L284:
	ldr	r3, [r5, #180]
	cmp	r3, #5
	beq	.L288
	ldr	r3, [r5, #184]
	cmp	r3, #3
	bne	.L278
.L288:
	add	r2, r6, #44
	ldmia	r2, {r2, r3}
	orr	r3, r2, r3
	cmp	r3, #0
	movne	r2, #1
	ldrne	r3, .L330+44
	strne	r2, [r3]
	b	.L278
.L279:
	ldr	r1, [r5, #180]
	cmp	r1, #5
	beq	.L281
	ldr	r1, [r5, #184]
	cmp	r1, #3
	beq	.L281
	cmp	r3, #5
	bne	.L283
.L286:
	cmp	r2, #5
	beq	.L284
.L329:
	ldr	r3, [r5, #116]
	cmp	r3, #3
	beq	.L284
	b	.L278
.L283:
	ldr	r3, [r5, #48]
	cmp	r3, #3
	bne	.L278
	cmp	r2, #5
	beq	.L284
	b	.L329
.L281:
	add	r0, r6, #44
	ldmia	r0, {r0, r1}
	orr	r1, r0, r1
	cmp	r1, #0
	moveq	r0, #1
	ldreq	r1, .L330+48
	streq	r0, [r1]
	cmp	r3, #5
	beq	.L286
	b	.L283
.L331:
	.align	2
.L330:
	.word	panda
	.word	shadowOAM
	.word	baskets
	.word	shadowOAM+320
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
	.comm	baskets,96,4
	.comm	enemies,480,4
	.comm	food,960,4
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
