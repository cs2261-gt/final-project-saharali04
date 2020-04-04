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
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	r1, #2
	mov	r0, #8
	mov	lr, #76
	mov	ip, #66
	ldr	r3, .L4
	stm	r3, {ip, lr}
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r1, [r3, #48]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	r2, [r3, #44]
	ldr	lr, [sp], #4
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
	tst	r9, #1
	moveq	r1, #4
	movne	r1, #3
	mov	r2, #2
	smull	r3, ip, r6, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #6
	add	ip, r3, r3, lsl #3
	add	r9, r9, #1
	add	r3, r3, ip, lsl #1
	sub	r0, r0, r3, lsl #3
	cmp	r9, #30
	str	r0, [r4]
	str	r1, [r4, #24]
	str	r2, [r4, #12]
	str	r2, [r4, #8]
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
	.word	1808407283
	.size	initFood, .-initFood
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
	str	lr, [sp, #-4]!
	mov	ip, #66
	mov	lr, #76
	mov	r2, #0
	mov	r1, #2
	mov	r0, #8
	ldr	r3, .L16
	stm	r3, {ip, lr}
	ldr	lr, [sp], #4
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r1, [r3, #48]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	r2, [r3, #44]
	b	initFood
.L17:
	.align	2
.L16:
	.word	panda
	.size	initGame, .-initGame
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
	ldr	r6, .L52
	ldr	r3, [r6, #28]
	cmp	r3, #6
	movne	r2, #0
	strne	r3, [r6, #32]
	strne	r2, [r6, #28]
	ldr	r1, .L52+4
	ldr	r2, [r6, #24]
	ldr	r3, .L52+8
	mla	r3, r2, r3, r1
	ldr	r1, .L52+12
	cmp	r3, r1
	addhi	r2, r2, #1
	strhi	r2, [r6, #24]
	sub	sp, sp, #16
	bhi	.L21
	ldr	r0, [r6, #44]
	ldr	r3, .L52+16
	ldr	r1, [r6, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r6, #44]
.L21:
	ldr	r3, .L52+20
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L22
	mov	r2, #2
	ldr	r3, [r6]
	ldr	r1, [r6, #8]
	sub	r3, r3, r1
	str	r3, [r6]
	str	r2, [r6, #28]
.L22:
	ldr	r3, .L52+20
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L23
	mov	r2, #2
	ldr	r3, [r6]
	ldr	r1, [r6, #8]
	add	r3, r3, r1
	str	r3, [r6]
	str	r2, [r6, #28]
.L23:
	ldr	r3, .L52+20
	ldrh	r2, [r3, #48]
	tst	r2, #32
	ldr	r0, [r6, #4]
	bne	.L24
	mov	r2, #1
	ldrh	r1, [r3, #48]
	ldr	r3, [r6, #12]
	tst	r1, #16
	sub	r3, r0, r3
	movne	r0, r3
	str	r3, [r6, #4]
	str	r2, [r6, #28]
	bne	.L26
.L25:
	mov	r3, #1
	str	r0, [r6, #4]
	str	r3, [r6, #28]
.L26:
	ldr	r3, [r6, #24]
	add	r3, r3, #1
	str	r3, [r6, #24]
.L29:
	ldr	r4, .L52+24
	ldr	r5, .L52+28
	ldr	r1, [r6]
	ldr	r8, .L52+32
	ldr	r9, .L52+36
	add	r7, r4, #960
	sub	r10, r5, #8
	b	.L28
.L30:
	add	r4, r4, #32
	cmp	r7, r4
	add	r5, r5, #8
	beq	.L49
.L28:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	beq	.L30
	add	ip, r4, #16
	ldm	r4, {r2, r3}
	ldm	ip, {ip, lr}
	stmib	sp, {r2, ip, lr}
	str	r3, [sp]
	add	r2, r6, #16
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L31
.L48:
	add	r4, r4, #32
	cmp	r7, r4
	ldr	r1, [r6]
	ldr	r0, [r6, #4]
	add	r5, r5, #8
	bne	.L28
.L49:
	cmp	r0, #232
	cmpls	r1, #152
	movhi	r2, #1
	ldrhi	r3, .L52+40
	strhi	r2, [r3]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L31:
	mov	r1, #5
	ldm	r4, {r0, ip}
	mov	r3, #512
	mov	r2, #117440512
	strh	r1, [r5, #4]	@ movhi
	strh	r0, [r5]	@ movhi
	mov	r1, r10
	mov	r0, #3
	strh	ip, [r5, #2]	@ movhi
	mov	lr, pc
	bx	r9
	mov	r3, #0
	ldr	r2, [r4, #24]
	cmp	r2, #4
	str	r3, [r4, #28]
	ldrne	r3, [r6, #40]
	addne	r3, r3, #1
	strne	r3, [r6, #40]
	bne	.L48
.L50:
	ldr	r3, [r6, #36]
	add	r3, r3, #1
	str	r3, [r6, #36]
	ldr	r1, [r6]
	ldr	r0, [r6, #4]
	b	.L30
.L24:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L51
	ldr	r3, [r6, #28]
	cmp	r3, #6
	bne	.L26
	mov	r2, #0
	ldr	r3, [r6, #32]
	str	r2, [r6, #44]
	str	r3, [r6, #28]
	b	.L29
.L51:
	ldr	r3, [r6, #12]
	add	r0, r0, r3
	b	.L25
.L53:
	.align	2
.L52:
	.word	panda
	.word	85899345
	.word	-1030792151
	.word	171798690
	.word	__aeabi_idivmod
	.word	67109120
	.word	food
	.word	shadowOAM+8
	.word	collision
	.word	DMANow
	.word	hasLost
	.size	updatePanda, .-updatePanda
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
	ldr	r3, .L56
	str	lr, [sp, #-4]!
	ldr	r1, [r3, #28]
	ldr	lr, [r3, #44]
	ldr	ip, [r3]
	ldr	r0, [r3, #4]
	ldr	r2, .L56+4
	add	r3, r1, lr, lsl #5
	strh	r3, [r2, #4]	@ movhi
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L57:
	.align	2
.L56:
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
	ldr	r3, .L74
	ldr	r2, .L74+4
	add	r0, r3, #240
.L66:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	beq	.L72
	str	lr, [sp, #-4]!
.L67:
	ldr	lr, [r2]
	ldr	ip, [r2, #4]
	ldr	r1, [r2, #24]
	strh	lr, [r3, #8]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	beq	.L73
.L60:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	bne	.L67
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	bne	.L60
.L73:
	ldr	lr, [sp], #4
	bx	lr
.L72:
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	bne	.L66
	bx	lr
.L75:
	.align	2
.L74:
	.word	shadowOAM
	.word	food
	.size	drawFood, .-drawFood
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
	push	{r4, lr}
	bl	updatePanda
	ldr	r2, .L84
	mov	r3, r2
	ldr	r1, .L84+4
	ldr	r0, [r1, #28]
	ldr	r4, [r1, #44]
	ldr	lr, [r1]
	ldr	ip, [r1, #4]
	add	r1, r0, r4, lsl #5
	strh	r1, [r2, #4]	@ movhi
	strh	lr, [r2]	@ movhi
	strh	ip, [r2, #2]	@ movhi
	ldr	r2, .L84+8
	add	r0, r3, #240
.L78:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	beq	.L77
	ldr	lr, [r2]
	ldr	ip, [r2, #4]
	ldr	r1, [r2, #24]
	strh	lr, [r3, #8]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	strh	r1, [r3, #12]	@ movhi
.L77:
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	bne	.L78
	ldr	r3, .L84+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L84+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L84
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L85:
	.align	2
.L84:
	.word	shadowOAM
	.word	panda
	.word	food
	.word	waitForVBlank
	.word	DMANow
	.size	updateGame, .-updateGame
	.comm	hasLost,4,4
	.comm	food,960,4
	.comm	panda,52,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
