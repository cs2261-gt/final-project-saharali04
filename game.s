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
	push	{r4, r5, lr}
	mov	r5, #76
	mov	r4, #66
	mov	lr, #3
	mov	r0, #8
	mov	r1, #1
	mov	ip, #28
	ldr	r3, .L16
	str	r2, [r3]
	ldr	r3, .L16+4
	str	r2, [r3]
	str	r2, [r3, #4]
	ldr	r3, .L16+8
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	str	r2, [r3, #60]
	ldr	r2, .L16+12
	str	r5, [r3, #12]
	str	r4, [r3, #8]
	str	lr, [r3, #64]
	pop	{r4, r5, lr}
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	r1, [r3, #20]
	str	r1, [r3, #16]
	str	ip, [r2]
	b	initFood
.L17:
	.align	2
.L16:
	.word	playerHOff
	.word	.LANCHOR0
	.word	panda
	.word	screenBlock
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
	ldr	r3, .L22
.L19:
	str	r2, [r3, #4]
	add	r2, r2, #60
	cmp	r2, #240
	str	lr, [r3, #28]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	ip, [r3]
	str	r0, [r3, #24]
	add	r3, r3, #32
	bne	.L19
	ldr	lr, [sp], #4
	bx	lr
.L23:
	.align	2
.L22:
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
	ldr	r3, .L28
.L25:
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
	bne	.L25
	pop	{r4, lr}
	bx	lr
.L29:
	.align	2
.L28:
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
	ldr	r4, .L48
	ldr	r3, [r4, #36]
	cmp	r3, #6
	movne	r2, #0
	strne	r3, [r4, #40]
	strne	r2, [r4, #36]
	ldr	r1, .L48+4
	ldr	r2, [r4, #32]
	ldr	r3, .L48+8
	mla	r3, r2, r3, r1
	ldr	r1, .L48+12
	cmp	r3, r1
	addhi	r2, r2, #1
	strhi	r2, [r4, #32]
	bhi	.L33
	ldr	r0, [r4, #60]
	ldr	r3, .L48+16
	ldr	r1, [r4, #64]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #60]
.L33:
	ldr	r3, .L48+20
	ldrh	r3, [r3, #48]
	ldr	r1, .L48+24
	tst	r3, #64
	ldr	r0, [r1]
	ldr	r3, [r4, #8]
	bne	.L34
	cmp	r3, #0
	ble	.L34
	mov	r2, #2
	ldr	ip, [r4, #16]
	cmp	r0, #0
	sub	r3, r3, ip
	str	r3, [r4, #8]
	str	r2, [r4, #36]
	ble	.L34
	ldr	r2, [r4, #28]
	ldr	ip, [r4]
	add	r2, r2, r2, lsr #31
	add	r2, ip, r2, asr #1
	cmp	r2, #80
	subeq	r0, r0, #1
	streq	r0, [r1]
.L34:
	ldr	r2, .L48+20
	ldrh	r2, [r2, #48]
	tst	r2, #128
	bne	.L35
	ldr	r2, [r4, #28]
	add	ip, r2, r3
	cmp	ip, #235
	ble	.L46
.L35:
	ldr	r2, .L48+20
	ldrh	r2, [r2, #48]
	ldr	lr, .L48+28
	tst	r2, #32
	ldr	ip, [lr]
	ldr	r2, [r4, #12]
	bne	.L36
	cmp	r2, #0
	movgt	r5, #1
	strgt	r5, [r4, #36]
	ldr	r5, [r1, #4]
	subgt	r2, r2, #1
	strgt	r2, [r4, #12]
	cmp	r5, #0
	ble	.L36
	ldr	r6, .L48+32
	ldr	r6, [r6]
	cmp	r6, #27
	subgt	r5, r5, #1
	subgt	ip, ip, #1
	strgt	r5, [r1, #4]
	strgt	ip, [lr]
.L36:
	ldr	r5, .L48+20
	ldrh	r5, [r5, #48]
	tst	r5, #16
	bne	.L38
	ldr	r5, [r4, #24]
	add	r5, r2, r5
	cmp	r5, #1008
	ble	.L47
.L39:
	mov	r1, #1
	str	r1, [r4, #36]
.L40:
	ldr	r1, [r4, #32]
	add	r1, r1, #1
	str	r1, [r4, #32]
.L41:
	sub	r2, r2, ip
	sub	r3, r3, r0
	str	r2, [r4, #4]
	str	r3, [r4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L38:
	ldr	r1, [r4, #36]
	cmp	r1, #6
	bne	.L40
	mov	lr, #0
	ldr	r1, [r4, #40]
	str	lr, [r4, #60]
	str	r1, [r4, #36]
	b	.L41
.L47:
	ldr	r5, .L48+32
	ldr	r5, [r5]
	add	r2, r2, #1
	cmp	r5, #30
	str	r2, [r4, #12]
	bgt	.L39
	ldr	r5, [r1, #4]
	cmp	r5, #256
	bgt	.L39
	ldr	r6, [r4, #4]
	cmp	r6, #109
	addgt	r5, r5, #1
	addgt	ip, ip, #1
	strgt	r5, [r1, #4]
	strgt	ip, [lr]
	b	.L39
.L46:
	mov	ip, #2
	ldr	lr, [r4, #16]
	cmp	r0, #95
	add	r3, r3, lr
	str	r3, [r4, #8]
	str	ip, [r4, #36]
	bgt	.L35
	ldr	ip, [r4]
	add	r2, r2, r2, lsr #31
	add	r2, ip, r2, asr #1
	cmp	r2, #80
	addeq	r0, r0, #1
	streq	r0, [r1]
	b	.L35
.L49:
	.align	2
.L48:
	.word	panda
	.word	85899345
	.word	-1030792151
	.word	171798690
	.word	__aeabi_idivmod
	.word	67109120
	.word	.LANCHOR0
	.word	playerHOff
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
	push	{r4, lr}
	ldr	r4, .L77
	ldr	r3, [r4, #36]
	cmp	r3, #6
	movne	r2, #0
	strne	r3, [r4, #40]
	strne	r2, [r4, #36]
	ldr	r1, .L77+4
	ldr	r2, [r4, #32]
	ldr	r3, .L77+8
	mla	r3, r2, r3, r1
	ldr	r1, .L77+12
	cmp	r3, r1
	addhi	r2, r2, #1
	strhi	r2, [r4, #32]
	bhi	.L53
	ldr	r0, [r4, #60]
	ldr	r3, .L77+16
	ldr	r1, [r4, #64]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #60]
.L53:
	ldr	r3, .L77+20
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L74
	ldr	r3, [r4, #8]
	cmp	r3, #0
	ble	.L74
	mov	r0, #2
	ldr	r1, .L77+24
	ldr	ip, [r4, #16]
	ldr	r2, [r1]
	sub	r3, r3, ip
	cmp	r2, #0
	str	r3, [r4, #8]
	str	r0, [r4, #36]
	ble	.L55
	ldr	r3, [r4, #28]
	ldr	r0, [r4]
	add	r3, r3, r3, lsr #31
	add	r3, r0, r3, asr #1
	cmp	r3, #80
	ldr	r3, .L77+20
	ldrh	r3, [r3, #48]
	subeq	r2, r2, #1
	streq	r2, [r1]
	tst	r3, #128
	beq	.L75
.L58:
	ldr	r3, .L77+20
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldr	r0, [r1, #4]
	ldr	r3, [r4, #12]
	bne	.L60
	cmp	r3, #0
	ble	.L60
	mov	r2, #1
	sub	r3, r3, #1
	cmp	r0, #0
	str	r3, [r4, #12]
	str	r2, [r4, #36]
	ble	.L61
	ldr	r2, [r4, #4]
	cmp	r2, #120
	suble	r0, r0, #1
	strle	r0, [r1, #4]
.L61:
	ldr	r2, .L77+20
	ldrh	r2, [r2, #48]
	tst	r2, #16
	beq	.L76
.L64:
	ldr	r2, [r4, #32]
	add	r2, r2, #1
	str	r2, [r4, #32]
.L65:
	ldr	r2, [r4, #8]
	ldr	r1, [r1]
	sub	r3, r3, r0
	sub	r2, r2, r1
	stm	r4, {r2, r3}
	pop	{r4, lr}
	bx	lr
.L74:
	ldr	r1, .L77+24
.L55:
	ldr	r3, .L77+20
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L58
.L75:
	ldr	r3, [r4]
	cmp	r3, #131
	bgt	.L58
	ldr	r0, [r4, #8]
	ldr	r2, [r4, #28]
	add	ip, r0, r2
	cmp	ip, #255
	bgt	.L58
	mov	lr, #2
	ldr	ip, [r4, #16]
	add	r0, ip, r0
	ldr	ip, [r1]
	cmp	ip, #95
	str	r0, [r4, #8]
	str	lr, [r4, #36]
	bgt	.L58
	add	r2, r2, r2, lsr #31
	add	r3, r3, r2, asr #1
	cmp	r3, #80
	addeq	ip, ip, #1
	streq	ip, [r1]
	b	.L58
.L60:
	ldr	r2, .L77+20
	ldrh	r2, [r2, #48]
	tst	r2, #16
	bne	.L62
	ldr	r2, [r4, #24]
	add	r2, r3, r2
	cmp	r2, #255
	bgt	.L62
.L66:
	mov	r2, #1
	cmp	r0, #15
	add	r3, r3, r2
	str	r3, [r4, #12]
	str	r2, [r4, #36]
	bgt	.L64
	ldr	r2, [r4, #4]
	cmp	r2, #119
	addgt	r0, r0, #1
	strgt	r0, [r1, #4]
	b	.L64
.L62:
	ldr	r2, [r4, #36]
	cmp	r2, #6
	bne	.L64
	mov	ip, #0
	ldr	r2, [r4, #40]
	str	ip, [r4, #60]
	str	r2, [r4, #36]
	b	.L65
.L76:
	ldr	r2, [r4, #24]
	add	r2, r3, r2
	cmp	r2, #255
	ble	.L66
	b	.L64
.L78:
	.align	2
.L77:
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
	ldr	r4, .L91
	ldr	r5, .L91+4
	mov	fp, #5
	ldr	r6, .L91+8
	ldr	r8, .L91+12
	ldr	r10, .L91+16
	sub	sp, sp, #20
	add	r7, r4, #960
	sub	r9, r5, #8
	b	.L84
.L81:
	add	r4, r4, #32
	cmp	r4, r7
	add	r5, r5, #8
	beq	.L90
.L84:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	beq	.L81
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
	beq	.L81
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
	bne	.L84
.L90:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L92:
	.align	2
.L91:
	.word	food
	.word	shadowOAM+8
	.word	panda
	.word	collision
	.word	DMANow
	.size	checkFoodCollected, .-checkFoodCollected
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
	ldr	r5, .L115
	mov	r6, r5
	ldr	r4, .L115+4
	ldr	r9, .L115+8
	ldr	fp, .L115+12
	ldr	r8, .L115+16
	sub	sp, sp, #20
	add	r10, r4, #96
.L100:
	ldrh	r2, [r9]
	tst	r2, #1
	beq	.L94
	ldrh	r7, [fp]
	ands	r7, r7, #1
	beq	.L112
.L94:
	ldr	r3, [r5, #32]
	add	r3, r3, #1
	str	r3, [r5, #32]
.L97:
	tst	r2, #2
	beq	.L98
	ldrh	r2, [fp]
	ands	r7, r2, #2
	beq	.L113
.L98:
	ldr	r3, [r5, #32]
	add	r3, r3, #1
	str	r3, [r5, #32]
.L99:
	add	r4, r4, #32
	cmp	r10, r4
	add	r6, r6, #68
	bne	.L100
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L112:
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
	ldr	ip, .L115+20
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L96
	ldr	r3, [r8, #44]
	cmp	r3, #0
	bgt	.L114
.L96:
	ldrh	r2, [r9]
	b	.L94
.L113:
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
	ldr	ip, .L115+20
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L98
	ldr	r3, [r8, #48]
	cmp	r3, #0
	ble	.L98
	mov	r2, r7
	ldr	r3, .L115+24
	ldr	r1, .L115+28
	ldr	r0, .L115+32
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
	b	.L99
.L114:
	mov	r2, r7
	ldr	r3, .L115+24
	ldr	r1, .L115+28
	ldr	r0, .L115+32
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
	b	.L97
.L116:
	.align	2
.L115:
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
	ldr	r2, .L119
	ldr	r3, [r2, #4]
	str	lr, [sp, #-4]!
	ldr	r0, [r2, #36]
	ldr	lr, [r2, #60]
	ldrb	ip, [r2]	@ zero_extendqisi2
	ldr	r1, .L119+4
	lsl	r3, r3, #23
	add	r2, r0, lr, lsl #5
	lsr	r3, r3, #23
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L120:
	.align	2
.L119:
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
	ldr	r3, .L137
	ldr	r2, .L137+4
	add	r0, r3, #240
.L129:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	beq	.L135
	str	lr, [sp, #-4]!
.L130:
	ldr	lr, [r2]
	ldr	ip, [r2, #4]
	ldr	r1, [r2, #24]
	strh	lr, [r3, #8]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	beq	.L136
.L123:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	bne	.L130
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	bne	.L123
.L136:
	ldr	lr, [sp], #4
	bx	lr
.L135:
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	bne	.L129
	bx	lr
.L138:
	.align	2
.L137:
	.word	shadowOAM
	.word	food
	.size	drawFood, .-drawFood
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
	ldr	r2, .L141
	ldr	r3, .L141+4
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
.L142:
	.align	2
.L141:
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
	ldr	r3, .L147
	ldr	r2, .L147+4
	str	lr, [sp, #-4]!
	add	lr, r3, #24
.L144:
	ldr	ip, [r2]
	ldr	r0, [r2, #4]
	ldr	r1, [r2, #24]
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	add	r3, r3, #8
	cmp	r3, lr
	add	r2, r2, #32
	bne	.L144
	ldr	lr, [sp], #4
	bx	lr
.L148:
	.align	2
.L147:
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
	ldr	r3, .L153
	ldr	r2, .L153+4
	push	{r4, lr}
	add	r4, r3, #204
.L150:
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
	bne	.L150
	pop	{r4, lr}
	bx	lr
.L154:
	.align	2
.L153:
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
	mov	r0, #67108864
	ldr	ip, .L166
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, [ip]
	ldr	r6, .L166+4
	lsl	r2, r3, #24
	ldr	r1, [r6, #4]
	orr	r2, r2, #1073741824
	lsr	r2, r2, #16
	cmp	r1, #256
	strh	r2, [r0, #10]	@ movhi
	ble	.L156
	add	r3, r3, #1
	lsl	r2, r3, #24
	orr	r2, r2, #1073741824
	lsr	r2, r2, #16
	sub	r1, r1, #256
	str	r3, [ip]
	str	r1, [r6, #4]
	strh	r2, [r0, #10]	@ movhi
.L157:
	ldr	r2, .L166+8
	ldr	r3, [r2]
	ldr	r5, .L166+12
	cmp	r3, #512
	subgt	r3, r3, #512
	strgt	r3, [r2]
	bl	updatePanda
	ldr	r1, [r5, #60]
	ldr	r3, [r5, #4]
	ldr	r2, [r5, #36]
	ldr	r4, .L166+16
	add	r2, r2, r1, lsl #5
	lsl	r3, r3, #23
	ldrb	r1, [r5]	@ zero_extendqisi2
	lsr	r3, r3, #23
	strh	r3, [r4, #2]	@ movhi
	strh	r2, [r4, #4]	@ movhi
	strh	r1, [r4]	@ movhi
	bl	checkFoodCollected
	mov	r3, r4
	ldr	r2, .L166+20
	add	r0, r4, #240
.L160:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	beq	.L159
	ldr	lr, [r2]
	ldr	ip, [r2, #4]
	ldr	r1, [r2, #24]
	strh	lr, [r3, #8]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	strh	r1, [r3, #12]	@ movhi
.L159:
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	bne	.L160
	ldr	r4, .L166+24
	mov	lr, #82
	mov	r3, r4
	mov	ip, #150
	mov	r7, #141
	mov	r0, #87
	mov	r1, #67108864
	ldr	r2, [r5, #48]
	add	r2, r2, #8
	strh	lr, [r4, #2]	@ movhi
	strh	r2, [r4, #4]	@ movhi
	strh	r7, [r4]	@ movhi
	strh	ip, [r3, #8]!	@ movhi
	strh	r0, [r3, #2]	@ movhi
	ldrh	r3, [r6, #4]
	strh	r3, [r1, #20]	@ movhi
	ldr	r3, [r5, #44]
	ldrh	r2, [r6]
	add	r3, r3, #8
	strh	r2, [r1, #22]	@ movhi
	strh	r3, [r4, #12]	@ movhi
	ldr	r2, .L166+28
	mov	lr, pc
	bx	r2
	sub	r1, r4, #320
	mov	r3, #512
	ldr	r4, .L166+32
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L156:
	cmp	r1, #0
	bne	.L157
	mov	r1, #256
	sub	r3, r3, #1
	lsl	r2, r3, #24
	orr	r2, r2, #1073741824
	lsr	r2, r2, #16
	str	r3, [ip]
	str	r1, [r6, #4]
	strh	r2, [r0, #10]	@ movhi
	b	.L157
.L167:
	.align	2
.L166:
	.word	screenBlock
	.word	.LANCHOR0
	.word	playerHOff
	.word	panda
	.word	shadowOAM
	.word	food
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
	ldr	r3, .L169
	str	r2, [r3, #60]
	str	r2, [r3, #128]
	str	r2, [r3, #196]
	bx	lr
.L170:
	.align	2
.L169:
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
	ldr	r6, .L228
	bl	updatePanda2
	ldr	r3, [r6, #4]
	ldr	ip, [r6, #60]
	ldr	r2, [r6, #36]
	ldr	r1, .L228+4
	ldrb	r0, [r6]	@ zero_extendqisi2
	add	r2, r2, ip, lsl #5
	lsl	r3, r3, #23
	strh	r2, [r1, #4]	@ movhi
	lsr	r3, r3, #23
	ldr	r2, .L228+8
	strh	r3, [r1, #2]	@ movhi
	strh	r0, [r1]	@ movhi
	add	r3, r1, #256
	add	r1, r1, #280
.L172:
	ldr	lr, [r2]
	ldr	ip, [r2, #4]
	ldr	r0, [r2, #24]
	strh	lr, [r3]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	add	r3, r3, #8
	cmp	r3, r1
	add	r2, r2, #32
	bne	.L172
	ldr	r4, .L228+12
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
	ldr	r5, .L228+16
	strh	r1, [r2, #2]	@ movhi
	strh	r3, [r4, #12]	@ movhi
	bl	checkFoodDelivered
	mov	r2, r5
	sub	r3, r4, #32
	add	r4, r5, #204
.L173:
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
	bne	.L173
	ldr	r2, .L228+20
	ldr	r3, [r5, #32]
	ldr	r1, .L228+24
	mla	r3, r1, r3, r2
	ldr	r2, .L228+28
	cmp	r2, r3, ror #3
	movcc	r3, #0
	strcc	r3, [r5, #60]
	strcc	r3, [r5, #128]
	strcc	r3, [r5, #196]
	ldr	r3, [r5, #44]
	cmp	r3, #5
	beq	.L175
	ldr	r2, [r5, #48]
	cmp	r2, #3
	beq	.L175
.L176:
	mov	r3, #67108864
	ldr	r2, .L228+32
	ldrh	r1, [r2, #4]
	strh	r1, [r3, #20]	@ movhi
	ldrh	r1, [r2]
	ldr	r2, .L228+36
	strh	r1, [r3, #22]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r4, .L228+40
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L228+4
	mov	lr, pc
	bx	r4
	mov	r3, #0
	str	r3, [r5, #60]
	str	r3, [r5, #128]
	str	r3, [r5, #196]
	pop	{r4, r5, r6, lr}
	bx	lr
.L175:
	ldr	r2, [r5, #112]
	cmp	r2, #5
	beq	.L177
	ldr	r1, [r5, #116]
	cmp	r1, #3
	beq	.L177
	cmp	r3, #5
	beq	.L176
	ldr	r3, [r5, #48]
	cmp	r3, #3
	bne	.L176
	ldr	r3, [r5, #116]
	cmp	r3, #3
	bne	.L176
.L182:
	ldr	r3, [r5, #180]
	cmp	r3, #5
	beq	.L186
	ldr	r3, [r5, #184]
	cmp	r3, #3
	bne	.L176
.L186:
	add	r2, r6, #44
	ldmia	r2, {r2, r3}
	orr	r3, r2, r3
	cmp	r3, #0
	movne	r2, #1
	ldrne	r3, .L228+44
	strne	r2, [r3]
	b	.L176
.L177:
	ldr	r1, [r5, #180]
	cmp	r1, #5
	beq	.L179
	ldr	r1, [r5, #184]
	cmp	r1, #3
	beq	.L179
	cmp	r3, #5
	bne	.L181
.L184:
	cmp	r2, #5
	beq	.L182
.L227:
	ldr	r3, [r5, #116]
	cmp	r3, #3
	beq	.L182
	b	.L176
.L181:
	ldr	r3, [r5, #48]
	cmp	r3, #3
	bne	.L176
	cmp	r2, #5
	beq	.L182
	b	.L227
.L179:
	add	r0, r6, #44
	ldmia	r0, {r0, r1}
	orr	r1, r0, r1
	cmp	r1, #0
	moveq	r0, #1
	ldreq	r1, .L228+48
	streq	r0, [r1]
	cmp	r3, #5
	beq	.L184
	b	.L181
.L229:
	.align	2
.L228:
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
	.comm	hasWon,4,4
	.comm	hasLost,4,4
	.comm	pandas,204,4
	.comm	baskets,96,4
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
