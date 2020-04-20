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
	sub	r3, r5, #4
	cmp	r3, #4
	bls	.L19
	sub	r3, r5, #9
	cmp	r3, #4
	bls	.L20
.L7:
	sub	r3, r5, #14
	cmp	r3, #5
	bls	.L21
.L9:
	sub	r3, r5, #20
	cmp	r3, #6
	bls	.L22
.L10:
	sub	r3, r5, #27
	cmp	r3, #7
	bls	.L23
.L11:
	tst	r5, #1
	moveq	r3, #4
	movne	r3, #3
.L13:
	add	r5, r5, #1
	cmp	r5, #35
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
	cmp	r5, #3
	str	r0, [r4]
	str	r1, [r4, #20]
	str	r1, [r4, #16]
	bgt	.L6
	mov	r2, #31
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
	mov	r2, #64
	mul	r3, r5, r3
	sub	r3, r3, #120
	str	r3, [r4]
	str	r2, [r4, #4]
	b	.L9
.L23:
	mov	r3, #18
	mvn	r1, #484
	mov	r2, #214
	mla	r3, r5, r3, r1
	str	r2, [r4, #4]
	str	r3, [r4]
	b	.L11
.L22:
	mov	r3, #20
	mov	r2, #181
	mul	r3, r5, r3
	sub	r3, r3, #388
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
	mov	r2, #141
	mul	r3, r5, r3
	sub	r3, r3, #348
	sub	r3, r3, #2
	str	r3, [r4]
	str	r2, [r4, #4]
	b	.L11
.L20:
	mov	r3, #25
	mov	r2, #101
	mul	r3, r5, r3
	sub	r3, r3, #213
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
	mov	r4, #1
	mov	r0, #8
	mov	r1, #2
	mov	lr, #7
	mov	r9, #213
	mov	r8, #18
	mov	r7, #180
	mov	r6, #20
	mov	r5, #140
	ldr	r2, .L43
	b	.L36
.L28:
	sub	ip, r3, #5
	cmp	ip, #3
	bls	.L38
	sub	ip, r3, #9
	cmp	ip, #5
	bls	.L39
.L29:
	sub	ip, r3, #15
	cmp	ip, #4
	bls	.L40
.L31:
	sub	ip, r3, #20
	cmp	ip, #6
	bls	.L41
.L32:
	sub	ip, r3, #27
	cmp	ip, #6
	mulls	ip, r8, r3
	subls	ip, ip, #476
	strls	r9, [r2, #4]
	strls	ip, [r2]
.L33:
	add	r3, r3, #1
	cmp	r3, #34
	add	r2, r2, #40
	beq	.L42
.L36:
	cmp	r3, #4
	str	r4, [r2, #36]
	str	r0, [r2, #24]
	str	r0, [r2, #28]
	str	r1, [r2, #20]
	str	r1, [r2, #16]
	str	lr, [r2, #32]
	bgt	.L28
	mov	r10, #30
	rsb	ip, r3, r3, lsl #4
	lsl	ip, ip, #1
	str	ip, [r2]
	str	r10, [r2, #4]
	b	.L29
.L42:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L38:
	mov	ip, #30
	mov	r10, #63
	mul	ip, r3, ip
	sub	ip, ip, #134
	str	ip, [r2]
	str	r10, [r2, #4]
	b	.L31
.L41:
	mul	ip, r6, r3
	sub	ip, ip, #400
	str	r7, [r2, #4]
	add	r3, r3, #1
	str	ip, [r2], #40
	b	.L36
.L40:
	mov	ip, #25
	mul	ip, r3, ip
	sub	ip, ip, #360
	sub	ip, ip, #2
	str	r5, [r2, #4]
	str	ip, [r2]
	b	.L33
.L39:
	mov	ip, #25
	mov	r10, #100
	mul	ip, r3, ip
	sub	ip, ip, #225
	str	ip, [r2]
	str	r10, [r2, #4]
	b	.L32
.L44:
	.align	2
.L43:
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, #0
	mov	ip, #3
	mov	r5, #8
	mov	r0, #28
	mov	r6, #1
	ldr	r3, .L49
	ldr	r1, .L49+4
	ldr	r2, .L49+8
	str	r4, [r1]
	mov	r7, #16
	ldr	r1, .L49+12
	str	r4, [r3]
	mov	r8, #225
	ldr	r3, .L49+16
	str	r0, [r1]
	str	ip, [r3, #64]
	str	r5, [r3, #24]
	str	r5, [r3, #28]
	str	r4, [r2]
	str	r4, [r2, #4]
	str	r4, [r3, #32]
	str	r4, [r3, #36]
	str	r4, [r3, #44]
	str	r4, [r3, #48]
	str	r4, [r3, #60]
	str	r6, [r3, #20]
	str	r6, [r3, #16]
	bl	initFood
	bl	initEnemies
	mov	r1, r5
	mov	ip, r4
	mov	r2, #47
	mov	r5, #220
	mov	r0, #6
	mov	lr, #2
	ldr	r3, .L49+20
	str	r6, [r3, #36]
	str	r4, [r3, #8]
	str	r8, [r3, #12]
	str	r7, [r3, #24]
	str	r7, [r3, #28]
	ldr	r3, .L49+24
.L46:
	str	r2, [r3, #8]
	add	r2, r2, #20
	cmp	r2, #107
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r5, [r3, #12]
	str	r0, [r3, #36]
	str	ip, [r3, #44]
	str	ip, [r3, #48]
	str	r0, [r3, #60]
	str	lr, [r3, #64]
	add	r3, r3, #68
	bne	.L46
	mov	r2, #16
	mov	ip, #1
	mov	r0, #200
	mov	r1, #4
	mov	r5, #47
	mov	r4, #67
	mov	lr, #87
	ldr	r3, .L49+28
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
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L50:
	.align	2
.L49:
	.word	playerHOff
	.word	hasShield
	.word	.LANCHOR0
	.word	screenBlock
	.word	panda
	.word	door
	.word	pandas
	.word	baskets
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
	mov	r2, #16
	mov	ip, #1
	mov	r0, #200
	mov	r1, #4
	mov	r5, #47
	mov	r4, #67
	mov	lr, #87
	ldr	r3, .L53
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
.L54:
	.align	2
.L53:
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
	mov	ip, #8
	mov	r4, #220
	mov	r0, #6
	mov	r1, #0
	mov	lr, #2
	ldr	r3, .L59
.L56:
	str	r2, [r3, #8]
	add	r2, r2, #20
	cmp	r2, #107
	str	ip, [r3, #24]
	str	ip, [r3, #28]
	str	r4, [r3, #12]
	str	r0, [r3, #36]
	str	r1, [r3, #44]
	str	r1, [r3, #48]
	str	r0, [r3, #60]
	str	lr, [r3, #64]
	add	r3, r3, #68
	bne	.L56
	pop	{r4, lr}
	bx	lr
.L60:
	.align	2
.L59:
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
	mov	r2, #16
	mov	ip, #1
	mov	r0, #0
	mov	r1, #225
	ldr	r3, .L62
	str	ip, [r3, #36]
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	bx	lr
.L63:
	.align	2
.L62:
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
	ldr	r4, .L138
	ldr	r3, [r4, #36]
	cmp	r3, #6
	movne	r2, #0
	strne	r3, [r4, #40]
	strne	r2, [r4, #36]
	ldr	r1, .L138+4
	ldr	r2, [r4, #32]
	ldr	r3, .L138+8
	mla	r3, r2, r3, r1
	ldr	r1, .L138+12
	cmp	r3, r1
	addhi	r2, r2, #1
	strhi	r2, [r4, #32]
	bhi	.L67
	ldr	r0, [r4, #60]
	ldr	r3, .L138+16
	ldr	r1, [r4, #64]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #60]
.L67:
	ldr	r3, .L138+20
	ldr	r3, [r3]
	ldr	r1, .L138+24
	cmp	r3, #0
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldrh	r1, [r1, #48]
	bne	.L68
	tst	r1, #64
	beq	.L124
.L128:
	ldr	r0, .L138+28
	ldr	r1, .L138+32
.L69:
	ldr	ip, .L138+24
	ldrh	ip, [ip, #48]
	tst	ip, #128
	bne	.L71
	ldr	r5, [r4, #28]
	add	ip, r5, r3
	cmp	ip, #235
	ble	.L131
.L71:
	ldr	ip, .L138+24
	ldrh	ip, [ip, #48]
	tst	ip, #16
	beq	.L132
	ldr	lr, [r4, #36]
	ldr	ip, [r1]
	ldr	r1, [r0]
	cmp	lr, #6
	sub	r2, r2, ip
	sub	r3, r3, r1
	bne	.L85
	mov	r0, #0
	ldr	r1, [r4, #40]
	str	r0, [r4, #60]
	str	r1, [r4, #36]
	str	r2, [r4, #4]
	str	r3, [r4]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L68:
	ldr	r0, .L138+28
	tst	r1, #64
	ldr	r1, [r0]
	bne	.L82
	ldr	ip, [r4, #16]
	sub	ip, r3, ip
	add	lr, ip, ip, lsl #1
	ldr	r6, .L138+36
	add	r5, r2, lr, lsl #8
	lsl	r5, r5, #1
	ldrh	r5, [r6, r5]
	cmp	r5, #0
	lsl	r5, lr, #8
	beq	.L82
	add	r7, r4, #20
	ldm	r7, {r7, lr}
	add	lr, r2, lr
	sub	lr, lr, r7
	add	lr, lr, r5
	lsl	lr, lr, #1
	ldrh	lr, [r6, lr]
	cmp	lr, #0
	cmpne	r3, #5
	bgt	.L133
.L82:
	ldr	ip, .L138+24
	ldrh	ip, [ip, #48]
	tst	ip, #128
	bne	.L83
	ldr	r5, [r4, #28]
	add	ip, r5, r3
	cmp	ip, #235
	bgt	.L83
	add	ip, ip, ip, lsl #1
	add	lr, r2, ip, lsl #8
	ldr	r6, .L138+36
	lsl	lr, lr, #1
	ldrh	lr, [r6, lr]
	cmp	lr, #0
	lsl	ip, ip, #8
	beq	.L83
	add	r7, r4, #20
	ldm	r7, {r7, lr}
	add	lr, r2, lr
	sub	lr, lr, r7
	add	ip, lr, ip
	lsl	ip, ip, #1
	ldrh	ip, [r6, ip]
	cmp	ip, #0
	beq	.L83
	mov	ip, #2
	ldr	lr, [r4, #16]
	cmp	r1, #95
	add	r3, r3, lr
	str	r3, [r4, #8]
	str	ip, [r4, #36]
	bgt	.L83
	ldr	lr, [r4]
	add	ip, r5, r5, lsr #31
	add	ip, lr, ip, asr #1
	cmp	ip, #80
	addeq	r1, r1, #1
	streq	r1, [r0]
.L83:
	ldr	ip, .L138+24
	ldrh	ip, [ip, #48]
	ldr	r6, .L138+32
	tst	ip, #16
	ldr	r5, [r6]
	beq	.L134
.L84:
	mov	r0, #1
	str	r0, [r4, #36]
	sub	r2, r2, r5
	sub	r3, r3, r1
.L85:
	ldr	r1, [r4, #32]
	add	r1, r1, #1
	str	r1, [r4, #32]
	str	r2, [r4, #4]
	str	r3, [r4]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L124:
	ldr	ip, [r4, #16]
	sub	ip, r3, ip
	add	r1, ip, ip, lsl #1
	ldr	lr, .L138+36
	add	r0, r2, r1, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [lr, r0]
	cmp	r0, #0
	lsl	r0, r1, #8
	beq	.L70
	ldr	r1, [r4, #24]
	ldr	r5, [r4, #20]
	add	r1, r2, r1
	sub	r1, r1, r5
	add	r1, r1, r0
	lsl	r1, r1, #1
	ldrh	r1, [lr, r1]
	cmp	r1, #0
	beq	.L70
	cmp	r3, #0
	ble	.L128
	mov	r3, #2
	ldr	r0, .L138+28
	ldr	r1, [r0]
	cmp	r1, #0
	str	ip, [r4, #8]
	str	r3, [r4, #36]
	ble	.L89
	ldr	r3, [r4, #28]
	ldr	lr, [r4]
	add	r3, r3, r3, lsr #31
	add	r3, lr, r3, asr #1
	cmp	r3, #80
	beq	.L135
.L89:
	mov	r3, ip
	ldr	r1, .L138+32
	b	.L69
.L134:
	ldr	ip, [r4, #24]
	add	ip, r2, ip
	cmp	ip, #748
	bge	.L84
	add	lr, r3, r3, lsl #1
	ldr	r7, .L138+36
	add	lr, ip, lr, lsl #8
	lsl	lr, lr, #1
	ldrh	r8, [r7, lr]
	ldr	lr, .L138+40
	cmp	r8, lr
	bne	.L84
	ldr	lr, [r4, #28]
	ldr	r9, [r4, #16]
	add	lr, r3, lr
	sub	lr, lr, r9
	add	lr, lr, lr, lsl #1
	add	ip, ip, lr, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [r7, ip]
	cmp	ip, r8
	bne	.L84
	ldr	ip, .L138+44
	ldr	ip, [ip]
	add	r2, r2, #1
	cmp	ip, #29
	str	r2, [r4, #12]
	bgt	.L84
	ldr	ip, [r0, #4]
	ldr	lr, .L138+48
	cmp	ip, lr
	bgt	.L84
	ldr	lr, [r4, #4]
	cmp	lr, #120
	ble	.L84
	ldr	r7, .L138+52
	ldr	lr, [r7]
	add	ip, ip, #1
	add	r5, r5, #1
	add	lr, lr, #1
	str	ip, [r0, #4]
	str	r5, [r6]
	str	lr, [r7]
	b	.L84
.L132:
	ldr	lr, [r4, #24]
	add	lr, r2, lr
.L87:
	cmp	lr, #748
	bge	.L136
	add	ip, r3, r3, lsl #1
	ldr	r5, .L138+36
	add	ip, lr, ip, lsl #8
	lsl	ip, ip, #1
	ldrh	r6, [r5, ip]
	ldr	ip, .L138+40
	cmp	r6, ip
	beq	.L137
.L77:
	mov	ip, #0
	mov	r5, #73
	mov	lr, #64
	mov	r6, #28
	str	ip, [r0]
	str	ip, [r1]
	str	ip, [r0, #4]
	ldr	r1, .L138+44
	ldr	r0, .L138+52
	mov	r2, r5
	mov	r3, lr
	str	r5, [r4, #12]
	str	lr, [r4, #8]
	str	ip, [r0]
	str	r6, [r1]
	b	.L76
.L70:
	mov	ip, #0
	mov	r2, #73
	mov	r3, #64
	mov	r5, #28
	ldr	lr, .L138+52
	ldr	r0, .L138+28
	str	ip, [lr]
	ldr	r1, .L138+32
	ldr	lr, .L138+44
	str	r2, [r4, #4]
	str	r2, [r4, #12]
	str	r3, [r4]
	str	r3, [r4, #8]
	str	ip, [r0, #4]
	str	ip, [r0]
	str	ip, [r1]
	str	r5, [lr]
	b	.L69
.L131:
	add	ip, ip, ip, lsl #1
	add	lr, r2, ip, lsl #8
	ldr	r6, .L138+36
	lsl	lr, lr, #1
	ldrh	lr, [r6, lr]
	cmp	lr, #0
	lsl	ip, ip, #8
	beq	.L72
	add	r7, r4, #20
	ldm	r7, {r7, lr}
	add	lr, r2, lr
	sub	r7, lr, r7
	add	ip, r7, ip
	lsl	ip, ip, #1
	ldrh	ip, [r6, ip]
	cmp	ip, #0
	beq	.L72
	mov	ip, #2
	ldr	r6, [r4, #16]
	add	r3, r3, r6
	ldr	r6, [r0]
	cmp	r6, #95
	str	r3, [r4, #8]
	str	ip, [r4, #36]
	bgt	.L73
	ldr	r7, [r4]
	add	ip, r5, r5, lsr #31
	add	ip, r7, ip, asr #1
	cmp	ip, #80
	addeq	r6, r6, #1
	streq	r6, [r0]
.L73:
	ldr	ip, .L138+24
	ldrh	ip, [ip, #48]
	tst	ip, #16
	ldrne	ip, [r1]
	ldrne	r1, [r0]
	subne	r2, r2, ip
	subne	r3, r3, r1
	beq	.L87
	b	.L85
.L136:
	ldr	ip, [r1]
	ldr	r1, [r0]
	sub	r2, r2, ip
	sub	r3, r3, r1
.L76:
	mov	r1, #1
	str	r1, [r4, #36]
	b	.L85
.L72:
	mov	r5, #73
	mov	ip, #0
	mov	lr, #64
	mov	r6, #28
	mov	r2, r5
	str	r5, [r4, #4]
	str	r5, [r4, #12]
	ldr	r5, .L138+52
	str	ip, [r0, #4]
	str	ip, [r0]
	str	ip, [r1]
	str	ip, [r5]
	ldr	ip, .L138+44
	mov	r3, lr
	str	lr, [r4]
	str	lr, [r4, #8]
	str	r6, [ip]
	b	.L71
.L133:
	mov	r3, #2
	cmp	r1, #0
	str	ip, [r4, #8]
	str	r3, [r4, #36]
	ble	.L91
	ldr	r3, [r4, #28]
	ldr	lr, [r4]
	add	r3, r3, r3, lsr #31
	add	r3, lr, r3, asr #1
	cmp	r3, #80
	subeq	r1, r1, #1
	moveq	r3, ip
	streq	r1, [r0]
	beq	.L82
.L91:
	mov	r3, ip
	b	.L82
.L137:
	ldr	ip, [r4, #28]
	ldr	r7, [r4, #16]
	add	ip, r3, ip
	sub	ip, ip, r7
	add	ip, ip, ip, lsl #1
	add	lr, lr, ip, lsl #8
	lsl	lr, lr, #1
	ldrh	ip, [r5, lr]
	cmp	ip, r6
	bne	.L77
	ldr	ip, .L138+44
	ldr	ip, [ip]
	ldr	lr, [r0]
	cmp	ip, #29
	add	ip, r2, #1
	sub	r3, r3, lr
	str	ip, [r4, #12]
	ldr	lr, [r1]
	bgt	.L130
	ldr	r5, [r0, #4]
	ldr	r6, .L138+48
	cmp	r5, r6
	bgt	.L130
	ldr	r6, [r4, #4]
	cmp	r6, #120
	ble	.L130
	ldr	r6, .L138+52
	ldr	ip, [r6]
	add	r5, r5, #1
	str	r5, [r0, #4]
	add	ip, ip, #1
	add	r0, lr, #1
	str	r0, [r1]
	str	ip, [r6]
	sub	r2, r2, lr
	b	.L76
.L130:
	sub	r2, ip, lr
	b	.L76
.L135:
	sub	r1, r1, #1
	str	r1, [r0]
	mov	r3, ip
	ldr	r1, .L138+32
	b	.L69
.L139:
	.align	2
.L138:
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
	.word	526
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
	ldr	r4, .L183
	ldr	r3, [r4, #36]
	cmp	r3, #6
	movne	r2, #0
	strne	r3, [r4, #40]
	strne	r2, [r4, #36]
	ldr	r1, .L183+4
	ldr	r2, [r4, #32]
	ldr	r3, .L183+8
	mla	r3, r2, r3, r1
	ldr	r1, .L183+12
	cmp	r3, r1
	addhi	r2, r2, #1
	strhi	r2, [r4, #32]
	bhi	.L143
	ldr	r0, [r4, #60]
	ldr	r3, .L183+16
	ldr	r1, [r4, #64]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #60]
.L143:
	ldr	r3, .L183+20
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	bne	.L144
	cmp	r3, #0
	ble	.L144
	ldr	r1, [r4, #16]
	sub	r1, r3, r1
	ldr	r0, .L183+24
	add	ip, r2, r1, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [r0, ip]
	cmp	ip, #0
	lsl	lr, r1, #8
	bne	.L179
.L144:
	ldr	r1, .L183+20
	ldrh	r1, [r1, #48]
	tst	r1, #128
	bne	.L145
	ldr	r1, [r4]
	cmp	r1, #125
	ble	.L180
.L145:
	ldr	r1, .L183+20
	ldrh	r0, [r1, #48]
	tst	r0, #32
	bne	.L146
	cmp	r2, #0
	ble	.L146
	ldr	ip, [r4, #20]
	sub	ip, r2, ip
	ldr	r0, .L183+24
	add	lr, ip, r3, lsl #8
	lsl	lr, lr, #1
	ldrh	lr, [r0, lr]
	cmp	lr, #0
	lsl	lr, r3, #8
	beq	.L146
	ldr	r5, [r4, #28]
	ldr	r6, [r4, #16]
	add	r5, r3, r5
	sub	r5, r5, r6
	add	ip, ip, r5, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [r0, ip]
	cmp	ip, #0
	beq	.L146
	mov	ip, #1
	ldrh	r1, [r1, #48]
	sub	r2, r2, #1
	tst	r1, #16
	str	r2, [r4, #12]
	str	ip, [r4, #36]
	bne	.L148
	ldr	r1, [r4, #24]
	add	r1, r2, r1
	cmp	r1, #255
	bgt	.L148
	b	.L152
.L146:
	ldr	r1, .L183+20
	ldrh	r1, [r1, #48]
	tst	r1, #16
	beq	.L181
.L149:
	ldr	r1, [r4, #36]
	cmp	r1, #6
	beq	.L182
.L148:
	ldr	r1, [r4, #32]
	add	r1, r1, #1
	str	r1, [r4, #32]
.L150:
	ldr	r1, .L183+28
	ldrh	r1, [r1]
	tst	r1, #1
	beq	.L151
	ldr	r1, .L183+32
	ldrh	r1, [r1]
	tst	r1, #1
	moveq	r0, #1
	ldreq	r1, .L183+36
	streq	r0, [r1]
.L151:
	str	r2, [r4, #4]
	str	r3, [r4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L181:
	ldr	r1, [r4, #24]
	add	r1, r2, r1
	cmp	r1, #255
	bgt	.L149
	ldr	r0, .L183+24
	lsl	lr, r3, #8
.L152:
	add	lr, lr, r1
	lsl	lr, lr, #1
	ldrh	ip, [r0, lr]
	ldr	lr, .L183+40
	cmp	ip, lr
	bne	.L149
	ldr	lr, [r4, #28]
	ldr	r5, [r4, #16]
	add	lr, r3, lr
	sub	lr, lr, r5
	add	r1, r1, lr, lsl #8
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, ip
	bne	.L149
	mov	r1, #1
	add	r2, r2, r1
	str	r2, [r4, #12]
	str	r1, [r4, #36]
	b	.L148
.L180:
	ldr	r1, [r4, #28]
	add	r1, r3, r1
	cmp	r1, #255
	bgt	.L145
	add	ip, r2, r1, lsl #8
	ldr	r0, .L183+24
	lsl	ip, ip, #1
	ldrh	ip, [r0, ip]
	cmp	ip, #0
	lsl	r1, r1, #8
	beq	.L145
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
	b	.L145
.L182:
	mov	r0, #0
	ldr	r1, [r4, #40]
	str	r0, [r4, #60]
	str	r1, [r4, #36]
	b	.L150
.L179:
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
	b	.L144
.L184:
	.align	2
.L183:
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
	ldr	r4, .L197
	ldr	r5, .L197+4
	add	r7, r4, #1392
	mov	fp, #5
	ldr	r6, .L197+8
	ldr	r8, .L197+12
	ldr	r10, .L197+16
	sub	sp, sp, #20
	add	r7, r7, #8
	sub	r9, r5, #8
	b	.L190
.L187:
	add	r4, r4, #40
	cmp	r4, r7
	add	r5, r5, #8
	beq	.L196
.L190:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L187
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
	beq	.L187
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
	bne	.L190
.L196:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L198:
	.align	2
.L197:
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
	ldr	r4, .L210
	ldr	r5, .L210+4
	ldr	r7, .L210+8
	ldr	r8, .L210+12
	sub	sp, sp, #16
	add	r6, r4, #1360
	b	.L203
.L201:
	add	r4, r4, #40
	cmp	r4, r6
	beq	.L209
.L203:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L201
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
	bne	.L203
.L209:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L211:
	.align	2
.L210:
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
	ldr	r4, .L232
	ldr	r5, .L232+4
	ldr	r8, .L232+8
	ldr	r10, .L232+12
	ldr	r7, .L232+16
	ldr	fp, .L232+20
	sub	sp, sp, #20
	add	r9, r4, #120
.L219:
	ldrh	r3, [r8]
	tst	r3, #1
	beq	.L213
	ldrh	r6, [r10]
	ands	r6, r6, #1
	beq	.L229
.L213:
	tst	r3, #2
	beq	.L217
	ldrh	r2, [r10]
	ands	r6, r2, #2
	beq	.L230
.L217:
	add	r4, r4, #40
	cmp	r4, r9
	add	r5, r5, #68
	bne	.L219
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L229:
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
	ldr	ip, .L232+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L228
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bgt	.L231
.L228:
	ldrh	r3, [r8]
	b	.L213
.L230:
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
	ldr	ip, .L232+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L217
	ldr	r3, [r7, #48]
	cmp	r3, #0
	ble	.L217
	mov	r2, r6
	ldr	r1, .L232+28
	ldr	r3, .L232+32
	ldr	r0, .L232+36
	mov	lr, pc
	bx	r3
	mov	r1, #8
	ldr	r2, [r5, #48]
	ldr	r3, [r7, #48]
	add	r2, r2, #1
	sub	r3, r3, #1
	str	r2, [r5, #48]
	str	r3, [r7, #48]
	str	r1, [r5, #60]
	b	.L217
.L231:
	mov	r2, r6
	ldr	r1, .L232+28
	ldr	r3, .L232+32
	ldr	r0, .L232+36
	mov	lr, pc
	bx	r3
	mov	r1, #8
	ldr	r2, [r5, #44]
	ldr	r3, [r7, #44]
	add	r2, r2, #1
	sub	r3, r3, #1
	str	r3, [r7, #44]
	str	r2, [r5, #44]
	str	r1, [r5, #60]
	ldrh	r3, [r8]
	b	.L213
.L233:
	.align	2
.L232:
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
	ldr	r2, .L236
	ldr	r3, [r2, #4]
	str	lr, [sp, #-4]!
	ldr	r0, [r2, #36]
	ldr	lr, [r2, #60]
	ldrb	ip, [r2]	@ zero_extendqisi2
	ldr	r1, .L236+4
	lsl	r3, r3, #23
	add	r2, r0, lr, lsl #5
	lsr	r3, r3, #23
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L237:
	.align	2
.L236:
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
	ldr	r3, .L254
	ldr	r2, .L254+4
	add	r0, r3, #1392
	add	r0, r0, #8
.L246:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L252
	str	lr, [sp, #-4]!
.L247:
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	ldr	r1, [r3, #32]
	add	r3, r3, #40
	cmp	r3, r0
	strh	lr, [r2, #8]	@ movhi
	strh	ip, [r2, #10]	@ movhi
	strh	r1, [r2, #12]	@ movhi
	add	r2, r2, #8
	beq	.L253
.L240:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	bne	.L247
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L240
.L253:
	ldr	lr, [sp], #4
	bx	lr
.L252:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L246
	bx	lr
.L255:
	.align	2
.L254:
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
	mov	r0, #96
	ldr	r1, .L257
	ldr	r3, .L257+4
	ldr	r2, [r1, #12]
	ldr	ip, [r1, #8]
	orr	r2, r2, #16384
	add	r1, r3, #800
	add	r3, r3, #804
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r0, [r3]	@ movhi
	bx	lr
.L258:
	.align	2
.L257:
	.word	door
	.word	shadowOAM
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
	ldr	r3, .L267
	ldr	r2, .L267+4
	add	r0, r3, #1392
	add	r0, r0, #8
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
	ldr	lr, [sp], #4
	bx	lr
.L268:
	.align	2
.L267:
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
	str	lr, [sp, #-4]!
	ldr	r3, .L277
	ldr	r1, .L277+4
	add	ip, r3, #1360
.L271:
	ldr	r2, [r3, #4]
	ldr	r0, [r3, #36]
	add	r2, r2, #1
	cmp	r0, #0
	str	r2, [r3, #4]
	beq	.L270
	ldr	r0, [r3, #32]
	ldr	lr, [r3]
	add	r0, r0, #64
	strh	r2, [r1, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	strh	lr, [r1]	@ movhi
.L270:
	add	r3, r3, #40
	cmp	r3, ip
	add	r1, r1, #8
	bne	.L271
	ldr	lr, [sp], #4
	bx	lr
.L278:
	.align	2
.L277:
	.word	enemies
	.word	shadowOAM+360
	.size	drawEnemies, .-drawEnemies
	.align	2
	.global	drawEnemiesLeft
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemiesLeft, %function
drawEnemiesLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L295
	ldr	r2, .L295+4
	add	r0, r3, #1360
.L287:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L293
	str	lr, [sp, #-4]!
.L288:
	ldr	r1, [r3, #32]
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	add	r3, r3, #40
	add	r1, r1, #96
	cmp	r3, r0
	strh	r1, [r2, #4]	@ movhi
	strh	lr, [r2]	@ movhi
	strh	ip, [r2, #2]	@ movhi
	add	r2, r2, #8
	beq	.L294
.L281:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	bne	.L288
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L281
.L294:
	ldr	lr, [sp], #4
	bx	lr
.L293:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L287
	bx	lr
.L296:
	.align	2
.L295:
	.word	enemies
	.word	shadowOAM+360
	.size	drawEnemiesLeft, .-drawEnemiesLeft
	.align	2
	.global	drawEnemiesRight
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemiesRight, %function
drawEnemiesRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	r3, .L305
	ldr	r1, .L305+4
	add	ip, r3, #1360
.L299:
	ldr	r2, [r3, #4]
	ldr	r0, [r3, #36]
	add	r2, r2, #1
	cmp	r0, #0
	str	r2, [r3, #4]
	beq	.L298
	ldr	r0, [r3, #32]
	ldr	lr, [r3]
	add	r0, r0, #128
	strh	r2, [r1, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	strh	lr, [r1]	@ movhi
.L298:
	add	r3, r3, #40
	cmp	r3, ip
	add	r1, r1, #8
	bne	.L299
	ldr	lr, [sp], #4
	bx	lr
.L306:
	.align	2
.L305:
	.word	enemies
	.word	shadowOAM+360
	.size	drawEnemiesRight, .-drawEnemiesRight
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
	ldr	r3, .L311
	ldr	r2, .L311+4
	add	ip, r3, #1360
.L308:
	ldm	r3, {r0, r1}
	add	r3, r3, #40
	cmp	r3, ip
	strh	lr, [r2, #4]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	add	r2, r2, #8
	bne	.L308
	ldr	lr, [sp], #4
	bx	lr
.L312:
	.align	2
.L311:
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
	mov	ip, #142
	mov	r4, #110
	mov	lr, #216
	ldr	r0, .L315
	ldr	r1, [r0, #116]
	ldr	r2, [r0, #48]
	ldr	r3, [r0, #184]
	add	r2, r2, r1
	ldr	r6, [r0, #112]
	add	r2, r2, r3
	ldr	r3, [r0, #44]
	ldr	r1, .L315+4
	ldr	r0, [r0, #180]
	ldr	r5, .L315+8
	add	r3, r3, r6
	str	r2, [r5]
	add	r3, r3, r0
	add	r2, r2, #8
	add	r0, r1, #324
	strh	r2, [r0]	@ movhi
	ldr	r2, .L315+12
	str	r3, [r2]
	add	r3, r3, #8
	add	r2, r1, #332
	strh	r3, [r2]	@ movhi
	add	r3, r1, #320
	add	r1, r1, #328
	strh	r4, [r3, #2]	@ movhi
	strh	ip, [r3]	@ movhi
	strh	lr, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L316:
	.align	2
.L315:
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
	mov	r0, #142
	mov	lr, #105
	mov	ip, #210
	ldr	r2, .L319
	ldr	r3, .L319+4
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
	strh	lr, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	pop	{r4, lr}
	strh	r0, [r3]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	bx	lr
.L320:
	.align	2
.L319:
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
	ldr	r2, .L325
	ldr	r3, .L325+4
	push	{r4, r5, lr}
	ldr	r1, .L325+8
	ldr	r5, [r2]
	ldr	r4, [r2, #4]
	add	lr, r3, #120
.L322:
	add	r0, r3, #8
	ldm	r0, {r0, r2}
	ldr	ip, [r3, #32]
	sub	r0, r0, r5
	sub	r2, r2, r4
	stm	r3, {r0, r2}
	add	r3, r3, #40
	orr	r2, r2, #16384
	add	ip, ip, #192
	cmp	r3, lr
	strh	r0, [r1]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	add	r1, r1, #8
	bne	.L322
	pop	{r4, r5, lr}
	bx	lr
.L326:
	.align	2
.L325:
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
	ldr	r2, .L328
	ldm	r2, {r1, r3}
	ldr	r2, .L328+4
	sub	r3, r3, #4
	add	r0, r2, #808
	orr	r3, r3, #16384
	sub	r1, r1, #4
	add	r2, r2, #812
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	ip, [r2]	@ movhi
	bx	lr
.L329:
	.align	2
.L328:
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
	ldr	r2, .L334
	ldr	r3, .L334+4
	push	{r4, r5, r6, lr}
	ldr	r1, .L334+8
	ldr	r6, [r2]
	ldr	r5, [r2, #4]
	add	r4, r3, #204
.L331:
	add	r0, r3, #8
	ldm	r0, {r0, r2}
	ldr	lr, [r3, #60]
	ldr	ip, [r3, #36]
	sub	r0, r0, r6
	sub	r2, r2, r5
	stm	r3, {r0, r2}
	add	r3, r3, #68
	orr	r2, r2, #16384
	add	ip, ip, lr, lsl #5
	cmp	r3, r4
	strh	r0, [r1]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	add	r1, r1, #8
	bne	.L331
	pop	{r4, r5, r6, lr}
	bx	lr
.L335:
	.align	2
.L334:
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r0, .L384
	ldr	r3, [r0]
	ldr	r8, .L384+4
	cmp	r3, #28
	ldr	r2, [r8, #4]
	sub	sp, sp, #20
	beq	.L382
	cmp	r2, #256
	bgt	.L341
	cmp	r3, #30
	beq	.L342
.L383:
	cmp	r3, #29
	beq	.L343
.L344:
	ldr	r3, .L384+8
	add	r1, r3, #8
	ldm	r1, {r1, r2}
.L340:
	ldr	r5, .L384+12
	ldr	r0, .L384+16
	add	ip, r3, #24
	ldr	r0, [r0]
	ldm	ip, {ip, lr}
	ldr	r4, [r5, #12]
	str	r1, [sp, #4]
	str	r2, [sp]
	add	r2, r5, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #8]
	sub	r0, r4, r0
	str	lr, [sp, #12]
	ldr	r4, .L384+20
	str	ip, [sp, #8]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	movne	r2, #1
	ldrne	r3, .L384+24
	strne	r2, [r3]
	ldr	r2, .L384+28
	ldr	r3, [r2]
	ldr	r4, .L384+32
	cmp	r3, #512
	subgt	r3, r3, #512
	strgt	r3, [r2]
	mov	r0, #0
	mov	r9, r4
	mov	r3, r4
	mov	r1, #6
	add	r6, r4, #204
.L349:
	ldr	r2, [r3, #60]
	cmp	r2, #8
	ldr	r2, [r3, #32]
	addeq	r2, r2, #1
	streq	r2, [r3, #32]
	cmp	r2, #15
	streq	r0, [r3, #32]
	streq	r1, [r3, #60]
	add	r3, r3, #68
	cmp	r3, r6
	bne	.L349
	bl	drawFoodDelivered
	bl	updatePanda
	ldr	r1, [r5, #60]
	ldr	r3, [r5, #4]
	ldr	r2, [r5, #36]
	ldr	r7, .L384+36
	add	r2, r2, r1, lsl #5
	lsl	r3, r3, #23
	ldrb	r1, [r5]	@ zero_extendqisi2
	lsr	r3, r3, #23
	strh	r3, [r7, #2]	@ movhi
	strh	r1, [r7]	@ movhi
	strh	r2, [r7, #4]	@ movhi
	bl	checkFoodDelivered
	ldr	r3, .L384+40
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L350
	mov	r0, #160
	ldm	r5, {r2, r3}
	sub	r3, r3, #4
	add	r1, r7, #808
	orr	r3, r3, #16384
	sub	r2, r2, #4
	add	r7, r7, #812
	strh	r3, [r1, #2]	@ movhi
	strh	r2, [r1]	@ movhi
	strh	r0, [r7]	@ movhi
.L350:
	mov	r1, #8
	mov	r2, #6
.L353:
	ldr	r3, [r4, #44]
	cmp	r3, #5
	beq	.L351
	ldr	r3, [r4, #48]
	cmp	r3, #5
	beq	.L351
.L352:
	add	r4, r4, #68
	cmp	r4, r6
	bne	.L353
	ldr	r3, [r9, #44]
	cmp	r3, #5
	beq	.L354
	ldr	r3, [r9, #48]
	cmp	r3, #5
	beq	.L354
.L355:
	mov	r3, #67108864
	ldrh	r2, [r8, #4]
	ldrh	r1, [r8]
	strh	r2, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	ldr	r2, .L384+44
	mov	lr, pc
	bx	r2
	ldr	r4, .L384+48
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L384+36
	mov	lr, pc
	bx	r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L382:
	mov	r1, #67108864
	mov	ip, #23552
	cmp	r2, #256
	strh	ip, [r1, #10]	@ movhi
	ble	.L344
.L341:
	mov	ip, #67108864
	add	r3, r3, #1
	lsl	r1, r3, #24
	orr	r1, r1, #1073741824
	sub	r2, r2, #256
	lsr	r1, r1, #16
	cmp	r3, #30
	str	r3, [r0]
	str	r2, [r8, #4]
	strh	r1, [ip, #10]	@ movhi
	bne	.L383
.L342:
	bl	drawFriendlyPandas
	bl	drawBaskets
	mov	ip, #96
	ldr	r3, .L384+8
	ldr	r2, [r3, #12]
	ldr	r0, .L384+52
	orr	r1, r2, #16384
	strh	r1, [r0, #2]	@ movhi
	ldr	r1, [r3, #8]
	strh	ip, [r0, #4]	@ movhi
	strh	r1, [r0]	@ movhi
	b	.L340
.L354:
	ldr	r3, [r9, #112]
	cmp	r3, #5
	beq	.L356
	ldr	r3, [r9, #116]
	cmp	r3, #5
	bne	.L355
.L356:
	ldr	r3, [r9, #180]
	cmp	r3, #5
	beq	.L357
	ldr	r3, [r9, #184]
	cmp	r3, #5
	bne	.L355
.L357:
	mov	r2, #1
	ldr	r3, .L384+56
	str	r2, [r3]
	b	.L355
.L351:
	str	r1, [r4, #36]
	str	r2, [r4, #60]
	b	.L352
.L343:
	ldr	r3, [r8, #4]
	cmp	r3, #256
	ble	.L344
	b	.L342
.L385:
	.align	2
.L384:
	.word	screenBlock
	.word	.LANCHOR0
	.word	door
	.word	panda
	.word	totalHOff
	.word	collision
	.word	goToChina
	.word	playerHOff
	.word	pandas
	.word	shadowOAM
	.word	hasShield
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM+800
	.word	hasWon
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
	mov	r2, #6
	ldr	r3, .L387
	str	r2, [r3, #60]
	str	r2, [r3, #128]
	str	r2, [r3, #196]
	bx	lr
.L388:
	.align	2
.L387:
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L434
	ldr	r3, [r4]
	ldr	r6, .L434+4
	sub	sp, sp, #16
	add	r3, r3, #1
	str	r3, [r4]
	bl	updatePanda2
	add	r2, r6, #8
	ldr	r0, [r6, #28]
	ldr	r1, [r6, #24]
	ldm	r2, {r2, r3}
	ldr	r5, .L434+8
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #8]
	ldr	r0, [r5, #12]
	ldr	r7, .L434+12
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	movne	r2, #1
	mov	r9, #96
	mov	lr, #142
	mov	r8, #105
	mov	r7, #210
	ldrne	r3, .L434+16
	strne	r2, [r3]
	ldrh	r3, [r5, #4]
	ldrh	ip, [r5]
	ldr	r1, .L434+20
	lsl	r2, r3, #23
	lsr	r2, r2, #23
	ldr	r10, [r5, #60]
	ldr	r0, [r5, #36]
	strh	r2, [r1, #2]	@ movhi
	and	r2, ip, #255
	strh	r2, [r1]	@ movhi
	ldr	r2, [r6, #12]
	add	r0, r0, r10, lsl #5
	orr	r2, r2, #16384
	ldr	r10, [r6, #8]
	strh	r0, [r1, #4]	@ movhi
	add	r0, r1, #800
	strh	r2, [r0, #2]	@ movhi
	ldr	r2, .L434+24
	strh	r10, [r0]	@ movhi
	ldr	r0, [r2]
	add	r2, r1, #804
	strh	r9, [r2]	@ movhi
	cmp	r0, #0
	ldr	r2, [r5, #44]
	ldr	r0, [r5, #48]
	add	r5, r1, #320
	strh	lr, [r5]	@ movhi
	strh	r8, [r5, #2]	@ movhi
	add	r5, r1, #328
	strh	lr, [r5]	@ movhi
	add	r0, r0, #8
	add	r2, r2, #8
	add	r6, r1, #324
	add	lr, r1, #332
	strh	r7, [r5, #2]	@ movhi
	strh	r0, [r6]	@ movhi
	strh	r2, [lr]	@ movhi
	beq	.L391
	mov	lr, #160
	sub	r3, r3, #4
	add	r0, r1, #808
	orr	r3, r3, #16384
	strh	r3, [r0, #2]	@ movhi
	ldr	r3, .L434+28
	mov	r2, r1
	sub	ip, ip, #4
	add	r1, r1, #812
	strh	ip, [r0]	@ movhi
	add	r0, r3, #1392
	strh	lr, [r1]	@ movhi
	add	r0, r0, #8
.L393:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L392
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	ldr	r1, [r3, #32]
	strh	lr, [r2, #8]	@ movhi
	strh	ip, [r2, #10]	@ movhi
	strh	r1, [r2, #12]	@ movhi
.L392:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L393
	bl	checkFoodCollected
	ldr	r3, [r4]
	cmp	r3, #32
	bgt	.L394
	ldr	r3, .L434+32
	ldr	r2, .L434+36
	add	r0, r3, #1360
.L396:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L395
	ldr	r1, [r3, #32]
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	add	r1, r1, #96
	strh	r1, [r2, #4]	@ movhi
	strh	lr, [r2]	@ movhi
	strh	ip, [r2, #2]	@ movhi
.L395:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L396
	b	.L407
.L391:
	ldr	r3, [r4]
	cmp	r3, #32
	bgt	.L399
	ldr	r3, .L434+32
	add	r2, r1, #360
	add	r0, r3, #1360
.L401:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L400
	ldr	r1, [r3, #32]
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	add	r1, r1, #96
	strh	r1, [r2, #4]	@ movhi
	strh	lr, [r2]	@ movhi
	strh	ip, [r2, #2]	@ movhi
.L400:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L401
.L402:
	ldr	r3, .L434+28
	ldr	r2, .L434+20
	add	r0, r3, #1392
	add	r0, r0, #8
.L406:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L405
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	ldr	r1, [r3, #32]
	strh	lr, [r2, #8]	@ movhi
	strh	ip, [r2, #10]	@ movhi
	strh	r1, [r2, #12]	@ movhi
.L405:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L406
	bl	checkFoodCollected
	bl	checkEnemyCollision
	ldr	r3, [r4]
.L398:
	cmp	r3, #133
	beq	.L431
.L407:
	ldr	r3, .L434+40
	mov	lr, pc
	bx	r3
	ldr	r4, .L434+44
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L434+20
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L434+48
	str	r2, [r3, #60]
	str	r2, [r3, #128]
	str	r2, [r3, #196]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L399:
	cmp	r3, #67
	beq	.L432
	cmp	r3, #100
	bne	.L402
	bl	drawEnemiesRight
	b	.L402
.L394:
	cmp	r3, #66
	beq	.L433
	cmp	r3, #100
	bne	.L398
	bl	drawEnemiesRight
	ldr	r3, [r4]
	b	.L398
.L431:
	mov	r2, #0
	ldr	r3, .L434+32
	str	r2, [r4]
	add	r1, r3, #1360
.L408:
	ldr	r2, [r3, #4]
	sub	r2, r2, #2
	str	r2, [r3, #4]
	add	r3, r3, #40
	cmp	r3, r1
	bne	.L408
	b	.L407
.L433:
	bl	drawEnemies
	ldr	r3, [r4]
	b	.L398
.L432:
	bl	drawEnemies
	b	.L402
.L435:
	.align	2
.L434:
	.word	count
	.word	door
	.word	panda
	.word	collision
	.word	goToMaze
	.word	shadowOAM
	.word	hasShield
	.word	food
	.word	enemies
	.word	shadowOAM+360
	.word	waitForVBlank
	.word	DMANow
	.word	pandas
	.size	updateGame2, .-updateGame2
	.comm	goToChina,4,4
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
	.comm	enemies,1360,4
	.comm	food,1400,4
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
