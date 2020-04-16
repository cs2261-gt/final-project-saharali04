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
	mov	r2, #32
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
	mov	r10, #32
	rsb	ip, r3, r3, lsl #4
	lsl	ip, ip, #1
	str	ip, [r2]
	str	r10, [r2, #4]
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
	mov	r2, #0
	push	{r4, lr}
	mov	r1, #8
	mov	lr, #3
	mov	r4, #1
	mov	ip, #28
	ldr	r3, .L46
	str	r2, [r3]
	ldr	r3, .L46+4
	ldr	r0, .L46+8
	str	r2, [r3]
	ldr	r3, .L46+12
	str	r2, [r0]
	str	r2, [r0, #4]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	str	r2, [r3, #60]
	ldr	r2, .L46+16
	str	lr, [r3, #64]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r4, [r3, #20]
	str	r4, [r3, #16]
	str	ip, [r2]
	bl	initFood
	bl	initEnemies
	mov	r2, #12
	mov	r0, #75
	mov	r1, #225
	ldr	r3, .L46+20
	str	r4, [r3, #36]
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	pop	{r4, lr}
	bx	lr
.L47:
	.align	2
.L46:
	.word	playerHOff
	.word	hasShield
	.word	.LANCHOR0
	.word	panda
	.word	screenBlock
	.word	door
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
	.align	2
	.global	initDoor
	.syntax unified
	.arm
	.fpu softvfp
	.type	initDoor, %function
initDoor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #12
	mov	ip, #1
	mov	r0, #75
	mov	r1, #225
	ldr	r3, .L59
	str	ip, [r3, #36]
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	bx	lr
.L60:
	.align	2
.L59:
	.word	door
	.size	initDoor, .-initDoor
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
	ldr	r4, .L135
	ldr	r3, [r4, #36]
	cmp	r3, #6
	movne	r2, #0
	strne	r3, [r4, #40]
	strne	r2, [r4, #36]
	ldr	r1, .L135+4
	ldr	r2, [r4, #32]
	ldr	r3, .L135+8
	mla	r3, r2, r3, r1
	ldr	r1, .L135+12
	cmp	r3, r1
	addhi	r2, r2, #1
	strhi	r2, [r4, #32]
	bhi	.L64
	ldr	r0, [r4, #60]
	ldr	r3, .L135+16
	ldr	r1, [r4, #64]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #60]
.L64:
	ldr	r3, .L135+20
	ldr	r3, [r3]
	ldr	r1, .L135+24
	cmp	r3, #0
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldrh	r1, [r1, #48]
	bne	.L65
	tst	r1, #64
	beq	.L121
.L125:
	ldr	r0, .L135+28
	ldr	r1, .L135+32
.L66:
	ldr	ip, .L135+24
	ldrh	ip, [ip, #48]
	tst	ip, #128
	bne	.L68
	ldr	r5, [r4, #28]
	add	ip, r5, r3
	cmp	ip, #235
	ble	.L128
.L68:
	ldr	ip, .L135+24
	ldrh	ip, [ip, #48]
	tst	ip, #16
	beq	.L129
	ldr	lr, [r4, #36]
	ldr	ip, [r1]
	ldr	r1, [r0]
	cmp	lr, #6
	sub	r2, r2, ip
	sub	r3, r3, r1
	bne	.L82
	mov	r0, #0
	ldr	r1, [r4, #40]
	str	r0, [r4, #60]
	str	r1, [r4, #36]
	str	r2, [r4, #4]
	str	r3, [r4]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L65:
	ldr	r0, .L135+28
	tst	r1, #64
	ldr	r1, [r0]
	bne	.L79
	ldr	lr, [r4, #16]
	sub	lr, r3, lr
	ldr	r5, .L135+36
	add	ip, r2, lr, lsl #10
	lsl	ip, ip, #1
	ldrh	ip, [r5, ip]
	cmp	ip, #0
	lsl	r6, lr, #10
	beq	.L79
	add	r7, r4, #20
	ldm	r7, {r7, ip}
	add	ip, r2, ip
	sub	ip, ip, r7
	add	ip, ip, r6
	lsl	ip, ip, #1
	ldrh	ip, [r5, ip]
	cmp	ip, #0
	cmpne	r3, #0
	bgt	.L130
.L79:
	ldr	ip, .L135+24
	ldrh	ip, [ip, #48]
	tst	ip, #128
	bne	.L80
	ldr	r5, [r4, #28]
	add	ip, r5, r3
	cmp	ip, #235
	bgt	.L80
	add	lr, r2, ip, lsl #10
	ldr	r6, .L135+36
	lsl	lr, lr, #1
	ldrh	lr, [r6, lr]
	cmp	lr, #0
	lsl	ip, ip, #10
	beq	.L80
	add	r7, r4, #20
	ldm	r7, {r7, lr}
	add	lr, r2, lr
	sub	lr, lr, r7
	add	ip, lr, ip
	lsl	ip, ip, #1
	ldrh	ip, [r6, ip]
	cmp	ip, #0
	beq	.L80
	mov	ip, #2
	ldr	lr, [r4, #16]
	cmp	r1, #95
	add	r3, r3, lr
	str	r3, [r4, #8]
	str	ip, [r4, #36]
	bgt	.L80
	ldr	lr, [r4]
	add	ip, r5, r5, lsr #31
	add	ip, lr, ip, asr #1
	cmp	ip, #80
	addeq	r1, r1, #1
	streq	r1, [r0]
.L80:
	ldr	ip, .L135+24
	ldrh	ip, [ip, #48]
	ldr	r6, .L135+32
	tst	ip, #16
	ldr	r5, [r6]
	beq	.L131
.L81:
	mov	r0, #1
	str	r0, [r4, #36]
	sub	r2, r2, r5
	sub	r3, r3, r1
.L82:
	ldr	r1, [r4, #32]
	add	r1, r1, #1
	str	r1, [r4, #32]
	str	r2, [r4, #4]
	str	r3, [r4]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L131:
	ldr	ip, [r4, #24]
	add	ip, r2, ip
	cmp	ip, #1004
	bge	.L81
	ldr	r7, .L135+36
	add	lr, ip, r3, lsl #10
	lsl	lr, lr, #1
	ldrh	lr, [r7, lr]
	ldr	r8, .L135+40
	cmp	lr, r8
	bne	.L81
	ldr	r8, [r4, #28]
	ldr	r9, [r4, #16]
	add	r8, r3, r8
	sub	r8, r8, r9
	add	ip, ip, r8, lsl #10
	lsl	ip, ip, #1
	ldrh	ip, [r7, ip]
	cmp	ip, lr
	bne	.L81
	ldr	ip, .L135+44
	ldr	ip, [ip]
	add	r2, r2, #1
	cmp	ip, #30
	str	r2, [r4, #12]
	bgt	.L81
	ldr	ip, [r0, #4]
	ldr	lr, .L135+48
	cmp	ip, lr
	bgt	.L81
	ldr	lr, [r4, #4]
	cmp	lr, #120
	ble	.L81
	ldr	r7, .L135+52
	ldr	lr, [r7]
	add	ip, ip, #1
	add	r5, r5, #1
	add	lr, lr, #1
	str	ip, [r0, #4]
	str	r5, [r6]
	str	lr, [r7]
	b	.L81
.L121:
	ldr	ip, [r4, #16]
	sub	ip, r3, ip
	ldr	r0, .L135+36
	add	r1, r2, ip, lsl #10
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, #0
	lsl	lr, ip, #10
	beq	.L67
	ldr	r1, [r4, #24]
	ldr	r5, [r4, #20]
	add	r1, r2, r1
	sub	r1, r1, r5
	add	r1, r1, lr
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, #0
	beq	.L67
	cmp	r3, #0
	ble	.L125
	mov	r3, #2
	ldr	r0, .L135+28
	ldr	r1, [r0]
	cmp	r1, #0
	str	ip, [r4, #8]
	str	r3, [r4, #36]
	ble	.L86
	ldr	r3, [r4, #28]
	ldr	lr, [r4]
	add	r3, r3, r3, lsr #31
	add	r3, lr, r3, asr #1
	cmp	r3, #80
	beq	.L132
.L86:
	mov	r3, ip
	ldr	r1, .L135+32
	b	.L66
.L129:
	ldr	lr, [r4, #24]
	add	lr, r2, lr
.L84:
	cmp	lr, #1004
	bge	.L133
	ldr	r5, .L135+36
	add	ip, lr, r3, lsl #10
	lsl	ip, ip, #1
	ldrh	r6, [r5, ip]
	ldr	ip, .L135+40
	cmp	r6, ip
	beq	.L134
.L74:
	mov	ip, #0
	mov	r5, #120
	mov	lr, #70
	mov	r6, #28
	str	ip, [r0]
	str	ip, [r1]
	str	ip, [r0, #4]
	ldr	r1, .L135+44
	ldr	r0, .L135+52
	mov	r2, r5
	mov	r3, lr
	str	r5, [r4, #12]
	str	lr, [r4, #8]
	str	ip, [r0]
	str	r6, [r1]
	b	.L73
.L67:
	mov	ip, #0
	mov	r2, #120
	mov	r3, #70
	mov	r5, #28
	ldr	lr, .L135+52
	ldr	r0, .L135+28
	str	ip, [lr]
	ldr	r1, .L135+32
	ldr	lr, .L135+44
	str	r2, [r4, #4]
	str	r2, [r4, #12]
	str	r3, [r4]
	str	r3, [r4, #8]
	str	ip, [r0, #4]
	str	ip, [r0]
	str	ip, [r1]
	str	r5, [lr]
	b	.L66
.L128:
	add	lr, r2, ip, lsl #10
	ldr	r6, .L135+36
	lsl	lr, lr, #1
	ldrh	lr, [r6, lr]
	cmp	lr, #0
	lsl	ip, ip, #10
	beq	.L69
	add	r7, r4, #20
	ldm	r7, {r7, lr}
	add	lr, r2, lr
	sub	r7, lr, r7
	add	ip, r7, ip
	lsl	ip, ip, #1
	ldrh	ip, [r6, ip]
	cmp	ip, #0
	beq	.L69
	mov	ip, #2
	ldr	r6, [r4, #16]
	add	r3, r3, r6
	ldr	r6, [r0]
	cmp	r6, #95
	str	r3, [r4, #8]
	str	ip, [r4, #36]
	bgt	.L70
	ldr	r7, [r4]
	add	ip, r5, r5, lsr #31
	add	ip, r7, ip, asr #1
	cmp	ip, #80
	addeq	r6, r6, #1
	streq	r6, [r0]
.L70:
	ldr	ip, .L135+24
	ldrh	ip, [ip, #48]
	tst	ip, #16
	ldrne	ip, [r1]
	ldrne	r1, [r0]
	subne	r2, r2, ip
	subne	r3, r3, r1
	beq	.L84
	b	.L82
.L133:
	ldr	ip, [r1]
	ldr	r1, [r0]
	sub	r2, r2, ip
	sub	r3, r3, r1
.L73:
	mov	r1, #1
	str	r1, [r4, #36]
	b	.L82
.L69:
	mov	r5, #120
	mov	ip, #0
	mov	lr, #70
	mov	r6, #28
	mov	r2, r5
	str	r5, [r4, #4]
	str	r5, [r4, #12]
	ldr	r5, .L135+52
	str	ip, [r0, #4]
	str	ip, [r0]
	str	ip, [r1]
	str	ip, [r5]
	ldr	ip, .L135+44
	mov	r3, lr
	str	lr, [r4]
	str	lr, [r4, #8]
	str	r6, [ip]
	b	.L68
.L130:
	mov	r3, #2
	cmp	r1, #0
	str	lr, [r4, #8]
	str	r3, [r4, #36]
	ble	.L88
	ldr	r3, [r4, #28]
	ldr	ip, [r4]
	add	r3, r3, r3, lsr #31
	add	r3, ip, r3, asr #1
	cmp	r3, #80
	subeq	r1, r1, #1
	moveq	r3, lr
	streq	r1, [r0]
	beq	.L79
.L88:
	mov	r3, lr
	b	.L79
.L134:
	ldr	ip, [r4, #28]
	ldr	r7, [r4, #16]
	add	ip, r3, ip
	sub	ip, ip, r7
	add	lr, lr, ip, lsl #10
	lsl	lr, lr, #1
	ldrh	ip, [r5, lr]
	cmp	ip, r6
	bne	.L74
	ldr	ip, .L135+44
	ldr	ip, [ip]
	ldr	lr, [r0]
	cmp	ip, #30
	add	ip, r2, #1
	sub	r3, r3, lr
	str	ip, [r4, #12]
	ldr	lr, [r1]
	bgt	.L127
	ldr	r5, [r0, #4]
	ldr	r6, .L135+48
	cmp	r5, r6
	bgt	.L127
	ldr	r6, [r4, #4]
	cmp	r6, #120
	ble	.L127
	ldr	r6, .L135+52
	ldr	ip, [r6]
	add	r5, r5, #1
	str	r5, [r0, #4]
	add	ip, ip, #1
	add	r0, lr, #1
	str	r0, [r1]
	str	ip, [r6]
	sub	r2, r2, lr
	b	.L73
.L127:
	sub	r2, ip, lr
	b	.L73
.L132:
	sub	r1, r1, #1
	str	r1, [r0]
	mov	r3, ip
	ldr	r1, .L135+32
	b	.L66
.L136:
	.align	2
.L135:
	.word	panda
	.word	85899345
	.word	-1030792151
	.word	171798690
	.word	__aeabi_idivmod
	.word	hasShield
	.word	67109120
	.word	.LANCHOR0
	.word	playerHOff
	.word	collisionmapBitmap
	.word	32767
	.word	screenBlock
	.word	782
	.word	totalHOff
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
	ldr	r4, .L180
	ldr	r3, [r4, #36]
	cmp	r3, #6
	movne	r2, #0
	strne	r3, [r4, #40]
	strne	r2, [r4, #36]
	ldr	r1, .L180+4
	ldr	r2, [r4, #32]
	ldr	r3, .L180+8
	mla	r3, r2, r3, r1
	ldr	r1, .L180+12
	cmp	r3, r1
	addhi	r2, r2, #1
	strhi	r2, [r4, #32]
	bhi	.L140
	ldr	r0, [r4, #60]
	ldr	r3, .L180+16
	ldr	r1, [r4, #64]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #60]
.L140:
	ldr	r3, .L180+20
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	bne	.L141
	cmp	r3, #4
	bgt	.L176
.L141:
	ldr	r1, .L180+20
	ldrh	r1, [r1, #48]
	tst	r1, #128
	bne	.L142
	ldr	r1, [r4]
	cmp	r1, #131
	ble	.L177
.L142:
	ldr	r1, .L180+20
	ldrh	r0, [r1, #48]
	tst	r0, #32
	bne	.L143
	cmp	r2, #0
	ble	.L143
	ldr	ip, [r4, #20]
	sub	ip, r2, ip
	ldr	r0, .L180+24
	add	lr, ip, r3, lsl #8
	lsl	lr, lr, #1
	ldrh	lr, [r0, lr]
	cmp	lr, #0
	lsl	lr, r3, #8
	beq	.L143
	ldr	r5, [r4, #28]
	ldr	r6, [r4, #16]
	add	r5, r3, r5
	sub	r5, r5, r6
	add	ip, ip, r5, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [r0, ip]
	cmp	ip, #0
	beq	.L143
	mov	ip, #1
	ldrh	r1, [r1, #48]
	sub	r2, r2, #1
	tst	r1, #16
	str	r2, [r4, #12]
	str	ip, [r4, #36]
	bne	.L145
	ldr	r1, [r4, #24]
	add	r1, r2, r1
	cmp	r1, #255
	bgt	.L145
	b	.L149
.L143:
	ldr	r1, .L180+20
	ldrh	r1, [r1, #48]
	tst	r1, #16
	beq	.L178
.L146:
	ldr	r1, [r4, #36]
	cmp	r1, #6
	beq	.L179
.L145:
	ldr	r1, [r4, #32]
	add	r1, r1, #1
	str	r1, [r4, #32]
.L147:
	ldr	r1, .L180+28
	ldrh	r1, [r1]
	tst	r1, #1
	beq	.L148
	ldr	r1, .L180+32
	ldrh	r1, [r1]
	tst	r1, #1
	moveq	r0, #1
	ldreq	r1, .L180+36
	streq	r0, [r1]
.L148:
	str	r2, [r4, #4]
	str	r3, [r4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L178:
	ldr	r1, [r4, #24]
	add	r1, r2, r1
	cmp	r1, #255
	bgt	.L146
	ldr	r0, .L180+24
	lsl	lr, r3, #8
.L149:
	add	lr, lr, r1
	lsl	lr, lr, #1
	ldrh	ip, [r0, lr]
	ldr	lr, .L180+40
	cmp	ip, lr
	bne	.L146
	ldr	lr, [r4, #28]
	ldr	r5, [r4, #16]
	add	lr, r3, lr
	sub	lr, lr, r5
	add	r1, r1, lr, lsl #8
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, ip
	bne	.L146
	mov	r1, #1
	add	r2, r2, r1
	str	r2, [r4, #12]
	str	r1, [r4, #36]
	b	.L145
.L177:
	ldr	r1, [r4, #28]
	add	r1, r3, r1
	cmp	r1, #255
	bgt	.L142
	add	ip, r2, r1, lsl #8
	ldr	r0, .L180+24
	lsl	ip, ip, #1
	ldrh	ip, [r0, ip]
	cmp	ip, #0
	lsl	r1, r1, #8
	beq	.L142
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
	b	.L142
.L176:
	ldr	r1, [r4, #16]
	sub	r1, r3, r1
	ldr	r0, .L180+24
	add	ip, r2, r1, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [r0, ip]
	cmp	ip, #0
	lsl	lr, r1, #8
	beq	.L141
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
	b	.L141
.L179:
	mov	r0, #0
	ldr	r1, [r4, #40]
	str	r0, [r4, #60]
	str	r1, [r4, #36]
	b	.L147
.L181:
	.align	2
.L180:
	.word	panda
	.word	85899345
	.word	-1030792151
	.word	171798690
	.word	__aeabi_idivmod
	.word	67109120
	.word	collisionmap2Bitmap
	.word	oldButtons
	.word	buttons
	.word	hasShield
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
	ldr	r4, .L194
	ldr	r5, .L194+4
	add	r7, r4, #1472
	mov	fp, #5
	ldr	r6, .L194+8
	ldr	r8, .L194+12
	ldr	r10, .L194+16
	sub	sp, sp, #20
	add	r7, r7, #8
	sub	r9, r5, #8
	b	.L187
.L184:
	add	r4, r4, #40
	cmp	r4, r7
	add	r5, r5, #8
	beq	.L193
.L187:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L184
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
	beq	.L184
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
	bne	.L187
.L193:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L195:
	.align	2
.L194:
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
	ldr	r4, .L207
	add	r6, r4, #1472
	ldr	r5, .L207+4
	ldr	r7, .L207+8
	ldr	r8, .L207+12
	sub	sp, sp, #16
	add	r6, r6, #8
	b	.L200
.L198:
	add	r4, r4, #40
	cmp	r4, r6
	beq	.L206
.L200:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L198
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
	bne	.L200
.L206:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L208:
	.align	2
.L207:
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
	ldr	r4, .L229
	ldr	r5, .L229+4
	ldr	r8, .L229+8
	ldr	r10, .L229+12
	ldr	r7, .L229+16
	ldr	fp, .L229+20
	sub	sp, sp, #20
	add	r9, r4, #120
.L216:
	ldrh	r3, [r8]
	tst	r3, #1
	beq	.L210
	ldrh	r6, [r10]
	ands	r6, r6, #1
	beq	.L226
.L210:
	tst	r3, #2
	beq	.L214
	ldrh	r2, [r10]
	ands	r6, r2, #2
	beq	.L227
.L214:
	add	r4, r4, #40
	cmp	r4, r9
	add	r5, r5, #68
	bne	.L216
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L226:
	ldr	r3, [fp]
	ldr	r0, [r7, #12]
	add	r1, r4, #24
	ldm	r1, {r1, ip}
	ldr	r2, [r4]
	sub	r0, r0, r3
	ldr	r3, [r4, #4]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r7, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r7]
	ldr	ip, .L229+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L225
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bgt	.L228
.L225:
	ldrh	r3, [r8]
	b	.L210
.L227:
	ldr	r3, [fp]
	ldr	r0, [r7, #12]
	add	r1, r4, #24
	ldm	r1, {r1, ip}
	ldr	r2, [r4]
	sub	r0, r0, r3
	ldr	r3, [r4, #4]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r7, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r7]
	ldr	ip, .L229+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L214
	ldr	r3, [r7, #48]
	cmp	r3, #0
	ble	.L214
	mov	r2, r6
	ldr	r1, .L229+28
	ldr	r3, .L229+32
	ldr	r0, .L229+36
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r2, [r5, #48]
	ldr	r3, [r7, #48]
	add	r2, r2, r1
	sub	r3, r3, #1
	str	r2, [r5, #48]
	str	r3, [r7, #48]
	str	r1, [r5, #60]
	b	.L214
.L228:
	mov	r2, r6
	ldr	r1, .L229+28
	ldr	r3, .L229+32
	ldr	r0, .L229+36
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r2, [r5, #44]
	ldr	r3, [r7, #44]
	add	r2, r2, r1
	sub	r3, r3, #1
	str	r3, [r7, #44]
	str	r2, [r5, #44]
	str	r1, [r5, #60]
	ldrh	r3, [r8]
	b	.L210
.L230:
	.align	2
.L229:
	.word	baskets
	.word	pandas
	.word	oldButtons
	.word	buttons
	.word	panda
	.word	totalHOff
	.word	collision
	.word	21312
	.word	playSoundB
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
	ldr	r2, .L233
	ldr	r3, [r2, #4]
	str	lr, [sp, #-4]!
	ldr	r0, [r2, #36]
	ldr	lr, [r2, #60]
	ldrb	ip, [r2]	@ zero_extendqisi2
	ldr	r1, .L233+4
	lsl	r3, r3, #23
	add	r2, r0, lr, lsl #5
	lsr	r3, r3, #23
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L234:
	.align	2
.L233:
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
	ldr	r3, .L251
	ldr	r2, .L251+4
	add	r0, r3, #1472
	add	r0, r0, #8
.L243:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L249
	str	lr, [sp, #-4]!
.L244:
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	ldr	r1, [r3, #32]
	add	r3, r3, #40
	cmp	r3, r0
	strh	lr, [r2, #8]	@ movhi
	strh	ip, [r2, #10]	@ movhi
	strh	r1, [r2, #12]	@ movhi
	add	r2, r2, #8
	beq	.L250
.L237:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	bne	.L244
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L237
.L250:
	ldr	lr, [sp], #4
	bx	lr
.L249:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L243
	bx	lr
.L252:
	.align	2
.L251:
	.word	food
	.word	shadowOAM
	.size	drawFood, .-drawFood
	.align	2
	.global	drawDoor
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawDoor, %function
drawDoor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #75
	mov	r1, #96
	ldr	r3, .L254
	ldr	r0, .L254+4
	add	r2, r3, #800
	add	r3, r3, #804
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #2]	@ movhi
	strh	r1, [r3]	@ movhi
	bx	lr
.L255:
	.align	2
.L254:
	.word	shadowOAM
	.word	16609
	.size	drawDoor, .-drawDoor
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
	ldr	r3, .L264
	ldr	r2, .L264+4
	add	r0, r3, #1472
	add	r0, r0, #8
.L258:
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
	bne	.L258
	ldr	lr, [sp], #4
	bx	lr
.L265:
	.align	2
.L264:
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
	ldr	r3, .L285
	ldr	r2, .L285+4
	add	r0, r3, #1472
	add	r0, r0, #8
.L275:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L283
	str	lr, [sp, #-4]!
.L276:
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
	beq	.L284
.L268:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	bne	.L276
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L268
.L284:
	ldr	r3, .L285+8
	ldr	r2, [r3]
	cmp	r2, #100
	moveq	r2, #0
	ldr	lr, [sp], #4
	streq	r2, [r3]
	bx	lr
.L283:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L275
	ldr	r3, .L285+8
	ldr	r2, [r3]
	cmp	r2, #100
	moveq	r2, #0
	streq	r2, [r3]
	bx	lr
.L286:
	.align	2
.L285:
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
	ldr	r3, .L303
	ldr	r2, .L303+4
	add	ip, r3, #1472
	add	ip, ip, #8
.L295:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L301
	str	lr, [sp, #-4]!
.L296:
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
	beq	.L302
.L289:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	bne	.L296
	add	r3, r3, #40
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L289
.L302:
	ldr	lr, [sp], #4
	bx	lr
.L301:
	add	r3, r3, #40
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L295
	bx	lr
.L304:
	.align	2
.L303:
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
	ldr	r3, .L309
	ldr	r2, .L309+4
	add	ip, r3, #1472
	add	ip, ip, #8
.L306:
	ldm	r3, {r0, r1}
	add	r3, r3, #40
	cmp	r3, ip
	strh	lr, [r2, #4]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	add	r2, r2, #8
	bne	.L306
	ldr	lr, [sp], #4
	bx	lr
.L310:
	.align	2
.L309:
	.word	enemies
	.word	shadowOAM+360
	.size	clearEnemies, .-clearEnemies
	.align	2
	.global	drawFoodDelivered
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFoodDelivered, %function
drawFoodDelivered:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	ip, #159
	mov	r4, #139
	mov	lr, #149
	ldr	r0, .L313
	ldr	r1, [r0, #116]
	ldr	r2, [r0, #48]
	ldr	r3, [r0, #184]
	add	r2, r2, r1
	ldr	r6, [r0, #112]
	add	r2, r2, r3
	ldr	r3, [r0, #44]
	ldr	r1, .L313+4
	ldr	r0, [r0, #180]
	ldr	r5, .L313+8
	add	r3, r3, r6
	str	r2, [r5]
	add	r3, r3, r0
	add	r2, r2, #8
	add	r0, r1, #324
	strh	r2, [r0]	@ movhi
	ldr	r2, .L313+12
	str	r3, [r2]
	add	r3, r3, #8
	add	r2, r1, #332
	strh	r3, [r2]	@ movhi
	add	r3, r1, #320
	add	r1, r1, #328
	strh	r4, [r3]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	lr, [r1]	@ movhi
	strh	ip, [r1, #2]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L314:
	.align	2
.L313:
	.word	pandas
	.word	shadowOAM
	.word	totalStemsDelivered
	.word	totalLeavesDelivered
	.size	drawFoodDelivered, .-drawFoodDelivered
	.align	2
	.global	drawFoodCollected
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFoodCollected, %function
drawFoodCollected:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #159
	mov	lr, #139
	mov	ip, #149
	ldr	r2, .L317
	ldr	r3, .L317+4
	ldr	r1, [r2, #48]
	ldr	r2, [r2, #44]
	add	r4, r3, #324
	add	r1, r1, #8
	strh	r1, [r4]	@ movhi
	add	r2, r2, #8
	add	r1, r3, #332
	strh	r2, [r1]	@ movhi
	add	r2, r3, #320
	add	r3, r3, #328
	strh	lr, [r2]	@ movhi
	strh	r0, [r2, #2]	@ movhi
	pop	{r4, lr}
	strh	r0, [r3, #2]	@ movhi
	strh	ip, [r3]	@ movhi
	bx	lr
.L318:
	.align	2
.L317:
	.word	panda
	.word	shadowOAM
	.size	drawFoodCollected, .-drawFoodCollected
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
	ldr	r2, .L323
	ldr	r3, .L323+4
	push	{r4, r5, lr}
	ldr	r5, [r2]
	ldr	r4, [r2, #4]
	ldr	r2, .L323+8
	add	lr, r3, #120
.L320:
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
	bne	.L320
	pop	{r4, r5, lr}
	bx	lr
.L324:
	.align	2
.L323:
	.word	.LANCHOR0
	.word	baskets
	.word	shadowOAM+256
	.size	drawBaskets, .-drawBaskets
	.align	2
	.global	drawShield
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawShield, %function
drawShield:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #160
	ldr	r2, .L326
	ldm	r2, {r1, r3}
	ldr	r2, .L326+4
	sub	r3, r3, #4
	add	r0, r2, #808
	orr	r3, r3, #16384
	sub	r1, r1, #4
	add	r2, r2, #812
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	ip, [r2]	@ movhi
	bx	lr
.L327:
	.align	2
.L326:
	.word	panda
	.word	shadowOAM
	.size	drawShield, .-drawShield
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
	ldr	r2, .L332
	ldr	r3, .L332+4
	push	{r4, r5, lr}
	ldr	r1, .L332+8
	ldr	r5, [r2]
	ldr	r4, [r2, #4]
	add	lr, r3, #204
.L329:
	ldr	ip, [r3, #8]
	ldr	r0, [r3, #12]
	ldr	r2, [r3, #60]
	sub	ip, ip, r5
	sub	r0, r0, r4
	str	ip, [r3]
	str	r0, [r3, #4]
	lsl	r2, r2, #5
	add	r3, r3, #68
	add	r2, r2, #7
	cmp	r3, lr
	strh	ip, [r1]	@ movhi
	strh	r0, [r1, #2]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	add	r1, r1, #8
	bne	.L329
	pop	{r4, r5, lr}
	bx	lr
.L333:
	.align	2
.L332:
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
	ldr	r0, .L365
	ldr	r2, [r0]
	push	{r4, r5, r6, lr}
	strh	r3, [r1, #10]	@ movhi
	lsl	r3, r2, #24
	orr	r3, r3, #1073741824
	lsr	r3, r3, #16
	strh	r3, [r1, #10]	@ movhi
	ldr	r3, .L365+4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L362
	ldr	r5, .L365+8
.L335:
	ldr	r6, .L365+12
	ldr	r3, [r6, #4]
	cmp	r3, #256
	ble	.L336
	mov	ip, #67108864
	add	r2, r2, #1
	lsl	r1, r2, #24
	orr	r1, r1, #1073741824
	sub	r3, r3, #256
	lsr	r1, r1, #16
	str	r2, [r0]
	str	r3, [r6, #4]
	strh	r1, [ip, #10]	@ movhi
.L336:
	cmp	r2, #31
	beq	.L337
	cmp	r2, #30
	beq	.L364
.L338:
	ldr	r2, .L365+16
	ldr	r3, [r2]
	ldr	r4, .L365+20
	cmp	r3, #512
	subgt	r3, r3, #512
	strgt	r3, [r2]
	mov	r0, #0
	mov	r3, r4
	add	r1, r4, #204
.L342:
	ldr	r2, [r3, #60]
	cmp	r2, #1
	ldr	r2, [r3, #32]
	addeq	r2, r2, #1
	streq	r2, [r3, #32]
	cmp	r2, #15
	streq	r0, [r3, #32]
	streq	r0, [r3, #60]
	add	r3, r3, #68
	cmp	r3, r1
	bne	.L342
	bl	updatePanda
	ldr	r3, [r5, #4]
	ldr	ip, [r5, #60]
	ldr	r1, [r5, #36]
	ldr	r2, .L365+24
	ldrb	r0, [r5]	@ zero_extendqisi2
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	add	r1, r1, ip, lsl #5
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bl	checkFoodDelivered
	ldr	r3, [r4, #44]
	cmp	r3, #5
	beq	.L343
	ldr	r3, [r4, #48]
	cmp	r3, #3
	beq	.L343
.L344:
	mov	r3, #67108864
	ldrh	r2, [r6, #4]
	ldrh	r1, [r6]
	strh	r2, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	ldr	r2, .L365+28
	mov	lr, pc
	bx	r2
	ldr	r4, .L365+32
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L365+24
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L343:
	ldr	r3, [r4, #112]
	cmp	r3, #5
	beq	.L345
	ldr	r3, [r4, #116]
	cmp	r3, #3
	bne	.L344
.L345:
	ldr	r3, [r4, #180]
	cmp	r3, #5
	beq	.L346
	ldr	r3, [r4, #184]
	cmp	r3, #3
	bne	.L344
.L346:
	mov	r2, #1
	ldr	r3, .L365+36
	str	r2, [r3]
	b	.L344
.L362:
	mov	lr, #160
	ldr	r5, .L365+8
	ldr	r3, [r5, #4]
	ldr	ip, [r5]
	ldr	r1, .L365+40
	sub	r3, r3, #4
	orr	r3, r3, #16384
	sub	ip, ip, #4
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	lr, [r1, #4]	@ movhi
	b	.L335
.L364:
	ldr	r3, [r6, #4]
	cmp	r3, #256
	ble	.L338
.L337:
	bl	drawFriendlyPandas
	bl	drawBaskets
	bl	drawFoodDelivered
	b	.L338
.L366:
	.align	2
.L365:
	.word	screenBlock
	.word	hasShield
	.word	panda
	.word	.LANCHOR0
	.word	playerHOff
	.word	pandas
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.word	hasWon
	.word	shadowOAM+808
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
	ldr	r3, .L368
	str	r2, [r3, #60]
	str	r2, [r3, #128]
	str	r2, [r3, #196]
	bx	lr
.L369:
	.align	2
.L368:
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r7, .L400
	ldr	r3, [r7]
	sub	sp, sp, #20
	add	r3, r3, #1
	str	r3, [r7]
	bl	updatePanda2
	ldr	r3, .L400+4
	add	r2, r3, #8
	ldr	r0, [r3, #28]
	ldr	r1, [r3, #24]
	ldm	r2, {r2, r3}
	ldr	r6, .L400+8
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r6, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r6, #8]
	ldr	r4, .L400+12
	ldr	r0, [r6, #12]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	movne	r1, #1
	mov	r10, #75
	mov	r8, #96
	mov	ip, #159
	mov	lr, #149
	mov	r9, #139
	ldrne	r4, .L400+16
	ldrne	r2, .L400+20
	ldrne	r3, [r4, #48]
	ldrh	r0, [r6]
	strne	r1, [r2]
	ldr	r5, .L400+24
	addne	r3, r3, r1
	ldrh	r1, [r6, #4]
	strne	r3, [r4, #48]
	and	r3, r0, #255
	ldr	fp, [r6, #60]
	lsl	r2, r1, #23
	strh	r3, [r5]	@ movhi
	ldr	r3, [r6, #36]
	lsr	r2, r2, #23
	strh	r2, [r5, #2]	@ movhi
	add	r3, r3, fp, lsl #5
	ldr	r2, .L400+28
	strh	r3, [r5, #4]	@ movhi
	add	r3, r5, #800
	strh	r10, [r3]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, .L400+32
	ldr	r2, [r3]
	add	r3, r5, #804
	strh	r8, [r3]	@ movhi
	ldreq	r4, .L400+16
	ldr	r3, [r6, #44]
	cmp	r2, #0
	ldr	r2, [r6, #48]
	add	r8, r5, #320
	add	r6, r5, #328
	strh	ip, [r8, #2]	@ movhi
	strh	r9, [r8]	@ movhi
	add	r2, r2, #8
	strh	ip, [r6, #2]	@ movhi
	strh	lr, [r6]	@ movhi
	add	r3, r3, #8
	add	lr, r5, #324
	add	ip, r5, #332
	strh	r2, [lr]	@ movhi
	strh	r3, [ip]	@ movhi
	bne	.L399
	ldr	r3, [r7]
	cmp	r3, #49
	bgt	.L377
	ldr	r3, .L400+36
	add	ip, r3, #1472
	add	r2, r5, #360
	add	ip, ip, #8
.L379:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L378
	ldr	r0, [r3]
	ldr	r1, [r3, #32]
	ldr	lr, [r3, #4]
	add	r0, r0, #3
	add	r1, r1, #32
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	strh	lr, [r2, #2]	@ movhi
.L378:
	add	r3, r3, #40
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L379
.L380:
	ldr	r3, .L400+40
	ldr	r2, .L400+24
	add	r0, r3, #1472
	add	r0, r0, #8
.L382:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L381
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	ldr	r1, [r3, #32]
	strh	lr, [r2, #8]	@ movhi
	strh	ip, [r2, #10]	@ movhi
	strh	r1, [r2, #12]	@ movhi
.L381:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L382
	bl	checkFoodCollected
	bl	checkEnemyCollision
.L376:
	ldr	r3, .L400+44
	mov	lr, pc
	bx	r3
	ldr	r5, .L400+48
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L400+24
	mov	lr, pc
	bx	r5
	mov	r3, #0
	str	r3, [r4, #60]
	str	r3, [r4, #128]
	str	r3, [r4, #196]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L377:
	bl	drawEnemies
	b	.L380
.L399:
	mov	ip, #160
	sub	r3, r1, #4
	add	r2, r5, #808
	orr	r3, r3, #16384
	strh	r3, [r2, #2]	@ movhi
	sub	r0, r0, #4
	add	r3, r5, #812
	strh	r0, [r2]	@ movhi
	strh	ip, [r3]	@ movhi
	bl	checkFoodCollected
	ldr	r3, [r7]
	cmp	r3, #49
	bgt	.L373
	ldr	r3, .L400+36
	add	ip, r3, #1472
	add	r2, r5, #360
	add	ip, ip, #8
.L375:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L374
	ldr	r0, [r3]
	ldr	r1, [r3, #32]
	ldr	lr, [r3, #4]
	add	r0, r0, #3
	add	r1, r1, #32
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	strh	lr, [r2, #2]	@ movhi
.L374:
	add	r3, r3, #40
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L375
	b	.L376
.L373:
	bl	drawEnemies
	b	.L376
.L401:
	.align	2
.L400:
	.word	count
	.word	door
	.word	panda
	.word	collision
	.word	pandas
	.word	goToMaze
	.word	shadowOAM
	.word	16609
	.word	hasShield
	.word	enemies
	.word	food
	.word	waitForVBlank
	.word	DMANow
	.size	updateGame2, .-updateGame2
	.comm	goToMaze,4,4
	.comm	totalHOff,4,4
	.comm	screenBlock,4,4
	.comm	playerHOff,4,4
	.global	vOff
	.global	hOff
	.comm	totalLeavesDelivered,4,4
	.comm	totalStemsDelivered,4,4
	.comm	count,4,4
	.comm	hasShield,4,4
	.comm	hasWon,4,4
	.comm	hasLost,4,4
	.comm	pandas,204,4
	.comm	baskets,120,4
	.comm	enemies,1480,4
	.comm	food,1480,4
	.comm	door,40,4
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
