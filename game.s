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
	str	r4, [r3, #4]
	str	lr, [r3]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	ip, [r3, #56]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	r2, [r3, #52]
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
	push	{r4, lr}
	mov	r4, #76
	mov	lr, #66
	mov	r2, #0
	mov	r0, #8
	mov	r1, #1
	mov	ip, #3
	ldr	r3, .L16
	str	r4, [r3, #4]
	str	lr, [r3]
	pop	{r4, lr}
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	ip, [r3, #56]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	r2, [r3, #52]
	b	initFood
.L17:
	.align	2
.L16:
	.word	panda
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
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r4, [r3]
	str	lr, [r3, #28]
	str	r1, [r3, #36]
	str	r1, [r3, #40]
	str	r1, [r3, #52]
	str	ip, [r3, #56]
	add	r3, r3, #60
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
	push	{r4, lr}
	ldr	r4, .L53
	ldr	r3, [r4, #28]
	cmp	r3, #6
	movne	r2, #0
	strne	r3, [r4, #32]
	strne	r2, [r4, #28]
	ldr	r1, .L53+4
	ldr	r2, [r4, #24]
	ldr	r3, .L53+8
	mla	r3, r2, r3, r1
	ldr	r1, .L53+12
	cmp	r3, r1
	addhi	r2, r2, #1
	strhi	r2, [r4, #24]
	bhi	.L33
	ldr	r0, [r4, #52]
	ldr	r3, .L53+16
	ldr	r1, [r4, #56]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #52]
.L33:
	ldr	r3, .L53+20
	ldrh	r3, [r3, #48]
	tst	r3, #64
	moveq	r2, #2
	streq	r2, [r4, #28]
	ldr	r2, .L53+20
	ldreq	r1, [r4, #8]
	ldr	r3, [r4]
	ldrh	r2, [r2, #48]
	subeq	r3, r3, r1
	streq	r3, [r4]
	tst	r2, #128
	moveq	r2, #2
	ldreq	r1, [r4, #8]
	addeq	r3, r3, r1
	ldr	r1, .L53+20
	streq	r2, [r4, #28]
	ldrh	r2, [r1, #48]
	streq	r3, [r4]
	tst	r2, #32
	ldr	r2, [r4, #4]
	bne	.L36
	mov	r0, #1
	ldrh	ip, [r1, #48]
	ldr	r1, [r4, #12]
	tst	ip, #16
	sub	r1, r2, r1
	movne	r2, r1
	str	r1, [r4, #4]
	str	r0, [r4, #28]
	bne	.L38
.L37:
	mov	r1, #1
	str	r2, [r4, #4]
	str	r1, [r4, #28]
.L38:
	ldr	r1, [r4, #24]
	add	r1, r1, #1
	str	r1, [r4, #24]
.L40:
	cmp	r2, #232
	cmpls	r3, #152
	movhi	r2, #1
	ldrhi	r3, .L53+24
	pop	{r4, lr}
	strhi	r2, [r3]
	bx	lr
.L36:
	ldrh	r1, [r1, #48]
	tst	r1, #16
	beq	.L52
	ldr	r1, [r4, #28]
	cmp	r1, #6
	bne	.L38
	mov	r0, #0
	ldr	r1, [r4, #32]
	str	r0, [r4, #52]
	str	r1, [r4, #28]
	b	.L40
.L52:
	ldr	r1, [r4, #12]
	add	r2, r2, r1
	b	.L37
.L54:
	.align	2
.L53:
	.word	panda
	.word	85899345
	.word	-1030792151
	.word	171798690
	.word	__aeabi_idivmod
	.word	67109120
	.word	hasLost
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
	ldr	r4, .L67
	ldr	r5, .L67+4
	mov	fp, #5
	ldr	r6, .L67+8
	ldr	r8, .L67+12
	ldr	r10, .L67+16
	sub	sp, sp, #20
	add	r7, r4, #960
	sub	r9, r5, #8
	b	.L60
.L57:
	add	r4, r4, #32
	cmp	r4, r7
	add	r5, r5, #8
	beq	.L66
.L60:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	beq	.L57
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r6, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r6]
	ldr	r0, [r6, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L57
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
	ldreq	r3, [r6, #36]
	ldrne	r3, [r6, #40]
	addeq	r3, r3, #1
	addne	r3, r3, #1
	add	r4, r4, #32
	streq	r3, [r6, #36]
	strne	r3, [r6, #40]
	cmp	r4, r7
	add	r5, r5, #8
	bne	.L60
.L66:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L68:
	.align	2
.L67:
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
	ldr	r5, .L87
	mov	r6, r5
	ldr	r4, .L87+4
	ldr	r8, .L87+8
	ldr	r10, .L87+12
	ldr	r7, .L87+16
	ldr	fp, .L87+20
	sub	sp, sp, #20
	add	r9, r4, #96
.L80:
	ldrh	r2, [r8]
	tst	r2, #1
	beq	.L70
	ldrh	r3, [r10]
	tst	r3, #1
	beq	.L71
.L70:
	ldr	r3, [r5, #24]
	add	r3, r3, #1
.L72:
	str	r3, [r5, #24]
.L74:
	tst	r2, #2
	beq	.L86
	ldrh	r3, [r10]
	tst	r3, #2
	beq	.L76
.L86:
	ldr	r3, [r5, #24]
	add	r3, r3, #1
.L77:
	str	r3, [r5, #24]
.L79:
	add	r4, r4, #32
	cmp	r4, r9
	add	r6, r6, #60
	bne	.L80
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L71:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r7, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	bne	.L73
	ldr	r3, [r5, #24]
	ldrh	r2, [r8]
	add	r3, r3, #1
	b	.L72
.L76:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r7, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	beq	.L86
	ldr	r2, [r7, #40]
	ldr	r3, [r5, #24]
	cmp	r2, #0
	add	r3, r3, #1
	ble	.L77
	mov	r0, #1
	ldr	r1, [r6, #40]
	sub	r2, r2, #1
	add	r1, r1, r0
	str	r1, [r6, #40]
	str	r0, [r6, #52]
	str	r2, [r7, #40]
	str	r3, [r5, #24]
	b	.L79
.L73:
	ldr	r1, [r7, #36]
	ldr	r3, [r5, #24]
	cmp	r1, #0
	ldrh	r2, [r8]
	add	r3, r3, #1
	ble	.L72
	mov	ip, #1
	ldr	r0, [r6, #36]
	sub	r1, r1, #1
	add	r0, r0, ip
	str	r0, [r6, #36]
	str	ip, [r6, #52]
	str	r1, [r7, #36]
	str	r3, [r5, #24]
	b	.L74
.L88:
	.align	2
.L87:
	.word	pandas
	.word	baskets
	.word	oldButtons
	.word	buttons
	.word	panda
	.word	collision
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
	ldr	r3, .L91
	str	lr, [sp, #-4]!
	ldr	r1, [r3, #28]
	ldr	lr, [r3, #52]
	ldr	ip, [r3]
	ldr	r0, [r3, #4]
	ldr	r2, .L91+4
	add	r3, r1, lr, lsl #5
	strh	r3, [r2, #4]	@ movhi
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #2]	@ movhi
	ldr	lr, [sp], #4
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
	ldr	r1, [r2, #40]
	ldr	r2, [r2, #36]
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
	add	r4, r3, #180
.L122:
	ldr	lr, [r3, #52]
	ldr	r1, [r3, #28]
	ldr	ip, [r3]
	ldr	r0, [r3, #4]
	add	r3, r3, #60
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
	push	{r4, r5, r6, lr}
	ldr	r5, .L135
	bl	updatePanda
	ldr	r0, [r5, #52]
	ldr	r3, [r5, #28]
	ldr	r4, .L135+4
	ldm	r5, {r1, r2}
	add	r3, r3, r0, lsl #5
	strh	r3, [r4, #4]	@ movhi
	strh	r2, [r4, #2]	@ movhi
	strh	r1, [r4]	@ movhi
	bl	checkFoodCollected
	mov	r3, r4
	ldr	r2, .L135+8
	add	r0, r4, #240
.L129:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	beq	.L128
	ldr	lr, [r2]
	ldr	ip, [r2, #4]
	ldr	r1, [r2, #24]
	strh	lr, [r3, #8]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	strh	r1, [r3, #12]	@ movhi
.L128:
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	bne	.L129
	ldr	r4, .L135+12
	mov	lr, #82
	mov	r2, r4
	mov	ip, #150
	mov	r6, #141
	mov	r0, #87
	ldr	r1, [r5, #40]
	ldr	r3, [r5, #36]
	add	r1, r1, #8
	strh	lr, [r4, #2]	@ movhi
	strh	r1, [r4, #4]	@ movhi
	strh	r6, [r4]	@ movhi
	strh	ip, [r2, #8]!	@ movhi
	add	r3, r3, #8
	strh	r0, [r2, #2]	@ movhi
	ldr	r1, .L135+16
	strh	r3, [r4, #12]	@ movhi
	mov	lr, pc
	bx	r1
	sub	r1, r4, #320
	mov	r3, #512
	ldr	r4, .L135+20
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L136:
	.align	2
.L135:
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
	ldr	r3, .L138
	str	r2, [r3, #52]
	str	r2, [r3, #112]
	str	r2, [r3, #172]
	bx	lr
.L139:
	.align	2
.L138:
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
	ldr	r6, .L197
	bl	updatePanda
	ldr	r1, .L197+4
	ldr	ip, [r6, #52]
	ldr	r3, [r6, #28]
	ldm	r6, {r0, r2}
	add	r3, r3, ip, lsl #5
	strh	r2, [r1, #2]	@ movhi
	ldr	r2, .L197+8
	strh	r3, [r1, #4]	@ movhi
	strh	r0, [r1]	@ movhi
	add	r3, r1, #256
	add	r1, r1, #280
.L141:
	ldr	lr, [r2]
	ldr	ip, [r2, #4]
	ldr	r0, [r2, #24]
	strh	lr, [r3]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	add	r3, r3, #8
	cmp	r3, r1
	add	r2, r2, #32
	bne	.L141
	ldr	r4, .L197+12
	mov	lr, #141
	mov	r2, r4
	mov	ip, #82
	mov	r0, #150
	mov	r1, #87
	ldr	r3, [r6, #40]
	add	r3, r3, #8
	strh	r3, [r4, #4]	@ movhi
	ldr	r3, [r6, #36]
	strh	lr, [r4]	@ movhi
	strh	ip, [r4, #2]	@ movhi
	strh	r0, [r2, #8]!	@ movhi
	add	r3, r3, #8
	ldr	r5, .L197+16
	strh	r1, [r2, #2]	@ movhi
	strh	r3, [r4, #12]	@ movhi
	bl	checkFoodDelivered
	mov	r2, r5
	sub	r3, r4, #32
	add	r4, r5, #180
.L142:
	ldr	lr, [r2, #52]
	ldr	r1, [r2, #28]
	ldr	ip, [r2]
	ldr	r0, [r2, #4]
	add	r2, r2, #60
	add	r1, r1, lr, lsl #5
	cmp	r4, r2
	strh	r1, [r3, #4]	@ movhi
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	add	r3, r3, #8
	bne	.L142
	ldr	r2, .L197+20
	ldr	r3, [r5, #24]
	ldr	r1, .L197+24
	mla	r3, r1, r3, r2
	ldr	r2, .L197+28
	cmp	r2, r3, ror #3
	movcc	r3, #0
	strcc	r3, [r5, #52]
	strcc	r3, [r5, #112]
	strcc	r3, [r5, #172]
	ldr	r3, [r5, #36]
	cmp	r3, #5
	beq	.L144
	ldr	r2, [r5, #40]
	cmp	r2, #3
	beq	.L144
.L145:
	ldr	r3, .L197+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L197+36
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L197+4
	mov	lr, pc
	bx	r4
	mov	r3, #0
	str	r3, [r5, #52]
	str	r3, [r5, #112]
	str	r3, [r5, #172]
	pop	{r4, r5, r6, lr}
	bx	lr
.L144:
	ldr	r2, [r5, #96]
	cmp	r2, #5
	beq	.L146
	ldr	r1, [r5, #100]
	cmp	r1, #3
	beq	.L146
	cmp	r3, #5
	beq	.L145
	ldr	r3, [r5, #40]
	cmp	r3, #3
	bne	.L145
	ldr	r3, [r5, #100]
	cmp	r3, #3
	bne	.L145
.L151:
	ldr	r3, [r5, #156]
	cmp	r3, #5
	beq	.L155
	ldr	r3, [r5, #160]
	cmp	r3, #3
	bne	.L145
.L155:
	add	r2, r6, #36
	ldmia	r2, {r2, r3}
	orr	r3, r2, r3
	cmp	r3, #0
	movne	r2, #1
	ldrne	r3, .L197+40
	strne	r2, [r3]
	b	.L145
.L146:
	ldr	r1, [r5, #156]
	cmp	r1, #5
	beq	.L148
	ldr	r1, [r5, #160]
	cmp	r1, #3
	beq	.L148
	cmp	r3, #5
	bne	.L150
.L153:
	cmp	r2, #5
	beq	.L151
.L196:
	ldr	r3, [r5, #100]
	cmp	r3, #3
	beq	.L151
	b	.L145
.L150:
	ldr	r3, [r5, #40]
	cmp	r3, #3
	bne	.L145
	cmp	r2, #5
	beq	.L151
	b	.L196
.L148:
	add	r0, r6, #36
	ldmia	r0, {r0, r1}
	orr	r1, r0, r1
	cmp	r1, #0
	moveq	r0, #1
	ldreq	r1, .L197+44
	streq	r0, [r1]
	cmp	r3, #5
	beq	.L153
	b	.L150
.L198:
	.align	2
.L197:
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
	.comm	hasWon,4,4
	.comm	hasLost,4,4
	.comm	pandas,180,4
	.comm	baskets,96,4
	.comm	food,960,4
	.comm	panda,60,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
