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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L50
	ldr	r3, [r4, #36]
	cmp	r3, #6
	movne	r2, #0
	strne	r3, [r4, #40]
	strne	r2, [r4, #36]
	ldr	r1, .L50+4
	ldr	r2, [r4, #32]
	ldr	r3, .L50+8
	mla	r3, r2, r3, r1
	ldr	r1, .L50+12
	cmp	r3, r1
	addhi	r2, r2, #1
	strhi	r2, [r4, #32]
	bhi	.L33
	ldr	r0, [r4, #60]
	ldr	r3, .L50+16
	ldr	r1, [r4, #64]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #60]
.L33:
	ldr	r3, .L50+20
	ldrh	r3, [r3, #48]
	ldr	r1, .L50+24
	tst	r3, #64
	ldr	ip, [r1]
	ldr	r3, [r4, #8]
	bne	.L34
	cmp	r3, #0
	ble	.L34
	mov	r2, #2
	ldr	r0, [r4, #16]
	cmp	ip, #0
	sub	r3, r3, r0
	str	r3, [r4, #8]
	str	r2, [r4, #36]
	ble	.L34
	ldr	r2, [r4, #28]
	ldr	r0, [r4]
	add	r2, r2, r2, lsr #31
	add	r2, r0, r2, asr #1
	cmp	r2, #80
	subeq	ip, ip, #1
	streq	ip, [r1]
.L34:
	ldr	r2, .L50+20
	ldrh	r2, [r2, #48]
	tst	r2, #128
	bne	.L35
	ldr	r2, [r4, #28]
	add	r0, r2, r3
	cmp	r0, #255
	ble	.L47
.L35:
	ldr	r2, .L50+20
	ldrh	r2, [r2, #48]
	ldr	lr, .L50+28
	tst	r2, #32
	ldr	r0, [lr]
	ldr	r2, [r4, #12]
	bne	.L36
	ldr	r5, [r1, #4]
	cmp	r2, #0
	subgt	r2, r2, #1
	strgt	r2, [r4, #12]
	cmp	r5, #0
	subgt	r5, r5, #1
	strgt	r5, [r1, #4]
	ldr	r5, .L50+32
	ldr	r6, [r5]
	subgt	r0, r0, #1
	strgt	r0, [lr]
	cmp	r6, #31
	beq	.L48
.L36:
	ldr	r5, .L50+20
	ldrh	r5, [r5, #48]
	tst	r5, #16
	bne	.L39
	ldr	r5, [r4, #24]
	ldr	r6, .L50+36
	add	r5, r2, r5
	cmp	r5, r6
	ble	.L49
.L40:
	mov	r1, #1
	str	r1, [r4, #36]
.L41:
	ldr	r1, [r4, #32]
	add	r1, r1, #1
	str	r1, [r4, #32]
.L42:
	sub	r2, r2, r0
	sub	r3, r3, ip
	str	r2, [r4, #4]
	str	r3, [r4]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L39:
	ldr	r1, [r4, #36]
	cmp	r1, #6
	bne	.L41
	mov	lr, #0
	ldr	r1, [r4, #40]
	str	lr, [r4, #60]
	str	r1, [r4, #36]
	b	.L42
.L47:
	mov	r0, #2
	ldr	lr, [r4, #16]
	cmp	ip, #95
	add	r3, r3, lr
	str	r3, [r4, #8]
	str	r0, [r4, #36]
	bgt	.L35
	ldr	r0, [r4]
	add	r2, r2, r2, lsr #31
	add	r2, r0, r2, asr #1
	cmp	r2, #80
	addeq	ip, ip, #1
	streq	ip, [r1]
	b	.L35
.L49:
	ldr	r5, .L50+32
	ldr	r5, [r5]
	add	r2, r2, #1
	cmp	r5, #30
	str	r2, [r4, #12]
	bgt	.L40
	ldr	r5, [r1, #4]
	sub	r6, r6, #240
	cmp	r5, r6
	bgt	.L40
	ldr	r6, [r4, #4]
	cmp	r6, #119
	addgt	r5, r5, #1
	addgt	r0, r0, #1
	strgt	r5, [r1, #4]
	strgt	r0, [lr]
	b	.L40
.L48:
	ldr	r6, [r1, #4]
	cmp	r6, #0
	moveq	r7, #256
	moveq	r6, #30
	streq	r7, [r1, #4]
	streq	r6, [r5]
	b	.L36
.L51:
	.align	2
.L50:
	.word	panda
	.word	85899345
	.word	-1030792151
	.word	171798690
	.word	__aeabi_idivmod
	.word	67109120
	.word	.LANCHOR0
	.word	playerHOff
	.word	screenBlock
	.word	1022
	.size	updatePanda, .-updatePanda
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
	ldr	r4, .L64
	ldr	r5, .L64+4
	mov	fp, #5
	ldr	r6, .L64+8
	ldr	r8, .L64+12
	ldr	r10, .L64+16
	sub	sp, sp, #20
	add	r7, r4, #960
	sub	r9, r5, #8
	b	.L57
.L54:
	add	r4, r4, #32
	cmp	r4, r7
	add	r5, r5, #8
	beq	.L63
.L57:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	beq	.L54
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
	beq	.L54
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
	bne	.L57
.L63:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L65:
	.align	2
.L64:
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
	ldr	r5, .L88
	mov	r6, r5
	ldr	r4, .L88+4
	ldr	r9, .L88+8
	ldr	fp, .L88+12
	ldr	r8, .L88+16
	sub	sp, sp, #20
	add	r10, r4, #96
.L73:
	ldrh	r2, [r9]
	tst	r2, #1
	beq	.L67
	ldrh	r7, [fp]
	ands	r7, r7, #1
	beq	.L85
.L67:
	ldr	r3, [r5, #32]
	add	r3, r3, #1
	str	r3, [r5, #32]
.L70:
	tst	r2, #2
	beq	.L71
	ldrh	r2, [fp]
	ands	r7, r2, #2
	beq	.L86
.L71:
	ldr	r3, [r5, #32]
	add	r3, r3, #1
	str	r3, [r5, #32]
.L72:
	add	r4, r4, #32
	cmp	r10, r4
	add	r6, r6, #68
	bne	.L73
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L85:
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
	ldr	ip, .L88+20
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L69
	ldr	r3, [r8, #44]
	cmp	r3, #0
	bgt	.L87
.L69:
	ldrh	r2, [r9]
	b	.L67
.L86:
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
	ldr	ip, .L88+20
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L71
	ldr	r3, [r8, #48]
	cmp	r3, #0
	ble	.L71
	mov	r2, r7
	ldr	r3, .L88+24
	ldr	r1, .L88+28
	ldr	r0, .L88+32
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
	b	.L72
.L87:
	mov	r2, r7
	ldr	r3, .L88+24
	ldr	r1, .L88+28
	ldr	r0, .L88+32
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
	b	.L70
.L89:
	.align	2
.L88:
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
	@ link register save eliminated.
	ldr	r3, .L91
	ldm	r3, {r0, r1}
	subs	r0, r0, #0
	movne	r0, #1
	subs	r1, r1, #0
	movne	r1, #1
	ldr	ip, [r3, #60]
	ldr	r2, [r3, #36]
	ldr	r3, .L91+4
	add	r2, r2, ip, lsl #5
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	bx	lr
.L92:
	.align	2
.L91:
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
	ldr	r3, .L109
	ldr	r2, .L109+4
	add	r0, r3, #240
.L101:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	beq	.L107
	str	lr, [sp, #-4]!
.L102:
	ldr	lr, [r2]
	ldr	ip, [r2, #4]
	ldr	r1, [r2, #24]
	strh	lr, [r3, #8]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	beq	.L108
.L95:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	bne	.L102
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	bne	.L95
.L108:
	ldr	lr, [sp], #4
	bx	lr
.L107:
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	bne	.L101
	bx	lr
.L110:
	.align	2
.L109:
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
	ldr	r2, .L113
	ldr	r3, .L113+4
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
.L114:
	.align	2
.L113:
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
	ldr	r3, .L119
	ldr	r2, .L119+4
	str	lr, [sp, #-4]!
	add	lr, r3, #24
.L116:
	ldr	ip, [r2]
	ldr	r0, [r2, #4]
	ldr	r1, [r2, #24]
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	add	r3, r3, #8
	cmp	r3, lr
	add	r2, r2, #32
	bne	.L116
	ldr	lr, [sp], #4
	bx	lr
.L120:
	.align	2
.L119:
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
	ldr	r3, .L125
	ldr	r2, .L125+4
	push	{r4, lr}
	add	r4, r3, #204
.L122:
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
	bne	.L122
	pop	{r4, lr}
	bx	lr
.L126:
	.align	2
.L125:
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
	ldr	ip, .L137
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r2, [ip]
	ldr	r5, .L137+4
	lsl	r3, r2, #24
	ldr	r1, [r5, #4]
	orr	r3, r3, #1073741824
	lsr	r3, r3, #16
	cmp	r1, #256
	strh	r3, [r0, #10]	@ movhi
	ble	.L128
	add	r2, r2, #1
	lsl	r3, r2, #24
	orr	r3, r3, #1073741824
	lsr	r3, r3, #16
	sub	r1, r1, #256
	str	r2, [ip]
	str	r1, [r5, #4]
	strh	r3, [r0, #10]	@ movhi
.L128:
	ldr	r2, .L137+8
	ldr	r3, [r2]
	cmp	r3, #512
	subgt	r3, r3, #512
	strgt	r3, [r2]
	bl	updatePanda
	bl	checkFoodCollected
	ldr	r3, .L137+12
	ldr	r2, .L137+16
	add	r0, r3, #240
.L131:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	beq	.L130
	ldr	lr, [r2]
	ldr	ip, [r2, #4]
	ldr	r1, [r2, #24]
	strh	lr, [r3, #8]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	strh	r1, [r3, #12]	@ movhi
.L130:
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	bne	.L131
	ldr	r4, .L137+20
	mov	lr, #150
	mov	r3, r4
	mov	r7, #141
	mov	r6, #82
	mov	ip, #87
	mov	r1, #67108864
	ldr	r0, .L137+24
	ldr	r2, [r0, #48]
	add	r2, r2, #8
	strh	r2, [r4, #4]	@ movhi
	strh	r7, [r4]	@ movhi
	strh	r6, [r4, #2]	@ movhi
	strh	lr, [r3, #8]!	@ movhi
	strh	ip, [r3, #2]	@ movhi
	ldrh	r3, [r5, #4]
	strh	r3, [r1, #20]	@ movhi
	ldr	r3, [r0, #44]
	ldrh	r2, [r5]
	add	r3, r3, #8
	strh	r2, [r1, #22]	@ movhi
	strh	r3, [r4, #12]	@ movhi
	ldr	r2, .L137+28
	mov	lr, pc
	bx	r2
	sub	r1, r4, #320
	mov	r3, #512
	ldr	r4, .L137+32
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L138:
	.align	2
.L137:
	.word	screenBlock
	.word	.LANCHOR0
	.word	playerHOff
	.word	shadowOAM
	.word	food
	.word	shadowOAM+320
	.word	panda
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
	ldr	r3, .L140
	str	r2, [r3, #60]
	str	r2, [r3, #128]
	str	r2, [r3, #196]
	bx	lr
.L141:
	.align	2
.L140:
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
	ldr	r6, .L199
	bl	updatePanda
	ldm	r6, {r0, r2}
	subs	r0, r0, #0
	movne	r0, #1
	subs	r2, r2, #0
	movne	r2, #1
	ldr	r1, .L199+4
	ldr	ip, [r6, #60]
	ldr	r3, [r6, #36]
	strh	r2, [r1, #2]	@ movhi
	add	r3, r3, ip, lsl #5
	ldr	r2, .L199+8
	strh	r3, [r1, #4]	@ movhi
	strh	r0, [r1]	@ movhi
	add	r3, r1, #256
	add	r1, r1, #280
.L143:
	ldr	lr, [r2]
	ldr	ip, [r2, #4]
	ldr	r0, [r2, #24]
	strh	lr, [r3]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	add	r3, r3, #8
	cmp	r3, r1
	add	r2, r2, #32
	bne	.L143
	ldr	r4, .L199+12
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
	ldr	r5, .L199+16
	strh	r1, [r2, #2]	@ movhi
	strh	r3, [r4, #12]	@ movhi
	bl	checkFoodDelivered
	mov	r2, r5
	sub	r3, r4, #32
	add	r4, r5, #204
.L144:
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
	bne	.L144
	ldr	r2, .L199+20
	ldr	r3, [r5, #32]
	ldr	r1, .L199+24
	mla	r3, r1, r3, r2
	ldr	r2, .L199+28
	cmp	r2, r3, ror #3
	movcc	r3, #0
	strcc	r3, [r5, #60]
	strcc	r3, [r5, #128]
	strcc	r3, [r5, #196]
	ldr	r3, [r5, #44]
	cmp	r3, #5
	beq	.L146
	ldr	r2, [r5, #48]
	cmp	r2, #3
	beq	.L146
.L147:
	ldr	r3, .L199+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L199+36
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L199+4
	mov	lr, pc
	bx	r4
	mov	r3, #0
	str	r3, [r5, #60]
	str	r3, [r5, #128]
	str	r3, [r5, #196]
	pop	{r4, r5, r6, lr}
	bx	lr
.L146:
	ldr	r2, [r5, #112]
	cmp	r2, #5
	beq	.L148
	ldr	r1, [r5, #116]
	cmp	r1, #3
	beq	.L148
	cmp	r3, #5
	beq	.L147
	ldr	r3, [r5, #48]
	cmp	r3, #3
	bne	.L147
	ldr	r3, [r5, #116]
	cmp	r3, #3
	bne	.L147
.L153:
	ldr	r3, [r5, #180]
	cmp	r3, #5
	beq	.L157
	ldr	r3, [r5, #184]
	cmp	r3, #3
	bne	.L147
.L157:
	add	r2, r6, #44
	ldmia	r2, {r2, r3}
	orr	r3, r2, r3
	cmp	r3, #0
	movne	r2, #1
	ldrne	r3, .L199+40
	strne	r2, [r3]
	b	.L147
.L148:
	ldr	r1, [r5, #180]
	cmp	r1, #5
	beq	.L150
	ldr	r1, [r5, #184]
	cmp	r1, #3
	beq	.L150
	cmp	r3, #5
	bne	.L152
.L155:
	cmp	r2, #5
	beq	.L153
.L198:
	ldr	r3, [r5, #116]
	cmp	r3, #3
	beq	.L153
	b	.L147
.L152:
	ldr	r3, [r5, #48]
	cmp	r3, #3
	bne	.L147
	cmp	r2, #5
	beq	.L153
	b	.L198
.L150:
	add	r0, r6, #44
	ldmia	r0, {r0, r1}
	orr	r1, r0, r1
	cmp	r1, #0
	moveq	r0, #1
	ldreq	r1, .L199+44
	streq	r0, [r1]
	cmp	r3, #5
	beq	.L155
	b	.L152
.L200:
	.align	2
.L199:
	.word	panda
	.word	shadowOAM
	.word	baskets
	.word	shadowOAM+320
	.word	pandas
	.word	85899344
	.word	-1030792151
	.word	21474836
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
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	vOff, %object
	.size	vOff, 4
vOff:
	.word	9
	.type	hOff, %object
	.size	hOff, 4
hOff:
	.word	200
	.ident	"GCC: (devkitARM release 53) 9.1.0"
