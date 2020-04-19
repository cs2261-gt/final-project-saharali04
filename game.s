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
	mov	r2, #0
	push	{r4, lr}
	mov	r1, #8
	mov	lr, #3
	mov	r4, #1
	mov	ip, #28
	ldr	r3, .L47
	str	r2, [r3]
	ldr	r3, .L47+4
	ldr	r0, .L47+8
	str	r2, [r3]
	ldr	r3, .L47+12
	str	r2, [r0]
	str	r2, [r0, #4]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	str	r2, [r3, #60]
	ldr	r2, .L47+16
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
	ldr	r3, .L47+20
	str	r4, [r3, #36]
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	pop	{r4, lr}
	bx	lr
.L48:
	.align	2
.L47:
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
	ldr	r3, .L51
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
.L52:
	.align	2
.L51:
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
	ldr	r3, .L57
.L54:
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
	bne	.L54
	pop	{r4, lr}
	bx	lr
.L58:
	.align	2
.L57:
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
	ldr	r3, .L60
	str	ip, [r3, #36]
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	bx	lr
.L61:
	.align	2
.L60:
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
	ldr	r4, .L136
	ldr	r3, [r4, #36]
	cmp	r3, #6
	movne	r2, #0
	strne	r3, [r4, #40]
	strne	r2, [r4, #36]
	ldr	r1, .L136+4
	ldr	r2, [r4, #32]
	ldr	r3, .L136+8
	mla	r3, r2, r3, r1
	ldr	r1, .L136+12
	cmp	r3, r1
	addhi	r2, r2, #1
	strhi	r2, [r4, #32]
	bhi	.L65
	ldr	r0, [r4, #60]
	ldr	r3, .L136+16
	ldr	r1, [r4, #64]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #60]
.L65:
	ldr	r3, .L136+20
	ldr	r3, [r3]
	ldr	r1, .L136+24
	cmp	r3, #0
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldrh	r1, [r1, #48]
	bne	.L66
	tst	r1, #64
	beq	.L122
.L126:
	ldr	r0, .L136+28
	ldr	r1, .L136+32
.L67:
	ldr	ip, .L136+24
	ldrh	ip, [ip, #48]
	tst	ip, #128
	bne	.L69
	ldr	r5, [r4, #28]
	add	ip, r5, r3
	cmp	ip, #235
	ble	.L129
.L69:
	ldr	ip, .L136+24
	ldrh	ip, [ip, #48]
	tst	ip, #16
	beq	.L130
	ldr	lr, [r4, #36]
	ldr	ip, [r1]
	ldr	r1, [r0]
	cmp	lr, #6
	sub	r2, r2, ip
	sub	r3, r3, r1
	bne	.L83
	mov	r0, #0
	ldr	r1, [r4, #40]
	str	r0, [r4, #60]
	str	r1, [r4, #36]
	str	r2, [r4, #4]
	str	r3, [r4]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L66:
	ldr	r0, .L136+28
	tst	r1, #64
	ldr	r1, [r0]
	bne	.L80
	ldr	lr, [r4, #16]
	sub	lr, r3, lr
	ldr	r5, .L136+36
	add	ip, r2, lr, lsl #10
	lsl	ip, ip, #1
	ldrh	ip, [r5, ip]
	cmp	ip, #0
	lsl	r6, lr, #10
	beq	.L80
	add	r7, r4, #20
	ldm	r7, {r7, ip}
	add	ip, r2, ip
	sub	ip, ip, r7
	add	ip, ip, r6
	lsl	ip, ip, #1
	ldrh	ip, [r5, ip]
	cmp	ip, #0
	cmpne	r3, #0
	bgt	.L131
.L80:
	ldr	ip, .L136+24
	ldrh	ip, [ip, #48]
	tst	ip, #128
	bne	.L81
	ldr	r5, [r4, #28]
	add	ip, r5, r3
	cmp	ip, #235
	bgt	.L81
	add	lr, r2, ip, lsl #10
	ldr	r6, .L136+36
	lsl	lr, lr, #1
	ldrh	lr, [r6, lr]
	cmp	lr, #0
	lsl	ip, ip, #10
	beq	.L81
	add	r7, r4, #20
	ldm	r7, {r7, lr}
	add	lr, r2, lr
	sub	lr, lr, r7
	add	ip, lr, ip
	lsl	ip, ip, #1
	ldrh	ip, [r6, ip]
	cmp	ip, #0
	beq	.L81
	mov	ip, #2
	ldr	lr, [r4, #16]
	cmp	r1, #95
	add	r3, r3, lr
	str	r3, [r4, #8]
	str	ip, [r4, #36]
	bgt	.L81
	ldr	lr, [r4]
	add	ip, r5, r5, lsr #31
	add	ip, lr, ip, asr #1
	cmp	ip, #80
	addeq	r1, r1, #1
	streq	r1, [r0]
.L81:
	ldr	ip, .L136+24
	ldrh	ip, [ip, #48]
	ldr	r6, .L136+32
	tst	ip, #16
	ldr	r5, [r6]
	beq	.L132
.L82:
	mov	r0, #1
	str	r0, [r4, #36]
	sub	r2, r2, r5
	sub	r3, r3, r1
.L83:
	ldr	r1, [r4, #32]
	add	r1, r1, #1
	str	r1, [r4, #32]
	str	r2, [r4, #4]
	str	r3, [r4]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L132:
	ldr	ip, [r4, #24]
	add	ip, r2, ip
	cmp	ip, #1004
	bge	.L82
	ldr	r7, .L136+36
	add	lr, ip, r3, lsl #10
	lsl	lr, lr, #1
	ldrh	lr, [r7, lr]
	ldr	r8, .L136+40
	cmp	lr, r8
	bne	.L82
	ldr	r8, [r4, #28]
	ldr	r9, [r4, #16]
	add	r8, r3, r8
	sub	r8, r8, r9
	add	ip, ip, r8, lsl #10
	lsl	ip, ip, #1
	ldrh	ip, [r7, ip]
	cmp	ip, lr
	bne	.L82
	ldr	ip, .L136+44
	ldr	ip, [ip]
	add	r2, r2, #1
	cmp	ip, #30
	str	r2, [r4, #12]
	bgt	.L82
	ldr	ip, [r0, #4]
	ldr	lr, .L136+48
	cmp	ip, lr
	bgt	.L82
	ldr	lr, [r4, #4]
	cmp	lr, #120
	ble	.L82
	ldr	r7, .L136+52
	ldr	lr, [r7]
	add	ip, ip, #1
	add	r5, r5, #1
	add	lr, lr, #1
	str	ip, [r0, #4]
	str	r5, [r6]
	str	lr, [r7]
	b	.L82
.L122:
	ldr	ip, [r4, #16]
	sub	ip, r3, ip
	ldr	r0, .L136+36
	add	r1, r2, ip, lsl #10
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, #0
	lsl	lr, ip, #10
	beq	.L68
	ldr	r1, [r4, #24]
	ldr	r5, [r4, #20]
	add	r1, r2, r1
	sub	r1, r1, r5
	add	r1, r1, lr
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, #0
	beq	.L68
	cmp	r3, #0
	ble	.L126
	mov	r3, #2
	ldr	r0, .L136+28
	ldr	r1, [r0]
	cmp	r1, #0
	str	ip, [r4, #8]
	str	r3, [r4, #36]
	ble	.L87
	ldr	r3, [r4, #28]
	ldr	lr, [r4]
	add	r3, r3, r3, lsr #31
	add	r3, lr, r3, asr #1
	cmp	r3, #80
	beq	.L133
.L87:
	mov	r3, ip
	ldr	r1, .L136+32
	b	.L67
.L130:
	ldr	lr, [r4, #24]
	add	lr, r2, lr
.L85:
	cmp	lr, #1004
	bge	.L134
	ldr	r5, .L136+36
	add	ip, lr, r3, lsl #10
	lsl	ip, ip, #1
	ldrh	r6, [r5, ip]
	ldr	ip, .L136+40
	cmp	r6, ip
	beq	.L135
.L75:
	mov	ip, #0
	mov	r5, #73
	mov	lr, #64
	mov	r6, #28
	str	ip, [r0]
	str	ip, [r1]
	str	ip, [r0, #4]
	ldr	r1, .L136+44
	ldr	r0, .L136+52
	mov	r2, r5
	mov	r3, lr
	str	r5, [r4, #12]
	str	lr, [r4, #8]
	str	ip, [r0]
	str	r6, [r1]
	b	.L74
.L68:
	mov	ip, #0
	mov	r2, #73
	mov	r3, #64
	mov	r5, #28
	ldr	lr, .L136+52
	ldr	r0, .L136+28
	str	ip, [lr]
	ldr	r1, .L136+32
	ldr	lr, .L136+44
	str	r2, [r4, #4]
	str	r2, [r4, #12]
	str	r3, [r4]
	str	r3, [r4, #8]
	str	ip, [r0, #4]
	str	ip, [r0]
	str	ip, [r1]
	str	r5, [lr]
	b	.L67
.L129:
	add	lr, r2, ip, lsl #10
	ldr	r6, .L136+36
	lsl	lr, lr, #1
	ldrh	lr, [r6, lr]
	cmp	lr, #0
	lsl	ip, ip, #10
	beq	.L70
	add	r7, r4, #20
	ldm	r7, {r7, lr}
	add	lr, r2, lr
	sub	r7, lr, r7
	add	ip, r7, ip
	lsl	ip, ip, #1
	ldrh	ip, [r6, ip]
	cmp	ip, #0
	beq	.L70
	mov	ip, #2
	ldr	r6, [r4, #16]
	add	r3, r3, r6
	ldr	r6, [r0]
	cmp	r6, #95
	str	r3, [r4, #8]
	str	ip, [r4, #36]
	bgt	.L71
	ldr	r7, [r4]
	add	ip, r5, r5, lsr #31
	add	ip, r7, ip, asr #1
	cmp	ip, #80
	addeq	r6, r6, #1
	streq	r6, [r0]
.L71:
	ldr	ip, .L136+24
	ldrh	ip, [ip, #48]
	tst	ip, #16
	ldrne	ip, [r1]
	ldrne	r1, [r0]
	subne	r2, r2, ip
	subne	r3, r3, r1
	beq	.L85
	b	.L83
.L134:
	ldr	ip, [r1]
	ldr	r1, [r0]
	sub	r2, r2, ip
	sub	r3, r3, r1
.L74:
	mov	r1, #1
	str	r1, [r4, #36]
	b	.L83
.L70:
	mov	r5, #73
	mov	ip, #0
	mov	lr, #64
	mov	r6, #28
	mov	r2, r5
	str	r5, [r4, #4]
	str	r5, [r4, #12]
	ldr	r5, .L136+52
	str	ip, [r0, #4]
	str	ip, [r0]
	str	ip, [r1]
	str	ip, [r5]
	ldr	ip, .L136+44
	mov	r3, lr
	str	lr, [r4]
	str	lr, [r4, #8]
	str	r6, [ip]
	b	.L69
.L131:
	mov	r3, #2
	cmp	r1, #0
	str	lr, [r4, #8]
	str	r3, [r4, #36]
	ble	.L89
	ldr	r3, [r4, #28]
	ldr	ip, [r4]
	add	r3, r3, r3, lsr #31
	add	r3, ip, r3, asr #1
	cmp	r3, #80
	subeq	r1, r1, #1
	moveq	r3, lr
	streq	r1, [r0]
	beq	.L80
.L89:
	mov	r3, lr
	b	.L80
.L135:
	ldr	ip, [r4, #28]
	ldr	r7, [r4, #16]
	add	ip, r3, ip
	sub	ip, ip, r7
	add	lr, lr, ip, lsl #10
	lsl	lr, lr, #1
	ldrh	ip, [r5, lr]
	cmp	ip, r6
	bne	.L75
	ldr	ip, .L136+44
	ldr	ip, [ip]
	ldr	lr, [r0]
	cmp	ip, #30
	add	ip, r2, #1
	sub	r3, r3, lr
	str	ip, [r4, #12]
	ldr	lr, [r1]
	bgt	.L128
	ldr	r5, [r0, #4]
	ldr	r6, .L136+48
	cmp	r5, r6
	bgt	.L128
	ldr	r6, [r4, #4]
	cmp	r6, #120
	ble	.L128
	ldr	r6, .L136+52
	ldr	ip, [r6]
	add	r5, r5, #1
	str	r5, [r0, #4]
	add	ip, ip, #1
	add	r0, lr, #1
	str	r0, [r1]
	str	ip, [r6]
	sub	r2, r2, lr
	b	.L74
.L128:
	sub	r2, ip, lr
	b	.L74
.L133:
	sub	r1, r1, #1
	str	r1, [r0]
	mov	r3, ip
	ldr	r1, .L136+32
	b	.L67
.L137:
	.align	2
.L136:
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
	ldr	r4, .L181
	ldr	r3, [r4, #36]
	cmp	r3, #6
	movne	r2, #0
	strne	r3, [r4, #40]
	strne	r2, [r4, #36]
	ldr	r1, .L181+4
	ldr	r2, [r4, #32]
	ldr	r3, .L181+8
	mla	r3, r2, r3, r1
	ldr	r1, .L181+12
	cmp	r3, r1
	addhi	r2, r2, #1
	strhi	r2, [r4, #32]
	bhi	.L141
	ldr	r0, [r4, #60]
	ldr	r3, .L181+16
	ldr	r1, [r4, #64]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #60]
.L141:
	ldr	r3, .L181+20
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	bne	.L142
	cmp	r3, #4
	bgt	.L177
.L142:
	ldr	r1, .L181+20
	ldrh	r1, [r1, #48]
	tst	r1, #128
	bne	.L143
	ldr	r1, [r4]
	cmp	r1, #125
	ble	.L178
.L143:
	ldr	r1, .L181+20
	ldrh	r0, [r1, #48]
	tst	r0, #32
	bne	.L144
	cmp	r2, #0
	ble	.L144
	ldr	ip, [r4, #20]
	sub	ip, r2, ip
	ldr	r0, .L181+24
	add	lr, ip, r3, lsl #8
	lsl	lr, lr, #1
	ldrh	lr, [r0, lr]
	cmp	lr, #0
	lsl	lr, r3, #8
	beq	.L144
	ldr	r5, [r4, #28]
	ldr	r6, [r4, #16]
	add	r5, r3, r5
	sub	r5, r5, r6
	add	ip, ip, r5, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [r0, ip]
	cmp	ip, #0
	beq	.L144
	mov	ip, #1
	ldrh	r1, [r1, #48]
	sub	r2, r2, #1
	tst	r1, #16
	str	r2, [r4, #12]
	str	ip, [r4, #36]
	bne	.L146
	ldr	r1, [r4, #24]
	add	r1, r2, r1
	cmp	r1, #255
	bgt	.L146
	b	.L150
.L144:
	ldr	r1, .L181+20
	ldrh	r1, [r1, #48]
	tst	r1, #16
	beq	.L179
.L147:
	ldr	r1, [r4, #36]
	cmp	r1, #6
	beq	.L180
.L146:
	ldr	r1, [r4, #32]
	add	r1, r1, #1
	str	r1, [r4, #32]
.L148:
	ldr	r1, .L181+28
	ldrh	r1, [r1]
	tst	r1, #1
	beq	.L149
	ldr	r1, .L181+32
	ldrh	r1, [r1]
	tst	r1, #1
	moveq	r0, #1
	ldreq	r1, .L181+36
	streq	r0, [r1]
.L149:
	str	r2, [r4, #4]
	str	r3, [r4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L179:
	ldr	r1, [r4, #24]
	add	r1, r2, r1
	cmp	r1, #255
	bgt	.L147
	ldr	r0, .L181+24
	lsl	lr, r3, #8
.L150:
	add	lr, lr, r1
	lsl	lr, lr, #1
	ldrh	ip, [r0, lr]
	ldr	lr, .L181+40
	cmp	ip, lr
	bne	.L147
	ldr	lr, [r4, #28]
	ldr	r5, [r4, #16]
	add	lr, r3, lr
	sub	lr, lr, r5
	add	r1, r1, lr, lsl #8
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, ip
	bne	.L147
	mov	r1, #1
	add	r2, r2, r1
	str	r2, [r4, #12]
	str	r1, [r4, #36]
	b	.L146
.L178:
	ldr	r1, [r4, #28]
	add	r1, r3, r1
	cmp	r1, #255
	bgt	.L143
	add	ip, r2, r1, lsl #8
	ldr	r0, .L181+24
	lsl	ip, ip, #1
	ldrh	ip, [r0, ip]
	cmp	ip, #0
	lsl	r1, r1, #8
	beq	.L143
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
	b	.L143
.L177:
	ldr	r1, [r4, #16]
	sub	r1, r3, r1
	ldr	r0, .L181+24
	add	ip, r2, r1, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [r0, ip]
	cmp	ip, #0
	lsl	lr, r1, #8
	beq	.L142
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
	b	.L142
.L180:
	mov	r0, #0
	ldr	r1, [r4, #40]
	str	r0, [r4, #60]
	str	r1, [r4, #36]
	b	.L148
.L182:
	.align	2
.L181:
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
	ldr	r4, .L195
	ldr	r5, .L195+4
	add	r7, r4, #1392
	mov	fp, #5
	ldr	r6, .L195+8
	ldr	r8, .L195+12
	ldr	r10, .L195+16
	sub	sp, sp, #20
	add	r7, r7, #8
	sub	r9, r5, #8
	b	.L188
.L185:
	add	r4, r4, #40
	cmp	r4, r7
	add	r5, r5, #8
	beq	.L194
.L188:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L185
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
	beq	.L185
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
	bne	.L188
.L194:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L196:
	.align	2
.L195:
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
	ldr	r4, .L208
	ldr	r5, .L208+4
	ldr	r7, .L208+8
	ldr	r8, .L208+12
	sub	sp, sp, #16
	add	r6, r4, #1360
	b	.L201
.L199:
	add	r4, r4, #40
	cmp	r4, r6
	beq	.L207
.L201:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L199
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
	bne	.L201
.L207:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L209:
	.align	2
.L208:
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
	ldr	r4, .L230
	ldr	r5, .L230+4
	ldr	r8, .L230+8
	ldr	r10, .L230+12
	ldr	r7, .L230+16
	ldr	fp, .L230+20
	sub	sp, sp, #20
	add	r9, r4, #120
.L217:
	ldrh	r3, [r8]
	tst	r3, #1
	beq	.L211
	ldrh	r6, [r10]
	ands	r6, r6, #1
	beq	.L227
.L211:
	tst	r3, #2
	beq	.L215
	ldrh	r2, [r10]
	ands	r6, r2, #2
	beq	.L228
.L215:
	add	r4, r4, #40
	cmp	r4, r9
	add	r5, r5, #68
	bne	.L217
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
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
	ldr	ip, .L230+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L226
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bgt	.L229
.L226:
	ldrh	r3, [r8]
	b	.L211
.L228:
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
	ldr	ip, .L230+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L215
	ldr	r3, [r7, #48]
	cmp	r3, #0
	ble	.L215
	mov	r2, r6
	ldr	r1, .L230+28
	ldr	r3, .L230+32
	ldr	r0, .L230+36
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
	b	.L215
.L229:
	mov	r2, r6
	ldr	r1, .L230+28
	ldr	r3, .L230+32
	ldr	r0, .L230+36
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
	b	.L211
.L231:
	.align	2
.L230:
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
	ldr	r2, .L234
	ldr	r3, [r2, #4]
	str	lr, [sp, #-4]!
	ldr	r0, [r2, #36]
	ldr	lr, [r2, #60]
	ldrb	ip, [r2]	@ zero_extendqisi2
	ldr	r1, .L234+4
	lsl	r3, r3, #23
	add	r2, r0, lr, lsl #5
	lsr	r3, r3, #23
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L235:
	.align	2
.L234:
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
	ldr	r3, .L252
	ldr	r2, .L252+4
	add	r0, r3, #1392
	add	r0, r0, #8
.L244:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L250
	str	lr, [sp, #-4]!
.L245:
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	ldr	r1, [r3, #32]
	add	r3, r3, #40
	cmp	r3, r0
	strh	lr, [r2, #8]	@ movhi
	strh	ip, [r2, #10]	@ movhi
	strh	r1, [r2, #12]	@ movhi
	add	r2, r2, #8
	beq	.L251
.L238:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	bne	.L245
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L238
.L251:
	ldr	lr, [sp], #4
	bx	lr
.L250:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L244
	bx	lr
.L253:
	.align	2
.L252:
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
	ldr	r3, .L255
	ldr	r0, .L255+4
	add	r2, r3, #800
	add	r3, r3, #804
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #2]	@ movhi
	strh	r1, [r3]	@ movhi
	bx	lr
.L256:
	.align	2
.L255:
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
	ldr	r3, .L265
	ldr	r2, .L265+4
	add	r0, r3, #1392
	add	r0, r0, #8
.L259:
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
	bne	.L259
	ldr	lr, [sp], #4
	bx	lr
.L266:
	.align	2
.L265:
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
	ldr	r3, .L275
	ldr	r1, .L275+4
	add	ip, r3, #1360
.L269:
	ldr	r2, [r3, #4]
	ldr	r0, [r3, #36]
	add	r2, r2, #1
	cmp	r0, #0
	str	r2, [r3, #4]
	beq	.L268
	ldr	r0, [r3, #32]
	ldr	lr, [r3]
	add	r0, r0, #64
	strh	r2, [r1, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	strh	lr, [r1]	@ movhi
.L268:
	add	r3, r3, #40
	cmp	r3, ip
	add	r1, r1, #8
	bne	.L269
	ldr	lr, [sp], #4
	bx	lr
.L276:
	.align	2
.L275:
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
	ldr	r3, .L293
	ldr	r2, .L293+4
	add	r0, r3, #1360
.L285:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L291
	str	lr, [sp, #-4]!
.L286:
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
	beq	.L292
.L279:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	bne	.L286
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L279
.L292:
	ldr	lr, [sp], #4
	bx	lr
.L291:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L285
	bx	lr
.L294:
	.align	2
.L293:
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
	ldr	r3, .L303
	ldr	r1, .L303+4
	add	ip, r3, #1360
.L297:
	ldr	r2, [r3, #4]
	ldr	r0, [r3, #36]
	add	r2, r2, #1
	cmp	r0, #0
	str	r2, [r3, #4]
	beq	.L296
	ldr	r0, [r3, #32]
	ldr	lr, [r3]
	add	r0, r0, #128
	strh	r2, [r1, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	strh	lr, [r1]	@ movhi
.L296:
	add	r3, r3, #40
	cmp	r3, ip
	add	r1, r1, #8
	bne	.L297
	ldr	lr, [sp], #4
	bx	lr
.L304:
	.align	2
.L303:
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
	ldr	r3, .L309
	ldr	r2, .L309+4
	add	ip, r3, #1360
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
	mov	r0, #165
	mov	lr, #136
	mov	ip, #146
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
	ldr	r0, .L366
	ldr	r3, [r0]
	cmp	r3, #28
	moveq	r2, #67108864
	moveq	r1, #23552
	push	{r4, r5, r6, lr}
	strheq	r1, [r2, #10]	@ movhi
	ldr	r2, .L366+4
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L363
	ldr	r5, .L366+8
.L336:
	ldr	r6, .L366+12
	ldr	r2, [r6, #4]
	cmp	r2, #256
	ble	.L337
	mov	ip, #67108864
	add	r3, r3, #1
	lsl	r1, r3, #24
	orr	r1, r1, #1073741824
	sub	r2, r2, #256
	lsr	r1, r1, #16
	str	r3, [r0]
	str	r2, [r6, #4]
	strh	r1, [ip, #10]	@ movhi
.L337:
	cmp	r3, #31
	beq	.L338
	cmp	r3, #30
	beq	.L365
.L339:
	ldr	r2, .L366+16
	ldr	r3, [r2]
	ldr	r4, .L366+20
	cmp	r3, #512
	subgt	r3, r3, #512
	strgt	r3, [r2]
	mov	r0, #0
	mov	r3, r4
	add	r1, r4, #204
.L343:
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
	bne	.L343
	bl	updatePanda
	ldr	r3, [r5, #4]
	ldr	ip, [r5, #60]
	ldr	r1, [r5, #36]
	ldr	r2, .L366+24
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
	beq	.L344
	ldr	r3, [r4, #48]
	cmp	r3, #3
	beq	.L344
.L345:
	mov	r3, #67108864
	ldrh	r2, [r6, #4]
	ldrh	r1, [r6]
	strh	r2, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	ldr	r2, .L366+28
	mov	lr, pc
	bx	r2
	ldr	r4, .L366+32
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L366+24
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L344:
	ldr	r3, [r4, #112]
	cmp	r3, #5
	beq	.L346
	ldr	r3, [r4, #116]
	cmp	r3, #3
	bne	.L345
.L346:
	ldr	r3, [r4, #180]
	cmp	r3, #5
	beq	.L347
	ldr	r3, [r4, #184]
	cmp	r3, #3
	bne	.L345
.L347:
	mov	r2, #1
	ldr	r3, .L366+36
	str	r2, [r3]
	b	.L345
.L363:
	mov	lr, #160
	ldr	r5, .L366+8
	ldr	r2, [r5, #4]
	ldr	ip, [r5]
	ldr	r1, .L366+40
	sub	r2, r2, #4
	orr	r2, r2, #16384
	sub	ip, ip, #4
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	lr, [r1, #4]	@ movhi
	b	.L336
.L365:
	ldr	r3, [r6, #4]
	cmp	r3, #256
	ble	.L339
.L338:
	bl	drawFriendlyPandas
	bl	drawBaskets
	bl	drawFoodDelivered
	b	.L339
.L367:
	.align	2
.L366:
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
	ldr	r3, .L369
	str	r2, [r3, #60]
	str	r2, [r3, #128]
	str	r2, [r3, #196]
	bx	lr
.L370:
	.align	2
.L369:
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
	ldr	r5, .L413
	ldr	r3, [r5]
	sub	sp, sp, #20
	add	r3, r3, #1
	str	r3, [r5]
	bl	updatePanda2
	ldr	r3, .L413+4
	add	r2, r3, #8
	ldr	r0, [r3, #28]
	ldr	r1, [r3, #24]
	ldm	r2, {r2, r3}
	ldr	r7, .L413+8
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r7, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r7, #8]
	ldr	r4, .L413+12
	ldr	r0, [r7, #12]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	movne	r1, #1
	mov	r10, #75
	mov	r8, #96
	mov	r0, #165
	mov	lr, #146
	mov	r9, #136
	ldrne	r4, .L413+16
	ldrne	r2, .L413+20
	ldrne	r3, [r4, #48]
	ldrh	ip, [r7]
	strne	r1, [r2]
	ldr	r6, .L413+24
	addne	r3, r3, r1
	ldrh	r1, [r7, #4]
	strne	r3, [r4, #48]
	and	r3, ip, #255
	ldr	fp, [r7, #60]
	lsl	r2, r1, #23
	strh	r3, [r6]	@ movhi
	ldr	r3, [r7, #36]
	lsr	r2, r2, #23
	strh	r2, [r6, #2]	@ movhi
	add	r3, r3, fp, lsl #5
	ldr	r2, .L413+28
	strh	r3, [r6, #4]	@ movhi
	add	r3, r6, #800
	strh	r10, [r3]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, .L413+32
	ldr	r2, [r3]
	add	r3, r6, #804
	strh	r8, [r3]	@ movhi
	ldreq	r4, .L413+16
	ldr	r3, [r7, #44]
	cmp	r2, #0
	ldr	r2, [r7, #48]
	add	r8, r6, #320
	add	r7, r6, #328
	strh	r0, [r8, #2]	@ movhi
	strh	r9, [r8]	@ movhi
	add	r2, r2, #8
	strh	r0, [r7, #2]	@ movhi
	strh	lr, [r7]	@ movhi
	add	r3, r3, #8
	add	lr, r6, #324
	add	r0, r6, #332
	strh	r2, [lr]	@ movhi
	strh	r3, [r0]	@ movhi
	bne	.L407
	ldr	r3, [r5]
	cmp	r3, #32
	ble	.L408
	cmp	r3, #67
	beq	.L409
	cmp	r3, #100
	beq	.L410
.L382:
	ldr	r3, .L413+36
	ldr	r2, .L413+24
	add	r0, r3, #1392
	add	r0, r0, #8
.L386:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L385
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	ldr	r1, [r3, #32]
	strh	lr, [r2, #8]	@ movhi
	strh	ip, [r2, #10]	@ movhi
	strh	r1, [r2, #12]	@ movhi
.L385:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L386
	bl	checkFoodCollected
	bl	checkEnemyCollision
	ldr	r3, [r5]
.L378:
	cmp	r3, #133
	beq	.L411
.L387:
	ldr	r3, .L413+40
	mov	lr, pc
	bx	r3
	ldr	r5, .L413+44
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L413+24
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
.L408:
	ldr	r3, .L413+48
	add	r2, r6, #360
	add	r0, r3, #1360
.L381:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L380
	ldr	r1, [r3, #32]
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	add	r1, r1, #96
	strh	r1, [r2, #4]	@ movhi
	strh	lr, [r2]	@ movhi
	strh	ip, [r2, #2]	@ movhi
.L380:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L381
	b	.L382
.L411:
	mov	r2, #0
	ldr	r3, .L413+48
	str	r2, [r5]
	add	r1, r3, #1360
.L388:
	ldr	r2, [r3, #4]
	sub	r2, r2, #2
	str	r2, [r3, #4]
	add	r3, r3, #40
	cmp	r3, r1
	bne	.L388
	b	.L387
.L407:
	mov	r0, #160
	sub	r3, r1, #4
	add	r2, r6, #808
	orr	r3, r3, #16384
	strh	r3, [r2, #2]	@ movhi
	sub	ip, ip, #4
	add	r3, r6, #812
	strh	ip, [r2]	@ movhi
	strh	r0, [r3]	@ movhi
	bl	checkFoodCollected
	ldr	r3, [r5]
	cmp	r3, #32
	bgt	.L374
	ldr	r3, .L413+48
	add	r2, r6, #360
	add	r0, r3, #1360
.L376:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L375
	ldr	r1, [r3, #32]
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	add	r1, r1, #96
	strh	r1, [r2, #4]	@ movhi
	strh	lr, [r2]	@ movhi
	strh	ip, [r2, #2]	@ movhi
.L375:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L376
	b	.L387
.L374:
	cmp	r3, #66
	beq	.L412
	cmp	r3, #100
	bne	.L378
	bl	drawEnemiesRight
	ldr	r3, [r5]
	b	.L378
.L409:
	bl	drawEnemies
	b	.L382
.L410:
	bl	drawEnemiesRight
	b	.L382
.L412:
	bl	drawEnemies
	ldr	r3, [r5]
	b	.L378
.L414:
	.align	2
.L413:
	.word	count
	.word	door
	.word	panda
	.word	collision
	.word	pandas
	.word	goToMaze
	.word	shadowOAM
	.word	16609
	.word	hasShield
	.word	food
	.word	waitForVBlank
	.word	DMANow
	.word	enemies
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
