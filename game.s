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
	str	lr, [sp, #-4]!
	mov	r2, #60
	mov	r0, #8
	mov	lr, #50
	mov	ip, #7
	mov	r1, #0
	ldr	r3, .L28
.L25:
	str	r2, [r3, #4]
	add	r2, r2, #60
	cmp	r2, #240
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	lr, [r3]
	str	ip, [r3, #28]
	str	r1, [r3, #36]
	str	r1, [r3, #40]
	add	r3, r3, #60
	bne	.L25
	ldr	lr, [sp], #4
	bx	lr
.L29:
	.align	2
.L28:
	.word	pandas
	.size	initPandas, .-initPandas
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
	ldr	r3, .L34
	ldr	r2, .L34+4
	str	lr, [sp, #-4]!
	add	lr, r3, #24
.L31:
	ldr	ip, [r2]
	ldr	r0, [r2, #4]
	ldr	r1, [r2, #24]
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	add	r3, r3, #8
	cmp	r3, lr
	add	r2, r2, #32
	bne	.L31
	ldr	lr, [sp], #4
	bx	lr
.L35:
	.align	2
.L34:
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
	ldr	r3, .L40
	ldr	r2, .L40+4
	str	lr, [sp, #-4]!
	add	lr, r3, #180
.L37:
	ldr	ip, [r3]
	ldr	r0, [r3, #4]
	ldr	r1, [r3, #28]
	add	r3, r3, #60
	cmp	r3, lr
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	add	r2, r2, #8
	bne	.L37
	ldr	lr, [sp], #4
	bx	lr
.L41:
	.align	2
.L40:
	.word	pandas
	.word	shadowOAM+288
	.size	drawFriendlyPandas, .-drawFriendlyPandas
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
	ldr	r4, .L65
	ldr	r3, [r4, #28]
	cmp	r3, #6
	movne	r2, #0
	strne	r3, [r4, #32]
	strne	r2, [r4, #28]
	ldr	r1, .L65+4
	ldr	r2, [r4, #24]
	ldr	r3, .L65+8
	mla	r3, r2, r3, r1
	ldr	r1, .L65+12
	cmp	r3, r1
	addhi	r2, r2, #1
	strhi	r2, [r4, #24]
	bhi	.L45
	ldr	r0, [r4, #52]
	ldr	r3, .L65+16
	ldr	r1, [r4, #56]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #52]
.L45:
	ldr	r3, .L65+20
	ldrh	r3, [r3, #48]
	tst	r3, #64
	moveq	r2, #2
	streq	r2, [r4, #28]
	ldr	r2, .L65+20
	ldreq	r1, [r4, #8]
	ldr	r3, [r4]
	ldrh	r2, [r2, #48]
	subeq	r3, r3, r1
	streq	r3, [r4]
	tst	r2, #128
	moveq	r2, #2
	ldreq	r1, [r4, #8]
	addeq	r3, r3, r1
	ldr	r1, .L65+20
	streq	r2, [r4, #28]
	ldrh	r2, [r1, #48]
	streq	r3, [r4]
	tst	r2, #32
	ldr	r2, [r4, #4]
	bne	.L48
	mov	r0, #1
	ldrh	ip, [r1, #48]
	ldr	r1, [r4, #12]
	tst	ip, #16
	sub	r1, r2, r1
	movne	r2, r1
	str	r1, [r4, #4]
	str	r0, [r4, #28]
	bne	.L50
.L49:
	mov	r1, #1
	str	r2, [r4, #4]
	str	r1, [r4, #28]
.L50:
	ldr	r1, [r4, #24]
	add	r1, r1, #1
	str	r1, [r4, #24]
.L52:
	cmp	r2, #232
	cmpls	r3, #152
	movhi	r2, #1
	ldrhi	r3, .L65+24
	pop	{r4, lr}
	strhi	r2, [r3]
	bx	lr
.L48:
	ldrh	r1, [r1, #48]
	tst	r1, #16
	beq	.L64
	ldr	r1, [r4, #28]
	cmp	r1, #6
	bne	.L50
	mov	r0, #0
	ldr	r1, [r4, #32]
	str	r0, [r4, #52]
	str	r1, [r4, #28]
	b	.L52
.L64:
	ldr	r1, [r4, #12]
	add	r2, r2, r1
	b	.L49
.L66:
	.align	2
.L65:
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
	ldr	r4, .L81
	ldr	r5, .L81+4
	mov	fp, #5
	ldr	r6, .L81+8
	ldr	r8, .L81+12
	ldr	r10, .L81+16
	sub	sp, sp, #20
	add	r7, r4, #960
	sub	r9, r5, #8
	b	.L74
.L69:
	add	r4, r4, #32
	cmp	r4, r7
	add	r5, r5, #8
	beq	.L80
.L74:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	beq	.L69
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
	beq	.L69
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
	streq	r3, [r6, #36]
	strne	r3, [r6, #40]
	ldr	r3, [r6, #28]
	cmp	r3, #6
	moveq	r2, #0
	ldrne	r3, [r6, #24]
	ldreq	r3, [r6, #32]
	addne	r3, r3, #1
	add	r4, r4, #32
	streq	r2, [r6, #52]
	streq	r3, [r6, #28]
	strne	r3, [r6, #24]
	cmp	r4, r7
	add	r5, r5, #8
	bne	.L74
.L80:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L82:
	.align	2
.L81:
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L100
	ldr	r5, .L100+4
	ldr	r7, .L100+8
	ldr	r9, .L100+12
	ldr	r6, .L100+16
	ldr	r10, .L100+20
	sub	sp, sp, #16
	add	r8, r4, #96
.L89:
	ldrh	r3, [r7]
	tst	r3, #1
	beq	.L84
	ldrh	r2, [r9]
	tst	r2, #1
	beq	.L98
.L84:
	tst	r3, #2
	beq	.L87
	ldrh	r3, [r9]
	tst	r3, #2
	beq	.L99
.L87:
	add	r4, r4, #32
	cmp	r4, r8
	add	r5, r5, #60
	bne	.L89
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L98:
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
	bx	r10
	cmp	r0, #0
	bne	.L85
	ldrh	r3, [r7]
	b	.L84
.L99:
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
	bx	r10
	cmp	r0, #0
	beq	.L87
	ldr	r3, [r6, #40]
	cmp	r3, #0
	ldrgt	r2, [r5, #40]
	subgt	r3, r3, #1
	addgt	r2, r2, #1
	strgt	r3, [r6, #40]
	strgt	r2, [r5, #40]
	b	.L87
.L85:
	ldr	r2, [r6, #36]
	cmp	r2, #0
	ldrgt	r1, [r5, #36]
	subgt	r2, r2, #1
	addgt	r1, r1, #1
	ldrh	r3, [r7]
	strgt	r2, [r6, #36]
	strgt	r1, [r5, #36]
	b	.L84
.L101:
	.align	2
.L100:
	.word	baskets
	.word	pandas
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
	ldr	r3, .L104
	str	lr, [sp, #-4]!
	ldr	r1, [r3, #28]
	ldr	lr, [r3, #52]
	ldr	ip, [r3]
	ldr	r0, [r3, #4]
	ldr	r2, .L104+4
	add	r3, r1, lr, lsl #5
	strh	r3, [r2, #4]	@ movhi
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L105:
	.align	2
.L104:
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
	ldr	r3, .L122
	ldr	r2, .L122+4
	add	r0, r3, #240
.L114:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	beq	.L120
	str	lr, [sp, #-4]!
.L115:
	ldr	lr, [r2]
	ldr	ip, [r2, #4]
	ldr	r1, [r2, #24]
	strh	lr, [r3, #8]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	beq	.L121
.L108:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	bne	.L115
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	bne	.L108
.L121:
	ldr	lr, [sp], #4
	bx	lr
.L120:
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	bne	.L114
	bx	lr
.L123:
	.align	2
.L122:
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
	ldr	r2, .L126
	ldr	r3, .L126+4
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
.L127:
	.align	2
.L126:
	.word	panda
	.word	shadowOAM
	.size	drawScore, .-drawScore
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
	ldr	r5, .L136
	bl	updatePanda
	ldr	r0, [r5, #52]
	ldr	r3, [r5, #28]
	ldr	r4, .L136+4
	ldm	r5, {r1, r2}
	add	r3, r3, r0, lsl #5
	strh	r3, [r4, #4]	@ movhi
	strh	r2, [r4, #2]	@ movhi
	strh	r1, [r4]	@ movhi
	bl	checkFoodCollected
	mov	r3, r4
	ldr	r2, .L136+8
	add	r0, r4, #240
.L130:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	beq	.L129
	ldr	lr, [r2]
	ldr	ip, [r2, #4]
	ldr	r1, [r2, #24]
	strh	lr, [r3, #8]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	strh	r1, [r3, #12]	@ movhi
.L129:
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	bne	.L130
	ldr	r4, .L136+12
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
	ldr	r1, .L136+16
	strh	r3, [r4, #12]	@ movhi
	mov	lr, pc
	bx	r1
	sub	r1, r4, #320
	mov	r3, #512
	ldr	r4, .L136+20
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L137:
	.align	2
.L136:
	.word	panda
	.word	shadowOAM
	.word	food
	.word	shadowOAM+320
	.word	waitForVBlank
	.word	DMANow
	.size	updateGame, .-updateGame
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
	bl	checkFoodDelivered
	bl	updatePanda
	ldr	r0, .L194
	ldr	r1, .L194+4
	ldr	lr, [r0, #52]
	ldr	r3, [r0, #28]
	ldr	r2, [r0, #4]
	ldr	ip, [r0]
	add	r3, r3, lr, lsl #5
	strh	r2, [r1, #2]	@ movhi
	ldr	r2, .L194+8
	strh	r3, [r1, #4]	@ movhi
	strh	ip, [r1]	@ movhi
	add	r3, r1, #256
	add	r1, r1, #280
.L139:
	ldm	r2, {r4, lr}
	ldr	ip, [r2, #24]
	strh	r4, [r3]	@ movhi
	strh	lr, [r3, #2]	@ movhi
	strh	ip, [r3, #4]	@ movhi
	add	r3, r3, #8
	cmp	r3, r1
	add	r2, r2, #32
	bne	.L139
	ldr	r3, .L194+12
	mov	r4, #150
	mov	ip, r3
	mov	r8, #141
	mov	r7, #82
	ldr	r1, .L194+16
	mov	lr, #87
	mov	r2, r1
	ldr	r5, [r0, #40]
	ldr	r6, [r0, #36]
	add	r0, r5, #8
	strh	r0, [r3, #4]	@ movhi
	strh	r8, [r3]	@ movhi
	strh	r7, [r3, #2]	@ movhi
	strh	r4, [ip, #8]!	@ movhi
	add	r0, r6, #8
	strh	lr, [ip, #2]	@ movhi
	sub	r3, r3, #32
	strh	r0, [r3, #44]	@ movhi
	add	r4, r1, #180
.L140:
	ldr	lr, [r2]
	ldr	ip, [r2, #4]
	ldr	r0, [r2, #28]
	add	r2, r2, #60
	cmp	r2, r4
	strh	lr, [r3]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	add	r3, r3, #8
	bne	.L140
	ldr	r3, [r1, #36]
	cmp	r3, #5
	beq	.L141
	ldr	r2, [r1, #40]
	cmp	r2, #3
	beq	.L141
.L142:
	ldr	r3, .L194+20
	mov	lr, pc
	bx	r3
	ldr	r4, .L194+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L194+4
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L141:
	ldr	r2, [r1, #96]
	cmp	r2, #5
	beq	.L143
	ldr	r0, [r1, #100]
	cmp	r0, #3
	beq	.L143
	cmp	r3, #5
	beq	.L142
	ldr	r3, [r1, #40]
	cmp	r3, #3
	bne	.L142
	ldr	r3, [r1, #100]
	cmp	r3, #3
	bne	.L142
.L148:
	ldr	r3, [r1, #156]
	cmp	r3, #5
	beq	.L152
	ldr	r3, [r1, #160]
	cmp	r3, #3
	bne	.L142
.L152:
	orrs	r3, r5, r6
	movne	r2, #1
	ldrne	r3, .L194+28
	strne	r2, [r3]
	b	.L142
.L143:
	ldr	r0, [r1, #156]
	cmp	r0, #5
	beq	.L145
	ldr	r0, [r1, #160]
	cmp	r0, #3
	beq	.L145
	cmp	r3, #5
	bne	.L147
.L150:
	cmp	r2, #5
	beq	.L148
.L193:
	ldr	r3, [r1, #100]
	cmp	r3, #3
	beq	.L148
	b	.L142
.L147:
	ldr	r3, [r1, #40]
	cmp	r3, #3
	bne	.L142
	cmp	r2, #5
	beq	.L148
	b	.L193
.L145:
	orrs	r0, r5, r6
	moveq	ip, #1
	ldreq	r0, .L194+32
	streq	ip, [r0]
	cmp	r3, #5
	beq	.L150
	b	.L147
.L195:
	.align	2
.L194:
	.word	panda
	.word	shadowOAM
	.word	baskets
	.word	shadowOAM+320
	.word	pandas
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
