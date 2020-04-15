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
	mov	r2, #25
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
	rsb	ip, r3, r3, lsl #4
	lsl	ip, ip, #1
	str	r4, [r2, #4]
	str	ip, [r2]
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
	push	{r4, lr}
	mov	r4, #0
	mov	lr, #3
	mov	r1, #8
	mov	r2, #1
	mov	ip, #28
	ldr	r0, .L46
	ldr	r3, .L46+4
	str	r4, [r0]
	str	r4, [r3]
	str	r4, [r0, #4]
	ldr	r3, .L46+8
	ldr	r0, .L46+12
	str	r4, [r3, #32]
	str	r4, [r3, #36]
	str	r4, [r3, #44]
	str	r4, [r3, #48]
	str	r4, [r3, #60]
	str	lr, [r3, #64]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	ip, [r0]
	bl	initFood
	bl	initEnemies
	ldr	r3, .L46+16
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L47:
	.align	2
.L46:
	.word	.LANCHOR0
	.word	playerHOff
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
	ldr	r4, .L94
	ldr	r3, [r4, #36]
	cmp	r3, #6
	movne	r2, #0
	strne	r3, [r4, #40]
	strne	r2, [r4, #36]
	ldr	r1, .L94+4
	ldr	r2, [r4, #32]
	ldr	r3, .L94+8
	mla	r3, r2, r3, r1
	ldr	r1, .L94+12
	cmp	r3, r1
	addhi	r2, r2, #1
	strhi	r2, [r4, #32]
	bhi	.L61
	ldr	r0, [r4, #60]
	ldr	r3, .L94+16
	ldr	r1, [r4, #64]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #60]
.L61:
	ldr	r3, .L94+20
	ldrh	r3, [r3, #48]
	ldr	r5, .L94+24
	tst	r3, #64
	add	r3, r4, #8
	ldr	ip, [r5]
	ldm	r3, {r3, lr}
	bne	.L62
	ldr	r1, [r4, #16]
	sub	r1, r3, r1
	ldr	r6, .L94+28
	add	r2, lr, r1, lsl #10
	lsl	r2, r2, #1
	ldrh	r2, [r6, r2]
	cmp	r2, #0
	lsl	r2, r1, #10
	bne	.L92
.L62:
	ldr	r2, .L94+20
	ldrh	r2, [r2, #48]
	tst	r2, #128
	bne	.L63
	ldr	r1, [r4, #28]
	add	r2, r1, r3
	cmp	r2, #235
	bgt	.L63
	add	r0, lr, r2, lsl #10
	ldr	r7, .L94+28
	lsl	r0, r0, #1
	ldrh	r0, [r7, r0]
	cmp	r0, #0
	lsl	r2, r2, #10
	beq	.L63
	ldr	r0, [r4, #24]
	ldr	r6, [r4, #20]
	add	r0, lr, r0
	sub	r6, r0, r6
	add	r2, r6, r2
	lsl	r2, r2, #1
	ldrh	r2, [r7, r2]
	cmp	r2, #0
	beq	.L63
	mov	r2, #2
	ldr	r6, [r4, #16]
	cmp	ip, #95
	add	r3, r3, r6
	str	r3, [r4, #8]
	str	r2, [r4, #36]
	bgt	.L64
	ldr	r2, [r4]
	add	r1, r1, r1, lsr #31
	add	r1, r2, r1, asr #1
	cmp	r1, #80
	addeq	ip, ip, #1
	streq	ip, [r5]
.L64:
	ldr	r2, .L94+20
	ldrh	r2, [r2, #48]
	ldr	r1, .L94+32
	tst	r2, #16
	ldr	r2, [r1]
	beq	.L69
	b	.L67
.L63:
	ldr	r2, .L94+20
	ldrh	r2, [r2, #48]
	ldr	r1, .L94+32
	tst	r2, #16
	ldr	r2, [r1]
	bne	.L65
	ldr	r0, [r4, #24]
	add	r0, lr, r0
.L69:
	ldr	r6, .L94+36
	cmp	r0, r6
	bgt	.L66
	ldr	r7, .L94+28
	add	r6, r0, r3, lsl #10
	lsl	r6, r6, #1
	ldrh	r8, [r7, r6]
	ldr	r6, .L94+40
	cmp	r8, r6
	beq	.L93
.L66:
	mov	r1, #1
	str	r1, [r4, #36]
.L67:
	ldr	r1, [r4, #32]
	add	r1, r1, #1
	str	r1, [r4, #32]
	b	.L68
.L65:
	ldr	r1, [r4, #36]
	cmp	r1, #6
	bne	.L67
	mov	r0, #0
	ldr	r1, [r4, #40]
	str	r0, [r4, #60]
	str	r1, [r4, #36]
.L68:
	sub	r2, lr, r2
	sub	r3, r3, ip
	str	r2, [r4, #4]
	str	r3, [r4]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L92:
	ldr	r0, [r4, #24]
	ldr	r7, [r4, #20]
	add	r0, lr, r0
	sub	r0, r0, r7
	add	r0, r0, r2
	lsl	r0, r0, #1
	ldrh	r2, [r6, r0]
	cmp	r2, #0
	cmpne	r3, #0
	ble	.L62
	mov	r3, #2
	cmp	ip, #0
	str	r1, [r4, #8]
	str	r3, [r4, #36]
	ble	.L71
	ldr	r3, [r4, #28]
	ldr	r2, [r4]
	add	r3, r3, r3, lsr #31
	add	r3, r2, r3, asr #1
	cmp	r3, #80
	subeq	ip, ip, #1
	moveq	r3, r1
	streq	ip, [r5]
	beq	.L62
.L71:
	mov	r3, r1
	b	.L62
.L93:
	ldr	r6, [r4, #28]
	ldr	r9, [r4, #16]
	add	r6, r3, r6
	sub	r6, r6, r9
	add	r0, r0, r6, lsl #10
	lsl	r0, r0, #1
	ldrh	r0, [r7, r0]
	cmp	r0, r8
	bne	.L66
	ldr	r0, .L94+44
	ldr	r0, [r0]
	add	lr, lr, #1
	cmp	r0, #31
	str	lr, [r4, #12]
	bgt	.L66
	ldr	r0, [r5, #4]
	ldr	r6, .L94+48
	cmp	r0, r6
	bgt	.L66
	ldr	r6, [r4, #4]
	cmp	r6, #120
	addgt	r0, r0, #1
	addgt	r2, r2, #1
	strgt	r0, [r5, #4]
	strgt	r2, [r1]
	b	.L66
.L95:
	.align	2
.L94:
	.word	panda
	.word	85899345
	.word	-1030792151
	.word	171798690
	.word	__aeabi_idivmod
	.word	67109120
	.word	.LANCHOR0
	.word	collisionmap2Bitmap
	.word	playerHOff
	.word	973
	.word	32767
	.word	screenBlock
	.word	782
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
	ldr	r4, .L139
	ldr	r3, [r4, #36]
	cmp	r3, #6
	movne	r2, #0
	strne	r3, [r4, #40]
	strne	r2, [r4, #36]
	ldr	r1, .L139+4
	ldr	r2, [r4, #32]
	ldr	r3, .L139+8
	mla	r3, r2, r3, r1
	ldr	r1, .L139+12
	cmp	r3, r1
	addhi	r2, r2, #1
	strhi	r2, [r4, #32]
	bhi	.L99
	ldr	r0, [r4, #60]
	ldr	r3, .L139+16
	ldr	r1, [r4, #64]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #60]
.L99:
	ldr	r3, .L139+20
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	bne	.L100
	cmp	r3, #0
	ble	.L100
	ldr	r1, [r4, #16]
	sub	r1, r3, r1
	ldr	r0, .L139+24
	add	ip, r2, r1, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [r0, ip]
	cmp	ip, #0
	lsl	lr, r1, #8
	bne	.L135
.L100:
	ldr	r1, .L139+20
	ldrh	r1, [r1, #48]
	tst	r1, #128
	bne	.L101
	ldr	r1, [r4]
	cmp	r1, #131
	ble	.L136
.L101:
	ldr	r1, .L139+20
	ldrh	r0, [r1, #48]
	tst	r0, #32
	bne	.L102
	cmp	r2, #0
	ble	.L102
	ldr	ip, [r4, #20]
	sub	ip, r2, ip
	ldr	r0, .L139+24
	add	lr, ip, r3, lsl #8
	lsl	lr, lr, #1
	ldrh	lr, [r0, lr]
	cmp	lr, #0
	lsl	lr, r3, #8
	beq	.L102
	ldr	r5, [r4, #28]
	ldr	r6, [r4, #16]
	add	r5, r3, r5
	sub	r5, r5, r6
	add	ip, ip, r5, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [r0, ip]
	cmp	ip, #0
	beq	.L102
	mov	ip, #1
	ldrh	r1, [r1, #48]
	sub	r2, r2, #1
	tst	r1, #16
	str	r2, [r4, #12]
	str	ip, [r4, #36]
	bne	.L104
	ldr	r1, [r4, #24]
	add	r1, r2, r1
	cmp	r1, #255
	bgt	.L104
	b	.L108
.L102:
	ldr	r1, .L139+20
	ldrh	r1, [r1, #48]
	tst	r1, #16
	beq	.L137
.L105:
	ldr	r1, [r4, #36]
	cmp	r1, #6
	beq	.L138
.L104:
	ldr	r1, [r4, #32]
	add	r1, r1, #1
	str	r1, [r4, #32]
.L106:
	ldr	r1, .L139+28
	ldrh	r1, [r1]
	tst	r1, #1
	beq	.L107
	ldr	r1, .L139+32
	ldrh	r1, [r1]
	tst	r1, #1
	moveq	r0, #1
	ldreq	r1, .L139+36
	streq	r0, [r1]
.L107:
	str	r2, [r4, #4]
	str	r3, [r4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L137:
	ldr	r1, [r4, #24]
	add	r1, r2, r1
	cmp	r1, #255
	bgt	.L105
	ldr	r0, .L139+24
	lsl	lr, r3, #8
.L108:
	add	lr, lr, r1
	lsl	lr, lr, #1
	ldrh	ip, [r0, lr]
	ldr	lr, .L139+40
	cmp	ip, lr
	bne	.L105
	ldr	lr, [r4, #28]
	ldr	r5, [r4, #16]
	add	lr, r3, lr
	sub	lr, lr, r5
	add	r1, r1, lr, lsl #8
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, ip
	bne	.L105
	mov	r1, #1
	add	r2, r2, r1
	str	r2, [r4, #12]
	str	r1, [r4, #36]
	b	.L104
.L136:
	ldr	r1, [r4, #28]
	add	r1, r3, r1
	cmp	r1, #255
	bgt	.L101
	add	ip, r2, r1, lsl #8
	ldr	r0, .L139+24
	lsl	ip, ip, #1
	ldrh	ip, [r0, ip]
	cmp	ip, #0
	lsl	r1, r1, #8
	beq	.L101
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
	b	.L101
.L138:
	mov	r0, #0
	ldr	r1, [r4, #40]
	str	r0, [r4, #60]
	str	r1, [r4, #36]
	b	.L106
.L135:
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
	b	.L100
.L140:
	.align	2
.L139:
	.word	panda
	.word	85899345
	.word	-1030792151
	.word	171798690
	.word	__aeabi_idivmod
	.word	67109120
	.word	collisionmapBitmap
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
	ldr	r4, .L153
	ldr	r5, .L153+4
	add	r7, r4, #1472
	mov	fp, #5
	ldr	r6, .L153+8
	ldr	r8, .L153+12
	ldr	r10, .L153+16
	sub	sp, sp, #20
	add	r7, r7, #8
	sub	r9, r5, #8
	b	.L146
.L143:
	add	r4, r4, #40
	cmp	r4, r7
	add	r5, r5, #8
	beq	.L152
.L146:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L143
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
	beq	.L143
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
	bne	.L146
.L152:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L154:
	.align	2
.L153:
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
	ldr	r4, .L166
	add	r6, r4, #1472
	ldr	r5, .L166+4
	ldr	r7, .L166+8
	ldr	r8, .L166+12
	sub	sp, sp, #16
	add	r6, r6, #8
	b	.L159
.L157:
	add	r4, r4, #40
	cmp	r4, r6
	beq	.L165
.L159:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L157
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
	bne	.L159
.L165:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L167:
	.align	2
.L166:
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
	ldr	r5, .L190
	mov	r6, r5
	ldr	r4, .L190+4
	ldr	r9, .L190+8
	ldr	fp, .L190+12
	ldr	r8, .L190+16
	sub	sp, sp, #20
	add	r10, r4, #120
.L175:
	ldrh	r0, [r9]
	tst	r0, #1
	beq	.L169
	ldrh	r1, [fp]
	ands	r7, r1, #1
	beq	.L187
.L169:
	ldr	r3, [r5, #32]
	add	r3, r3, #1
	str	r3, [r5, #32]
.L172:
	tst	r0, #2
	beq	.L173
	ldrh	r2, [fp]
	ands	r7, r2, #2
	beq	.L188
.L173:
	ldr	r3, [r5, #32]
	add	r3, r3, #1
	str	r3, [r5, #32]
.L174:
	add	r4, r4, #40
	cmp	r10, r4
	add	r6, r6, #68
	bne	.L175
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L187:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #28]
	ldr	r1, [r4, #24]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r8, #24
	mov	r1, r7
	mov	r0, #230
	ldm	r2, {r2, r3}
	ldr	ip, .L190+20
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L171
	ldr	r3, [r8, #44]
	cmp	r3, #0
	bgt	.L189
.L171:
	ldrh	r0, [r9]
	b	.L169
.L188:
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
	ldr	ip, .L190+20
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L173
	ldr	r3, [r8, #48]
	cmp	r3, #0
	ble	.L173
	mov	r2, r7
	ldr	r3, .L190+24
	ldr	r1, .L190+28
	ldr	r0, .L190+32
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
	b	.L174
.L189:
	mov	r2, r7
	ldr	r3, .L190+24
	ldr	r1, .L190+28
	ldr	r0, .L190+32
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
	ldrh	r0, [r9]
	b	.L172
.L191:
	.align	2
.L190:
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
	ldr	r2, .L194
	ldr	r3, [r2, #4]
	str	lr, [sp, #-4]!
	ldr	r0, [r2, #36]
	ldr	lr, [r2, #60]
	ldrb	ip, [r2]	@ zero_extendqisi2
	ldr	r1, .L194+4
	lsl	r3, r3, #23
	add	r2, r0, lr, lsl #5
	lsr	r3, r3, #23
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L195:
	.align	2
.L194:
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
	ldr	r3, .L212
	ldr	r2, .L212+4
	add	r0, r3, #1472
	add	r0, r0, #8
.L204:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L210
	str	lr, [sp, #-4]!
.L205:
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	ldr	r1, [r3, #32]
	add	r3, r3, #40
	cmp	r3, r0
	strh	lr, [r2, #8]	@ movhi
	strh	ip, [r2, #10]	@ movhi
	strh	r1, [r2, #12]	@ movhi
	add	r2, r2, #8
	beq	.L211
.L198:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	bne	.L205
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L198
.L211:
	ldr	lr, [sp], #4
	bx	lr
.L210:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L204
	bx	lr
.L213:
	.align	2
.L212:
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
	ldr	r3, .L222
	ldr	r2, .L222+4
	add	r0, r3, #1472
	add	r0, r0, #8
.L216:
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
	bne	.L216
	ldr	lr, [sp], #4
	bx	lr
.L223:
	.align	2
.L222:
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
	ldr	r3, .L243
	ldr	r2, .L243+4
	add	r0, r3, #1472
	add	r0, r0, #8
.L233:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L241
	str	lr, [sp, #-4]!
.L234:
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
	beq	.L242
.L226:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	bne	.L234
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L226
.L242:
	ldr	r3, .L243+8
	ldr	r2, [r3]
	cmp	r2, #100
	moveq	r2, #0
	ldr	lr, [sp], #4
	streq	r2, [r3]
	bx	lr
.L241:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L233
	ldr	r3, .L243+8
	ldr	r2, [r3]
	cmp	r2, #100
	moveq	r2, #0
	streq	r2, [r3]
	bx	lr
.L244:
	.align	2
.L243:
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
	ldr	r3, .L261
	ldr	r2, .L261+4
	add	ip, r3, #1472
	add	ip, ip, #8
.L253:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L259
	str	lr, [sp, #-4]!
.L254:
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
	beq	.L260
.L247:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	bne	.L254
	add	r3, r3, #40
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L247
.L260:
	ldr	lr, [sp], #4
	bx	lr
.L259:
	add	r3, r3, #40
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L253
	bx	lr
.L262:
	.align	2
.L261:
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
	ldr	r3, .L267
	ldr	r2, .L267+4
	add	ip, r3, #1472
	add	ip, ip, #8
.L264:
	ldm	r3, {r0, r1}
	add	r3, r3, #40
	cmp	r3, ip
	strh	lr, [r2, #4]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	add	r2, r2, #8
	bne	.L264
	ldr	lr, [sp], #4
	bx	lr
.L268:
	.align	2
.L267:
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
	ldr	r2, .L271
	ldr	r3, .L271+4
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
.L272:
	.align	2
.L271:
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
	mov	r1, #120
	mov	r0, #80
	ldr	r3, .L277
	ldr	r2, .L277+4
	str	lr, [sp, #-4]!
	add	lr, r3, r1
.L274:
	ldr	ip, [r3, #32]
	stm	r3, {r0, r1}
	add	r3, r3, #40
	cmp	r3, lr
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	strh	ip, [r2, #4]	@ movhi
	add	r2, r2, #8
	bne	.L274
	ldr	lr, [sp], #4
	bx	lr
.L278:
	.align	2
.L277:
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
	ldr	r2, .L283
	ldr	r3, .L283+4
	push	{r4, r5, r6, lr}
	ldr	r6, [r2]
	ldr	r5, [r2, #4]
	ldr	r2, .L283+8
	add	r4, r3, #204
.L280:
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
	bne	.L280
	pop	{r4, r5, r6, lr}
	bx	lr
.L284:
	.align	2
.L283:
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
	ldr	ip, .L298
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r2, [ip]
	ldr	r6, .L298+4
	strh	r3, [r1, #10]	@ movhi
	ldr	r0, [r6, #4]
	lsl	r3, r2, #24
	orr	r3, r3, #1073741824
	lsr	r3, r3, #16
	cmp	r0, #256
	strh	r3, [r1, #10]	@ movhi
	ble	.L286
	add	r2, r2, #1
	lsl	r3, r2, #24
	orr	r3, r3, #1073741824
	sub	r0, r0, #256
	lsr	r3, r3, #16
	str	r2, [ip]
	str	r0, [r6, #4]
	strh	r3, [r1, #10]	@ movhi
.L286:
	cmp	r2, #31
	beq	.L287
	cmp	r2, #30
	beq	.L288
.L291:
	ldr	r2, .L298+8
	ldr	r3, [r2]
	ldr	r5, .L298+12
	cmp	r3, #512
	subgt	r3, r3, #512
	strgt	r3, [r2]
	bl	updatePanda
	ldr	r1, [r5, #60]
	ldr	r3, [r5, #4]
	ldr	r2, [r5, #36]
	ldr	r4, .L298+16
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
	ldr	r2, .L298+20
	mov	lr, pc
	bx	r2
	mov	r1, r4
	mov	r3, #512
	ldr	r4, .L298+24
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L288:
	ldr	r3, [r6, #4]
	cmp	r3, #230
	ble	.L291
.L287:
	bl	drawFriendlyPandas
	mov	r1, #120
	mov	r0, #80
	ldr	r3, .L298+28
	ldr	r2, .L298+32
	add	lr, r3, r1
.L292:
	ldr	ip, [r3, #32]
	stm	r3, {r0, r1}
	add	r3, r3, #40
	cmp	r3, lr
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	strh	ip, [r2, #4]	@ movhi
	add	r2, r2, #8
	bne	.L292
	b	.L291
.L299:
	.align	2
.L298:
	.word	screenBlock
	.word	.LANCHOR0
	.word	playerHOff
	.word	panda
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.word	baskets
	.word	shadowOAM+256
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
	ldr	r3, .L301
	str	r2, [r3, #60]
	str	r2, [r3, #128]
	str	r2, [r3, #196]
	bx	lr
.L302:
	.align	2
.L301:
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
	ldr	r5, .L380
	ldr	r3, [r5]
	add	r3, r3, #1
	str	r3, [r5]
	mov	r6, #141
	bl	updatePanda2
	mov	lr, #82
	mov	ip, #150
	mov	r0, #87
	ldr	r4, .L380+4
	ldr	r3, [r4, #4]
	ldr	r2, .L380+8
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
	ldr	r3, .L380+12
	ldr	r1, [r3]
	add	r3, r2, #320
	strh	r6, [r3]	@ movhi
	strh	lr, [r3, #2]	@ movhi
	cmp	r1, #0
	add	r3, r2, #328
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	beq	.L304
	mov	lr, #5
	ldr	r3, .L380+16
	add	r0, r3, #1472
	add	r0, r0, #8
.L306:
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
	bne	.L306
	mov	lr, #5
	ldr	r3, .L380+20
	ldr	r2, .L380+24
	add	ip, r3, #1472
	add	ip, ip, #8
.L307:
	ldm	r3, {r0, r1}
	add	r3, r3, #40
	cmp	ip, r3
	strh	lr, [r2, #4]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	add	r2, r2, #8
	bne	.L307
	mov	r2, #15
	mov	r3, #0
	str	r2, [r4, #48]
	str	r3, [r4, #44]
.L308:
	ldr	r5, .L380+28
	ldr	r2, .L380+32
	ldr	r1, .L380+36
	ldr	r3, [r5, #32]
	mla	r3, r1, r3, r2
	ldr	r2, .L380+40
	cmp	r2, r3, ror #3
	movcc	r3, #0
	strcc	r3, [r5, #60]
	strcc	r3, [r5, #128]
	strcc	r3, [r5, #196]
	ldr	r3, [r5, #44]
	cmp	r3, #5
	beq	.L316
	ldr	r2, [r5, #48]
	cmp	r2, #3
	beq	.L316
.L317:
	ldr	r3, .L380+44
	mov	lr, pc
	bx	r3
	ldr	r4, .L380+48
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L380+8
	mov	lr, pc
	bx	r4
	mov	r3, #0
	str	r3, [r5, #60]
	str	r3, [r5, #128]
	str	r3, [r5, #196]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L316:
	ldr	r2, [r5, #112]
	cmp	r2, #5
	beq	.L318
	ldr	r1, [r5, #116]
	cmp	r1, #3
	beq	.L318
	cmp	r3, #5
	beq	.L317
	ldr	r3, [r5, #48]
	cmp	r3, #3
	bne	.L317
	ldr	r3, [r5, #116]
	cmp	r3, #3
	bne	.L317
.L323:
	ldr	r3, [r5, #180]
	cmp	r3, #5
	beq	.L327
	ldr	r3, [r5, #184]
	cmp	r3, #3
	bne	.L317
.L327:
	add	r2, r4, #44
	ldmia	r2, {r2, r3}
	orr	r3, r2, r3
	cmp	r3, #0
	movne	r2, #1
	ldrne	r3, .L380+52
	strne	r2, [r3]
	b	.L317
.L304:
	ldr	r3, [r5]
	cmp	r3, #49
	bgt	.L309
	ldr	r3, .L380+20
	add	ip, r3, #1472
	add	r2, r2, #360
	add	ip, ip, #8
.L311:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L310
	ldr	r0, [r3]
	ldr	r1, [r3, #32]
	ldr	lr, [r3, #4]
	add	r0, r0, #3
	add	r1, r1, #32
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	strh	lr, [r2, #2]	@ movhi
.L310:
	add	r3, r3, #40
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L311
.L312:
	ldr	r3, .L380+16
	ldr	r2, .L380+8
	add	r0, r3, #1472
	add	r0, r0, #8
.L314:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L313
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	ldr	r1, [r3, #32]
	strh	lr, [r2, #8]	@ movhi
	strh	ip, [r2, #10]	@ movhi
	strh	r1, [r2, #12]	@ movhi
.L313:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L314
	bl	checkFoodCollected
	bl	checkEnemyCollision
	b	.L308
.L318:
	ldr	r1, [r5, #180]
	cmp	r1, #5
	beq	.L320
	ldr	r1, [r5, #184]
	cmp	r1, #3
	beq	.L320
	cmp	r3, #5
	bne	.L322
.L325:
	cmp	r2, #5
	beq	.L323
.L379:
	ldr	r3, [r5, #116]
	cmp	r3, #3
	beq	.L323
	b	.L317
.L309:
	bl	drawEnemies
	b	.L312
.L322:
	ldr	r3, [r5, #48]
	cmp	r3, #3
	bne	.L317
	cmp	r2, #5
	beq	.L323
	b	.L379
.L320:
	add	r0, r4, #44
	ldmia	r0, {r0, r1}
	orr	r1, r0, r1
	cmp	r1, #0
	moveq	r0, #1
	ldreq	r1, .L380+56
	streq	r0, [r1]
	cmp	r3, #5
	beq	.L325
	b	.L322
.L381:
	.align	2
.L380:
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
	.comm	enemies,1480,4
	.comm	food,1480,4
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
