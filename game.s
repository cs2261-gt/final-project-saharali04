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
	mov	r1, #8
	mov	lr, #76
	mov	ip, #66
	mov	r0, #2
	ldr	r3, .L4
	stm	r3, {ip, lr}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r0, [r3, #56]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	r2, [r3, #52]
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
	mov	r1, #8
	mov	r0, #2
	ldr	r3, .L16
	stm	r3, {ip, lr}
	ldr	lr, [sp], #4
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r0, [r3, #56]
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
	mov	r0, #0
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
	@ link register save eliminated.
	mov	r2, #60
	mov	r0, #8
	mov	ip, #50
	mov	r1, #0
	ldr	r3, .L28
.L25:
	str	r2, [r3, #4]
	add	r2, r2, #60
	cmp	r2, #240
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	ip, [r3]
	str	r1, [r3, #28]
	str	r1, [r3, #36]
	str	r1, [r3, #40]
	add	r3, r3, #60
	bne	.L25
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
	ldr	r4, .L79
	ldr	r3, [r4, #28]
	cmp	r3, #6
	movne	r2, #0
	strne	r3, [r4, #32]
	strne	r2, [r4, #28]
	ldr	r1, .L79+4
	ldr	r2, [r4, #24]
	ldr	r3, .L79+8
	mla	r3, r2, r3, r1
	ldr	r1, .L79+12
	cmp	r3, r1
	addhi	r2, r2, #1
	strhi	r2, [r4, #24]
	bhi	.L45
	ldr	r0, [r4, #52]
	ldr	r3, .L79+16
	ldr	r1, [r4, #56]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #52]
.L45:
	ldr	r3, .L79+20
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L46
	ldr	r2, .L79+24
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L77
.L46:
	tst	r3, #128
	beq	.L47
	ldr	r2, .L79+24
	ldrh	r2, [r2]
	tst	r2, #128
	beq	.L78
.L47:
	tst	r3, #32
	ldr	r2, [r4, #4]
	and	r3, r3, #16
	beq	.L48
	ldr	r1, .L79+24
	ldrh	r1, [r1]
	tst	r1, #32
	bne	.L48
	mov	r0, #1
	ldr	ip, [r4, #12]
	cmp	r3, #0
	sub	r2, r2, ip
	str	r2, [r4, #4]
	str	r0, [r4, #28]
	bne	.L49
.L50:
	ldr	r3, [r4, #24]
	add	r3, r3, #1
	str	r3, [r4, #24]
.L52:
	ldr	r3, [r4]
	cmp	r2, #232
	cmpls	r3, #152
	movhi	r2, #1
	ldrhi	r3, .L79+28
	strhi	r2, [r3]
.L42:
	pop	{r4, lr}
	bx	lr
.L48:
	cmp	r3, #0
	beq	.L51
	ldr	r3, .L79+24
	ldrh	r3, [r3]
	tst	r3, #16
	bne	.L51
.L54:
	mov	r3, #1
	ldr	r1, [r4, #12]
	add	r2, r2, r1
	str	r2, [r4, #4]
	str	r3, [r4, #28]
	b	.L50
.L51:
	ldr	r3, [r4, #28]
	cmp	r3, #6
	bne	.L50
	mov	r1, #0
	ldr	r3, [r4, #32]
	str	r1, [r4, #52]
	str	r3, [r4, #28]
	b	.L52
.L78:
	mov	r1, #2
	ldr	r2, [r4]
	ldr	r0, [r4, #8]
	add	r2, r2, r0
	str	r2, [r4]
	str	r1, [r4, #28]
	b	.L47
.L77:
	mov	r1, #2
	ldr	r2, [r4]
	ldr	r0, [r4, #8]
	sub	r2, r2, r0
	str	r2, [r4]
	str	r1, [r4, #28]
	b	.L46
.L49:
	tst	r1, #16
	beq	.L54
	b	.L50
.L80:
	.align	2
.L79:
	.word	panda
	.word	85899345
	.word	-1030792151
	.word	171798690
	.word	__aeabi_idivmod
	.word	oldButtons
	.word	buttons
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
	ldr	r4, .L93
	ldr	r5, .L93+4
	mov	fp, #5
	ldr	r6, .L93+8
	ldr	r8, .L93+12
	ldr	r10, .L93+16
	sub	sp, sp, #20
	add	r7, r4, #960
	sub	r9, r5, #8
	b	.L86
.L83:
	add	r4, r4, #32
	cmp	r4, r7
	add	r5, r5, #8
	beq	.L92
.L86:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	beq	.L83
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
	beq	.L83
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
	bne	.L86
.L92:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L94:
	.align	2
.L93:
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
	ldr	r4, .L112
	ldr	r5, .L112+4
	ldr	r7, .L112+8
	ldr	r9, .L112+12
	ldr	r6, .L112+16
	ldr	r10, .L112+20
	sub	sp, sp, #16
	add	r8, r4, #96
.L101:
	ldrh	r3, [r7]
	tst	r3, #1
	beq	.L96
	ldrh	r2, [r9]
	tst	r2, #1
	beq	.L110
.L96:
	tst	r3, #2
	beq	.L99
	ldrh	r3, [r9]
	tst	r3, #2
	beq	.L111
.L99:
	add	r4, r4, #32
	cmp	r4, r8
	add	r5, r5, #60
	bne	.L101
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L110:
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
	bne	.L97
	ldrh	r3, [r7]
	b	.L96
.L111:
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
	beq	.L99
	ldr	r2, [r5, #40]
	ldr	r3, [r6, #40]
	add	r2, r2, #1
	sub	r3, r3, #1
	str	r2, [r5, #40]
	str	r3, [r6, #40]
	b	.L99
.L97:
	ldr	r2, [r6, #36]
	cmp	r2, #0
	ldrgt	r1, [r5, #36]
	subgt	r2, r2, #1
	addgt	r1, r1, #1
	ldrh	r3, [r7]
	strgt	r2, [r6, #36]
	strgt	r1, [r5, #36]
	b	.L96
.L113:
	.align	2
.L112:
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
	ldr	r3, .L116
	str	lr, [sp, #-4]!
	ldr	r1, [r3, #28]
	ldr	lr, [r3, #52]
	ldr	ip, [r3]
	ldr	r0, [r3, #4]
	ldr	r2, .L116+4
	add	r3, r1, lr, lsl #5
	strh	r3, [r2, #4]	@ movhi
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L117:
	.align	2
.L116:
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
	ldr	r3, .L134
	ldr	r2, .L134+4
	add	r0, r3, #240
.L126:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	beq	.L132
	str	lr, [sp, #-4]!
.L127:
	ldr	lr, [r2]
	ldr	ip, [r2, #4]
	ldr	r1, [r2, #24]
	strh	lr, [r3, #8]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	beq	.L133
.L120:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	bne	.L127
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	bne	.L120
.L133:
	ldr	lr, [sp], #4
	bx	lr
.L132:
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	bne	.L126
	bx	lr
.L135:
	.align	2
.L134:
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
	ldr	r3, .L144
	ldr	r2, [r3, #28]
	ldr	ip, [r3, #52]
	ldm	r3, {r0, r1}
	ldr	r4, .L144+4
	add	r3, r2, ip, lsl #5
	strh	r3, [r4, #4]	@ movhi
	strh	r0, [r4]	@ movhi
	strh	r1, [r4, #2]	@ movhi
	bl	checkFoodCollected
	mov	r3, r4
	ldr	r2, .L144+8
	add	r0, r4, #240
.L138:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	beq	.L137
	ldr	lr, [r2]
	ldr	ip, [r2, #4]
	ldr	r1, [r2, #24]
	strh	lr, [r3, #8]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	strh	r1, [r3, #12]	@ movhi
.L137:
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	bne	.L138
	ldr	r3, .L144+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L144+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L144+4
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L145:
	.align	2
.L144:
	.word	panda
	.word	shadowOAM
	.word	food
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L203
	bl	checkFoodDelivered
	bl	updatePanda
	ldr	r1, .L203+4
	ldr	ip, [r4, #52]
	ldr	r3, [r4, #28]
	ldm	r4, {r0, r2}
	add	r3, r3, ip, lsl #5
	strh	r2, [r1, #2]	@ movhi
	ldr	r2, .L203+8
	strh	r3, [r1, #4]	@ movhi
	strh	r0, [r1]	@ movhi
	add	r3, r1, #256
	add	r1, r1, #280
.L147:
	ldr	lr, [r2]
	ldr	ip, [r2, #4]
	ldr	r0, [r2, #24]
	strh	lr, [r3]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	add	r3, r3, #8
	cmp	r3, r1
	add	r2, r2, #32
	bne	.L147
	ldr	r1, .L203+12
	mov	r3, r1
	ldr	r2, .L203+16
	add	r5, r1, #180
.L148:
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	ldr	r0, [r3, #28]
	add	r3, r3, #60
	cmp	r3, r5
	strh	lr, [r2]	@ movhi
	strh	ip, [r2, #2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	add	r2, r2, #8
	bne	.L148
	ldr	r3, [r1, #36]
	cmp	r3, #5
	beq	.L149
	ldr	r2, [r1, #40]
	cmp	r2, #3
	beq	.L149
.L150:
	ldr	r3, .L203+20
	mov	lr, pc
	bx	r3
	ldr	r4, .L203+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L203+4
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L149:
	ldr	r2, [r1, #96]
	cmp	r2, #5
	beq	.L151
	ldr	r0, [r1, #100]
	cmp	r0, #3
	beq	.L151
	cmp	r3, #5
	beq	.L150
	ldr	r3, [r1, #40]
	cmp	r3, #3
	bne	.L150
	ldr	r3, [r1, #100]
	cmp	r3, #3
	bne	.L150
.L156:
	ldr	r3, [r1, #156]
	cmp	r3, #5
	beq	.L160
	ldr	r3, [r1, #160]
	cmp	r3, #3
	bne	.L150
.L160:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L162
	ldr	r3, [r4, #40]
	cmp	r3, #0
	bne	.L150
.L162:
	mov	r2, #1
	ldr	r3, .L203+28
	str	r2, [r3]
	b	.L150
.L151:
	ldr	r0, [r1, #156]
	cmp	r0, #5
	beq	.L153
	ldr	r0, [r1, #160]
	cmp	r0, #3
	beq	.L153
	cmp	r3, #5
	bne	.L155
.L158:
	cmp	r2, #5
	beq	.L156
.L202:
	ldr	r3, [r1, #100]
	cmp	r3, #3
	beq	.L156
	b	.L150
.L155:
	ldr	r3, [r1, #40]
	cmp	r3, #3
	bne	.L150
	cmp	r2, #5
	beq	.L156
	b	.L202
.L153:
	add	ip, r4, #36
	ldmia	ip, {r0, ip}
	orr	r0, r0, ip
	cmp	r0, #0
	moveq	ip, #1
	ldreq	r0, .L203+32
	streq	ip, [r0]
	cmp	r3, #5
	beq	.L158
	b	.L155
.L204:
	.align	2
.L203:
	.word	panda
	.word	shadowOAM
	.word	baskets
	.word	pandas
	.word	shadowOAM+288
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
