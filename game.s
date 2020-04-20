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
	mov	r3, #0
	mov	lr, #1
	mov	r0, #8
	mov	r1, #2
	mov	r9, #214
	mov	r8, #18
	mvn	r7, #484
	mov	r6, #181
	mov	r5, #20
	mov	r4, #3
	ldr	r2, .L24
	b	.L15
.L6:
	sub	ip, r3, #4
	cmp	ip, #4
	bls	.L19
	sub	ip, r3, #9
	cmp	ip, #4
	bls	.L20
.L7:
	sub	ip, r3, #14
	cmp	ip, #5
	bls	.L21
.L9:
	sub	ip, r3, #20
	cmp	ip, #6
	bls	.L22
.L10:
	sub	ip, r3, #27
	cmp	ip, #7
	mlals	ip, r8, r3, r7
	strls	r9, [r2, #4]
	strls	ip, [r2]
.L11:
	tst	r3, #1
	moveq	ip, #4
	movne	ip, #3
.L13:
	add	r3, r3, #1
	cmp	r3, #35
	str	ip, [r2, #32]
	add	r2, r2, #40
	beq	.L23
.L15:
	cmp	r3, #3
	str	lr, [r2, #36]
	str	r0, [r2, #24]
	str	r0, [r2, #28]
	str	r1, [r2, #20]
	str	r1, [r2, #16]
	bgt	.L6
	mov	r10, #31
	rsb	ip, r3, r3, lsl #4
	lsl	ip, ip, #1
	add	ip, ip, #15
	str	ip, [r2]
	str	r10, [r2, #4]
	b	.L7
.L23:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L19:
	mov	ip, #30
	mov	r10, #64
	mul	ip, r3, ip
	sub	ip, ip, #120
	str	ip, [r2]
	str	r10, [r2, #4]
	b	.L9
.L22:
	mul	ip, r5, r3
	sub	ip, ip, #388
	sub	ip, ip, #2
	tst	r3, #1
	str	ip, [r2]
	str	r6, [r2, #4]
	moveq	ip, #4
	beq	.L13
	str	r4, [r2, #32]
	add	r3, r3, #1
	add	r2, r2, #40
	b	.L15
.L21:
	mov	ip, #25
	mov	r10, #141
	mul	ip, r3, ip
	sub	ip, ip, #348
	sub	ip, ip, #2
	str	ip, [r2]
	str	r10, [r2, #4]
	b	.L11
.L20:
	mov	ip, #25
	mov	r10, #101
	mul	ip, r3, ip
	sub	ip, ip, #213
	str	ip, [r2]
	str	r10, [r2, #4]
	b	.L10
.L25:
	.align	2
.L24:
	.word	food
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
	mov	r9, #212
	mov	r8, #18
	mov	r7, #179
	mov	r6, #20
	mov	r5, #139
	ldr	r2, .L42
	b	.L35
.L27:
	sub	ip, r3, #5
	cmp	ip, #3
	bls	.L37
	sub	ip, r3, #9
	cmp	ip, #5
	bls	.L38
.L28:
	sub	ip, r3, #15
	cmp	ip, #4
	bls	.L39
.L30:
	sub	ip, r3, #20
	cmp	ip, #6
	bls	.L40
.L31:
	sub	ip, r3, #27
	cmp	ip, #6
	mulls	ip, r8, r3
	subls	ip, ip, #476
	strls	r9, [r2, #4]
	strls	ip, [r2]
.L32:
	add	r3, r3, #1
	cmp	r3, #34
	add	r2, r2, #40
	beq	.L41
.L35:
	cmp	r3, #4
	str	r4, [r2, #36]
	str	r0, [r2, #24]
	str	r0, [r2, #28]
	str	r1, [r2, #20]
	str	r1, [r2, #16]
	str	lr, [r2, #32]
	bgt	.L27
	mov	r10, #29
	rsb	ip, r3, r3, lsl #4
	lsl	ip, ip, #1
	str	ip, [r2]
	str	r10, [r2, #4]
	b	.L28
.L41:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L37:
	mov	ip, #30
	mov	r10, #62
	mul	ip, r3, ip
	sub	ip, ip, #134
	str	ip, [r2]
	str	r10, [r2, #4]
	b	.L30
.L40:
	mul	ip, r6, r3
	sub	ip, ip, #400
	str	r7, [r2, #4]
	add	r3, r3, #1
	str	ip, [r2], #40
	b	.L35
.L39:
	mov	ip, #25
	mul	ip, r3, ip
	sub	ip, ip, #360
	sub	ip, ip, #2
	str	r5, [r2, #4]
	str	ip, [r2]
	b	.L32
.L38:
	mov	ip, #25
	mov	r10, #99
	mul	ip, r3, ip
	sub	ip, ip, #225
	str	ip, [r2]
	str	r10, [r2, #4]
	b	.L31
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, #0
	mov	ip, #3
	mov	r5, #8
	mov	r0, #28
	mov	r6, #1
	ldr	r3, .L48
	ldr	r1, .L48+4
	ldr	r2, .L48+8
	str	r4, [r1]
	mov	r7, #16
	ldr	r1, .L48+12
	str	r4, [r3]
	mov	r8, #225
	ldr	r3, .L48+16
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
	ldr	r3, .L48+20
	str	r6, [r3, #36]
	str	r4, [r3, #8]
	str	r8, [r3, #12]
	str	r7, [r3, #24]
	str	r7, [r3, #28]
	ldr	r3, .L48+24
.L45:
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
	bne	.L45
	mov	r2, #16
	mov	ip, #1
	mov	r0, #200
	mov	r1, #4
	mov	r5, #47
	mov	r4, #67
	mov	lr, #87
	ldr	r3, .L48+28
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
.L49:
	.align	2
.L48:
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
	ldr	r3, .L52
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
.L53:
	.align	2
.L52:
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
	ldr	r3, .L58
.L55:
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
	bne	.L55
	pop	{r4, lr}
	bx	lr
.L59:
	.align	2
.L58:
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
	ldr	r3, .L61
	str	ip, [r3, #36]
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	bx	lr
.L62:
	.align	2
.L61:
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L149
	ldr	r3, [r4, #36]
	cmp	r3, #6
	movne	r2, #0
	strne	r3, [r4, #40]
	strne	r2, [r4, #36]
	ldr	r1, .L149+4
	ldr	r2, [r4, #32]
	ldr	r3, .L149+8
	mla	r3, r2, r3, r1
	ldr	r1, .L149+12
	cmp	r3, r1
	addhi	r2, r2, #1
	strhi	r2, [r4, #32]
	bhi	.L66
	ldr	r0, [r4, #60]
	ldr	r3, .L149+16
	ldr	r1, [r4, #64]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #60]
.L66:
	ldr	r3, .L149+20
	ldr	r3, [r3]
	ldr	r1, .L149+24
	cmp	r3, #0
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldrh	r1, [r1, #48]
	bne	.L67
	tst	r1, #64
	beq	.L127
.L134:
	ldr	r1, .L149+28
	ldr	r0, .L149+32
.L68:
	ldr	ip, .L149+24
	ldrh	ip, [ip, #48]
	tst	ip, #128
	bne	.L70
	ldr	r5, [r4, #28]
	add	ip, r5, r3
	cmp	ip, #235
	ble	.L144
.L70:
	ldr	ip, .L149+24
	ldrh	ip, [ip, #48]
	tst	ip, #16
	bne	.L73
	ldr	ip, [r4, #24]
	add	ip, r2, ip
.L87:
	cmp	ip, #748
	bge	.L73
	add	lr, r3, r3, lsl #1
	ldr	r5, .L149+36
	add	lr, ip, lr, lsl #8
	lsl	lr, lr, #1
	ldrh	r6, [r5, lr]
	ldr	lr, .L149+40
	cmp	r6, lr
	beq	.L145
.L76:
	mov	ip, #0
	mov	lr, #28
	mov	r2, #73
	mov	r3, #64
	str	ip, [r1]
	str	ip, [r1, #4]
	ldr	r1, .L149+44
	str	lr, [r1]
	ldr	r1, [r4, #36]
	ldr	r5, .L149+48
	cmp	r1, #6
	str	r2, [r4, #12]
	str	r3, [r4, #8]
	str	ip, [r0]
	str	ip, [r5]
	bne	.L85
.L147:
	mov	r0, #0
	ldr	r1, [r4, #40]
	str	r0, [r4, #60]
	str	r1, [r4, #36]
	str	r2, [r4, #4]
	str	r3, [r4]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L67:
	tst	r1, #64
	beq	.L129
.L136:
	ldr	r1, .L149+28
.L78:
	ldr	r0, .L149+24
	ldrh	r0, [r0, #48]
	tst	r0, #128
	bne	.L79
	ldr	lr, [r4, #28]
	add	r0, lr, r3
	cmp	r0, #235
	ble	.L146
.L79:
	ldr	r0, .L149+24
	ldrh	ip, [r0, #48]
	ldr	r0, .L149+32
	tst	ip, #16
	ldr	lr, [r0]
	bne	.L137
	ldr	ip, [r4, #24]
	add	ip, r2, ip
.L88:
	cmp	ip, #748
	blt	.L82
.L137:
	ldr	r1, [r1]
	sub	r2, r2, lr
	sub	r3, r3, r1
.L75:
	ldr	r1, [r4, #36]
	cmp	r1, #6
	beq	.L147
.L85:
	ldr	r1, [r4, #32]
	add	r1, r1, #1
	str	r1, [r4, #32]
	str	r2, [r4, #4]
	str	r3, [r4]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L129:
	ldr	r0, [r4, #16]
	sub	r0, r3, r0
	add	r1, r0, r0, lsl #1
	ldr	lr, .L149+36
	add	ip, r2, r1, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [lr, ip]
	cmp	ip, #0
	lsl	ip, r1, #8
	beq	.L136
	ldr	r1, [r4, #24]
	ldr	r5, [r4, #20]
	add	r1, r2, r1
	sub	r1, r1, r5
	add	r1, r1, ip
	lsl	r1, r1, #1
	ldrh	r1, [lr, r1]
	cmp	r1, #0
	cmpne	r3, #5
	ble	.L136
	mov	r3, #2
	ldr	r1, .L149+28
	ldr	ip, [r1]
	cmp	ip, #0
	str	r0, [r4, #8]
	str	r3, [r4, #36]
	ble	.L92
	ldr	r3, [r4, #28]
	ldr	lr, [r4]
	add	r3, r3, r3, lsr #31
	add	r3, lr, r3, asr #1
	cmp	r3, #80
	subeq	ip, ip, #1
	moveq	r3, r0
	streq	ip, [r1]
	beq	.L78
.L92:
	mov	r3, r0
	b	.L78
.L127:
	ldr	r0, [r4, #16]
	sub	r0, r3, r0
	add	r1, r0, r0, lsl #1
	ldr	lr, .L149+36
	add	ip, r2, r1, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [lr, ip]
	cmp	ip, #0
	lsl	ip, r1, #8
	beq	.L69
	ldr	r1, [r4, #24]
	ldr	r5, [r4, #20]
	add	r1, r2, r1
	sub	r1, r1, r5
	add	r1, r1, ip
	lsl	r1, r1, #1
	ldrh	r1, [lr, r1]
	cmp	r1, #0
	beq	.L69
	cmp	r3, #0
	ble	.L134
	mov	r3, #2
	ldr	r1, .L149+28
	ldr	ip, [r1]
	cmp	ip, #0
	str	r0, [r4, #8]
	str	r3, [r4, #36]
	ble	.L90
	ldr	r3, [r4, #28]
	ldr	lr, [r4]
	add	r3, r3, r3, lsr #31
	add	r3, lr, r3, asr #1
	cmp	r3, #80
	beq	.L148
.L90:
	mov	r3, r0
	ldr	r0, .L149+32
	b	.L68
.L73:
	ldr	r0, [r0]
	ldr	r1, [r1]
	sub	r2, r2, r0
	sub	r3, r3, r1
	b	.L75
.L69:
	mov	ip, #0
	mov	r2, #73
	mov	r3, #64
	mov	r5, #28
	ldr	lr, .L149+48
	ldr	r1, .L149+28
	str	ip, [lr]
	ldr	r0, .L149+32
	ldr	lr, .L149+44
	str	r2, [r4, #4]
	str	r2, [r4, #12]
	str	r3, [r4]
	str	r3, [r4, #8]
	str	ip, [r1, #4]
	str	ip, [r1]
	str	ip, [r0]
	str	r5, [lr]
	b	.L68
.L144:
	add	ip, ip, ip, lsl #1
	ldr	r6, .L149+36
	add	lr, r2, ip, lsl #8
	lsl	lr, lr, #1
	ldrh	lr, [r6, lr]
	cmp	lr, #0
	lsl	lr, ip, #8
	beq	.L71
	add	r7, r4, #20
	ldm	r7, {r7, ip}
	add	ip, r2, ip
	sub	r7, ip, r7
	add	lr, r7, lr
	lsl	lr, lr, #1
	ldrh	lr, [r6, lr]
	cmp	lr, #0
	beq	.L71
	mov	r6, #2
	ldr	lr, [r4, #16]
	add	r3, r3, lr
	ldr	lr, [r1]
	cmp	lr, #95
	str	r3, [r4, #8]
	str	r6, [r4, #36]
	bgt	.L72
	ldr	r6, [r4]
	add	r5, r5, r5, lsr #31
	add	r5, r6, r5, asr #1
	cmp	r5, #80
	addeq	lr, lr, #1
	streq	lr, [r1]
.L72:
	ldr	lr, .L149+24
	ldrh	lr, [lr, #48]
	tst	lr, #16
	beq	.L87
	ldr	r0, [r0]
	ldr	r1, [r1]
	sub	r2, r2, r0
	sub	r3, r3, r1
	b	.L85
.L146:
	add	r0, r0, r0, lsl #1
	add	ip, r2, r0, lsl #8
	ldr	r6, .L149+36
	lsl	ip, ip, #1
	ldrh	ip, [r6, ip]
	cmp	ip, #0
	lsl	r0, r0, #8
	beq	.L79
	add	r5, r4, #20
	ldm	r5, {r5, ip}
	add	ip, r2, ip
	sub	r5, ip, r5
	add	r0, r5, r0
	lsl	r0, r0, #1
	ldrh	r0, [r6, r0]
	cmp	r0, #0
	beq	.L79
	mov	r5, #2
	ldr	r0, [r4, #16]
	add	r3, r3, r0
	ldr	r0, [r1]
	cmp	r0, #95
	str	r3, [r4, #8]
	str	r5, [r4, #36]
	bgt	.L80
	ldr	r5, [r4]
	add	lr, lr, lr, lsr #31
	add	lr, r5, lr, asr #1
	cmp	lr, #80
	addeq	r0, r0, #1
	streq	r0, [r1]
.L80:
	ldr	r0, .L149+24
	ldrh	lr, [r0, #48]
	ldr	r0, .L149+32
	tst	lr, #16
	ldr	lr, [r0]
	beq	.L88
	b	.L138
.L82:
	add	r5, r3, r3, lsl #1
	ldr	r6, .L149+36
	add	r5, ip, r5, lsl #8
	lsl	r5, r5, #1
	ldrh	r7, [r6, r5]
	ldr	r5, .L149+40
	cmp	r7, r5
	bne	.L137
	ldr	r5, [r4, #28]
	ldr	r8, [r4, #16]
	add	r5, r3, r5
	sub	r5, r5, r8
	add	r5, r5, r5, lsl #1
	add	ip, ip, r5, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [r6, ip]
	cmp	ip, r7
	bne	.L137
	mov	ip, #1
	ldr	r5, .L149+44
	ldr	r5, [r5]
	add	r2, r2, ip
	cmp	r5, #29
	str	r2, [r4, #12]
	str	ip, [r4, #36]
	bgt	.L138
.L143:
	ldr	ip, [r1, #4]
	ldr	r5, .L149+52
	cmp	ip, r5
	bgt	.L138
	ldr	r5, [r4, #4]
	cmp	r5, #120
	ble	.L138
	ldr	r6, .L149+48
	ldr	r5, [r6]
	add	ip, ip, #1
	add	lr, lr, #1
	add	r5, r5, #1
	str	ip, [r1, #4]
	str	lr, [r0]
	str	r5, [r6]
.L138:
	ldr	r1, [r1]
	sub	r2, r2, lr
	sub	r3, r3, r1
	b	.L85
.L71:
	mov	r5, #73
	mov	ip, #0
	mov	lr, #64
	mov	r6, #28
	mov	r2, r5
	str	r5, [r4, #4]
	str	r5, [r4, #12]
	ldr	r5, .L149+48
	str	ip, [r1, #4]
	str	ip, [r1]
	str	ip, [r0]
	str	ip, [r5]
	ldr	ip, .L149+44
	mov	r3, lr
	str	lr, [r4]
	str	lr, [r4, #8]
	str	r6, [ip]
	b	.L70
.L145:
	ldr	lr, [r4, #28]
	ldr	r7, [r4, #16]
	add	lr, r3, lr
	sub	lr, lr, r7
	add	lr, lr, lr, lsl #1
	add	ip, ip, lr, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [r5, ip]
	cmp	ip, r6
	bne	.L76
	mov	ip, #1
	ldr	lr, .L149+44
	ldr	lr, [lr]
	add	r2, r2, ip
	cmp	lr, #29
	str	r2, [r4, #12]
	str	ip, [r4, #36]
	ldr	lr, [r0]
	bgt	.L138
	b	.L143
.L148:
	sub	ip, ip, #1
	mov	r3, r0
	str	ip, [r1]
	ldr	r0, .L149+32
	b	.L68
.L150:
	.align	2
.L149:
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
	.word	totalHOff
	.word	526
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
	ldr	r4, .L194
	ldr	r3, [r4, #36]
	cmp	r3, #6
	movne	r2, #0
	strne	r3, [r4, #40]
	strne	r2, [r4, #36]
	ldr	r1, .L194+4
	ldr	r2, [r4, #32]
	ldr	r3, .L194+8
	mla	r3, r2, r3, r1
	ldr	r1, .L194+12
	cmp	r3, r1
	addhi	r2, r2, #1
	strhi	r2, [r4, #32]
	bhi	.L154
	ldr	r0, [r4, #60]
	ldr	r3, .L194+16
	ldr	r1, [r4, #64]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #60]
.L154:
	ldr	r3, .L194+20
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	bne	.L155
	cmp	r3, #0
	ble	.L155
	ldr	ip, [r4, #16]
	sub	ip, r3, ip
	ldr	r0, .L194+24
	add	r1, r2, ip, lsl #8
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, #0
	lsl	lr, ip, #8
	bne	.L190
.L155:
	ldr	r1, .L194+20
	ldrh	r1, [r1, #48]
	tst	r1, #128
	bne	.L156
	ldr	r1, [r4]
	cmp	r1, #125
	ble	.L191
.L156:
	ldr	r1, .L194+20
	ldrh	r0, [r1, #48]
	tst	r0, #32
	bne	.L157
	cmp	r2, #4
	ble	.L157
	ldr	lr, [r4, #20]
	sub	lr, r2, lr
	ldr	r0, .L194+24
	add	ip, lr, r3, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [r0, ip]
	cmp	ip, #0
	lsl	ip, r3, #8
	beq	.L157
	ldr	r5, [r4, #28]
	ldr	r6, [r4, #16]
	add	r5, r3, r5
	sub	r5, r5, r6
	add	lr, lr, r5, lsl #8
	lsl	lr, lr, #1
	ldrh	lr, [r0, lr]
	cmp	lr, #0
	beq	.L157
	mov	lr, #1
	ldrh	r1, [r1, #48]
	sub	r2, r2, #1
	tst	r1, #16
	str	r2, [r4, #12]
	str	lr, [r4, #36]
	bne	.L159
	ldr	r1, [r4, #24]
	add	r1, r2, r1
	cmp	r1, #255
	ble	.L163
	b	.L159
.L157:
	ldr	r1, .L194+20
	ldrh	r1, [r1, #48]
	tst	r1, #16
	beq	.L192
.L160:
	ldr	r1, [r4, #36]
	cmp	r1, #6
	beq	.L193
.L159:
	ldr	r1, [r4, #32]
	add	r1, r1, #1
	str	r1, [r4, #32]
.L161:
	ldr	r1, .L194+28
	ldrh	r1, [r1]
	tst	r1, #1
	beq	.L162
	ldr	r1, .L194+32
	ldrh	r1, [r1]
	tst	r1, #1
	moveq	r0, #1
	ldreq	r1, .L194+36
	streq	r0, [r1]
.L162:
	str	r2, [r4, #4]
	str	r3, [r4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L192:
	ldr	r1, [r4, #24]
	add	r1, r2, r1
	cmp	r1, #255
	bgt	.L160
	ldr	r0, .L194+24
	lsl	ip, r3, #8
.L163:
	add	ip, ip, r1
	lsl	ip, ip, #1
	ldrh	ip, [r0, ip]
	ldr	lr, .L194+40
	cmp	ip, lr
	bne	.L160
	ldr	lr, [r4, #28]
	ldr	r5, [r4, #16]
	add	lr, r3, lr
	sub	lr, lr, r5
	add	r1, r1, lr, lsl #8
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, ip
	bne	.L160
	mov	r1, #1
	add	r2, r2, r1
	str	r2, [r4, #12]
	str	r1, [r4, #36]
	b	.L159
.L191:
	ldr	r1, [r4, #28]
	add	r1, r3, r1
	cmp	r1, #255
	bgt	.L156
	add	ip, r2, r1, lsl #8
	ldr	r0, .L194+24
	lsl	ip, ip, #1
	ldrh	ip, [r0, ip]
	cmp	ip, #0
	lsl	r1, r1, #8
	beq	.L156
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
	b	.L156
.L193:
	mov	r0, #0
	ldr	r1, [r4, #40]
	str	r0, [r4, #60]
	str	r1, [r4, #36]
	b	.L161
.L190:
	ldr	r1, [r4, #24]
	ldr	r5, [r4, #20]
	add	r1, r2, r1
	sub	r1, r1, r5
	add	r1, r1, lr
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, #0
	movne	r1, #2
	movne	r3, ip
	strne	ip, [r4, #8]
	strne	r1, [r4, #36]
	b	.L155
.L195:
	.align	2
.L194:
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
	ldr	r4, .L208
	ldr	r5, .L208+4
	add	r7, r4, #1392
	mov	fp, #5
	ldr	r6, .L208+8
	ldr	r8, .L208+12
	ldr	r10, .L208+16
	sub	sp, sp, #20
	add	r7, r7, #8
	sub	r9, r5, #8
	b	.L201
.L198:
	add	r4, r4, #40
	cmp	r4, r7
	add	r5, r5, #8
	beq	.L207
.L201:
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
	add	r2, r6, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r6]
	ldr	r0, [r6, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L198
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
	bne	.L201
.L207:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L209:
	.align	2
.L208:
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
	ldr	r4, .L221
	ldr	r5, .L221+4
	ldr	r7, .L221+8
	ldr	r8, .L221+12
	sub	sp, sp, #16
	add	r6, r4, #1360
	b	.L214
.L212:
	add	r4, r4, #40
	cmp	r4, r6
	beq	.L220
.L214:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L212
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
	bne	.L214
.L220:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L222:
	.align	2
.L221:
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
	ldr	r4, .L243
	ldr	r5, .L243+4
	ldr	r8, .L243+8
	ldr	r10, .L243+12
	ldr	r7, .L243+16
	ldr	fp, .L243+20
	sub	sp, sp, #20
	add	r9, r4, #120
.L230:
	ldrh	r3, [r8]
	tst	r3, #1
	beq	.L224
	ldrh	r6, [r10]
	ands	r6, r6, #1
	beq	.L240
.L224:
	tst	r3, #2
	beq	.L228
	ldrh	r2, [r10]
	ands	r6, r2, #2
	beq	.L241
.L228:
	add	r4, r4, #40
	cmp	r4, r9
	add	r5, r5, #68
	bne	.L230
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L240:
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
	ldr	ip, .L243+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L239
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bgt	.L242
.L239:
	ldrh	r3, [r8]
	b	.L224
.L241:
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
	ldr	ip, .L243+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L228
	ldr	r3, [r7, #48]
	cmp	r3, #0
	ble	.L228
	mov	r2, r6
	ldr	r1, .L243+28
	ldr	r3, .L243+32
	ldr	r0, .L243+36
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
	b	.L228
.L242:
	mov	r2, r6
	ldr	r1, .L243+28
	ldr	r3, .L243+32
	ldr	r0, .L243+36
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
	b	.L224
.L244:
	.align	2
.L243:
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
	ldr	r2, .L247
	ldr	r3, [r2, #4]
	str	lr, [sp, #-4]!
	ldr	r0, [r2, #36]
	ldr	lr, [r2, #60]
	ldrb	ip, [r2]	@ zero_extendqisi2
	ldr	r1, .L247+4
	lsl	r3, r3, #23
	add	r2, r0, lr, lsl #5
	lsr	r3, r3, #23
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L248:
	.align	2
.L247:
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
	ldr	r3, .L265
	ldr	r2, .L265+4
	add	r0, r3, #1392
	add	r0, r0, #8
.L257:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L263
	str	lr, [sp, #-4]!
.L258:
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	ldr	r1, [r3, #32]
	add	r3, r3, #40
	cmp	r3, r0
	strh	lr, [r2, #8]	@ movhi
	strh	ip, [r2, #10]	@ movhi
	strh	r1, [r2, #12]	@ movhi
	add	r2, r2, #8
	beq	.L264
.L251:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	bne	.L258
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L251
.L264:
	ldr	lr, [sp], #4
	bx	lr
.L263:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L257
	bx	lr
.L266:
	.align	2
.L265:
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
	ldr	r1, .L268
	ldr	r3, .L268+4
	ldr	r2, [r1, #12]
	ldr	ip, [r1, #8]
	orr	r2, r2, #16384
	add	r1, r3, #800
	add	r3, r3, #804
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r0, [r3]	@ movhi
	bx	lr
.L269:
	.align	2
.L268:
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
	ldr	r3, .L278
	ldr	r2, .L278+4
	add	r0, r3, #1392
	add	r0, r0, #8
.L272:
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
	bne	.L272
	ldr	lr, [sp], #4
	bx	lr
.L279:
	.align	2
.L278:
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
	ldr	r3, .L288
	ldr	r1, .L288+4
	add	ip, r3, #1360
.L282:
	ldr	r2, [r3, #4]
	ldr	r0, [r3, #36]
	add	r2, r2, #2
	cmp	r0, #0
	str	r2, [r3, #4]
	beq	.L281
	ldr	r0, [r3, #32]
	ldr	lr, [r3]
	add	r0, r0, #64
	strh	r2, [r1, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	strh	lr, [r1]	@ movhi
.L281:
	add	r3, r3, #40
	cmp	r3, ip
	add	r1, r1, #8
	bne	.L282
	ldr	lr, [sp], #4
	bx	lr
.L289:
	.align	2
.L288:
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
	ldr	r3, .L306
	ldr	r2, .L306+4
	add	r0, r3, #1360
.L298:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L304
	str	lr, [sp, #-4]!
.L299:
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
	beq	.L305
.L292:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	bne	.L299
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L292
.L305:
	ldr	lr, [sp], #4
	bx	lr
.L304:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L298
	bx	lr
.L307:
	.align	2
.L306:
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
	ldr	r3, .L316
	ldr	r1, .L316+4
	add	ip, r3, #1360
.L310:
	ldr	r2, [r3, #4]
	ldr	r0, [r3, #36]
	add	r2, r2, #2
	cmp	r0, #0
	str	r2, [r3, #4]
	beq	.L309
	ldr	r0, [r3, #32]
	ldr	lr, [r3]
	add	r0, r0, #128
	strh	r2, [r1, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	strh	lr, [r1]	@ movhi
.L309:
	add	r3, r3, #40
	cmp	r3, ip
	add	r1, r1, #8
	bne	.L310
	ldr	lr, [sp], #4
	bx	lr
.L317:
	.align	2
.L316:
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
	ldr	r3, .L322
	ldr	r2, .L322+4
	add	ip, r3, #1360
.L319:
	ldm	r3, {r0, r1}
	add	r3, r3, #40
	cmp	r3, ip
	strh	lr, [r2, #4]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	add	r2, r2, #8
	bne	.L319
	ldr	lr, [sp], #4
	bx	lr
.L323:
	.align	2
.L322:
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
	ldr	r0, .L326
	ldr	r1, [r0, #116]
	ldr	r2, [r0, #48]
	ldr	r3, [r0, #184]
	add	r2, r2, r1
	ldr	r6, [r0, #112]
	add	r2, r2, r3
	ldr	r3, [r0, #44]
	ldr	r1, .L326+4
	ldr	r0, [r0, #180]
	ldr	r5, .L326+8
	add	r3, r3, r6
	str	r2, [r5]
	add	r3, r3, r0
	add	r2, r2, #8
	add	r0, r1, #324
	strh	r2, [r0]	@ movhi
	ldr	r2, .L326+12
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
.L327:
	.align	2
.L326:
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
	ldr	r2, .L330
	ldr	r3, .L330+4
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
.L331:
	.align	2
.L330:
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
	ldr	r2, .L336
	ldr	r3, .L336+4
	push	{r4, r5, lr}
	ldr	r1, .L336+8
	ldr	r5, [r2]
	ldr	r4, [r2, #4]
	add	lr, r3, #120
.L333:
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
	bne	.L333
	pop	{r4, r5, lr}
	bx	lr
.L337:
	.align	2
.L336:
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
	ldr	r2, .L339
	ldm	r2, {r1, r3}
	ldr	r2, .L339+4
	sub	r3, r3, #4
	add	r0, r2, #808
	orr	r3, r3, #16384
	sub	r1, r1, #4
	add	r2, r2, #812
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	ip, [r2]	@ movhi
	bx	lr
.L340:
	.align	2
.L339:
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
	ldr	r2, .L345
	ldr	r3, .L345+4
	push	{r4, r5, r6, lr}
	ldr	r1, .L345+8
	ldr	r6, [r2]
	ldr	r5, [r2, #4]
	add	r4, r3, #204
.L342:
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
	bne	.L342
	pop	{r4, r5, r6, lr}
	bx	lr
.L346:
	.align	2
.L345:
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
	ldr	r0, .L395
	ldr	r3, [r0]
	ldr	r8, .L395+4
	cmp	r3, #28
	ldr	r2, [r8, #4]
	sub	sp, sp, #20
	beq	.L393
	cmp	r2, #256
	bgt	.L352
	cmp	r3, #30
	beq	.L353
.L394:
	cmp	r3, #29
	beq	.L354
.L355:
	ldr	r3, .L395+8
	add	r1, r3, #8
	ldm	r1, {r1, r2}
.L351:
	ldr	r5, .L395+12
	ldr	r0, .L395+16
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
	ldr	r4, .L395+20
	str	ip, [sp, #8]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	movne	r2, #1
	ldrne	r3, .L395+24
	strne	r2, [r3]
	ldr	r2, .L395+28
	ldr	r3, [r2]
	ldr	r4, .L395+32
	cmp	r3, #512
	subgt	r3, r3, #512
	strgt	r3, [r2]
	mov	r0, #0
	mov	r9, r4
	mov	r3, r4
	mov	r1, #6
	add	r6, r4, #204
.L360:
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
	bne	.L360
	bl	drawFoodDelivered
	bl	updatePanda
	ldr	r1, [r5, #60]
	ldr	r3, [r5, #4]
	ldr	r2, [r5, #36]
	ldr	r7, .L395+36
	add	r2, r2, r1, lsl #5
	lsl	r3, r3, #23
	ldrb	r1, [r5]	@ zero_extendqisi2
	lsr	r3, r3, #23
	strh	r3, [r7, #2]	@ movhi
	strh	r1, [r7]	@ movhi
	strh	r2, [r7, #4]	@ movhi
	bl	checkFoodDelivered
	ldr	r3, .L395+40
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L361
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
.L361:
	mov	r1, #8
	mov	r2, #6
.L364:
	ldr	r3, [r4, #44]
	cmp	r3, #5
	beq	.L362
	ldr	r3, [r4, #48]
	cmp	r3, #5
	beq	.L362
.L363:
	add	r4, r4, #68
	cmp	r4, r6
	bne	.L364
	ldr	r3, [r9, #44]
	cmp	r3, #5
	beq	.L365
	ldr	r3, [r9, #48]
	cmp	r3, #5
	beq	.L365
.L366:
	mov	r3, #67108864
	ldrh	r2, [r8, #4]
	ldrh	r1, [r8]
	strh	r2, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	ldr	r2, .L395+44
	mov	lr, pc
	bx	r2
	ldr	r4, .L395+48
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L395+36
	mov	lr, pc
	bx	r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L393:
	mov	r1, #67108864
	mov	ip, #23552
	cmp	r2, #256
	strh	ip, [r1, #10]	@ movhi
	ble	.L355
.L352:
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
	bne	.L394
.L353:
	bl	drawFriendlyPandas
	bl	drawBaskets
	mov	ip, #96
	ldr	r3, .L395+8
	ldr	r2, [r3, #12]
	ldr	r0, .L395+52
	orr	r1, r2, #16384
	strh	r1, [r0, #2]	@ movhi
	ldr	r1, [r3, #8]
	strh	ip, [r0, #4]	@ movhi
	strh	r1, [r0]	@ movhi
	b	.L351
.L365:
	ldr	r3, [r9, #112]
	cmp	r3, #5
	beq	.L367
	ldr	r3, [r9, #116]
	cmp	r3, #5
	bne	.L366
.L367:
	ldr	r3, [r9, #180]
	cmp	r3, #5
	beq	.L368
	ldr	r3, [r9, #184]
	cmp	r3, #5
	bne	.L366
.L368:
	mov	r2, #1
	ldr	r3, .L395+56
	str	r2, [r3]
	b	.L366
.L362:
	str	r1, [r4, #36]
	str	r2, [r4, #60]
	b	.L363
.L354:
	ldr	r3, [r8, #4]
	cmp	r3, #256
	ble	.L355
	b	.L353
.L396:
	.align	2
.L395:
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
	ldr	r3, .L398
	str	r2, [r3, #60]
	str	r2, [r3, #128]
	str	r2, [r3, #196]
	bx	lr
.L399:
	.align	2
.L398:
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
	ldr	r4, .L445
	ldr	r3, [r4]
	ldr	r6, .L445+4
	sub	sp, sp, #16
	add	r3, r3, #1
	str	r3, [r4]
	bl	updatePanda2
	add	r2, r6, #8
	ldr	r0, [r6, #28]
	ldr	r1, [r6, #24]
	ldm	r2, {r2, r3}
	ldr	r5, .L445+8
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #8]
	ldr	r0, [r5, #12]
	ldr	r7, .L445+12
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	movne	r2, #1
	mov	r9, #96
	mov	lr, #142
	mov	r8, #105
	mov	r7, #210
	ldrne	r3, .L445+16
	strne	r2, [r3]
	ldrh	r3, [r5, #4]
	ldrh	ip, [r5]
	ldr	r1, .L445+20
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
	ldr	r2, .L445+24
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
	beq	.L402
	mov	lr, #160
	sub	r3, r3, #4
	add	r0, r1, #808
	orr	r3, r3, #16384
	strh	r3, [r0, #2]	@ movhi
	ldr	r3, .L445+28
	mov	r2, r1
	sub	ip, ip, #4
	add	r1, r1, #812
	strh	ip, [r0]	@ movhi
	add	r0, r3, #1392
	strh	lr, [r1]	@ movhi
	add	r0, r0, #8
.L404:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L403
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	ldr	r1, [r3, #32]
	strh	lr, [r2, #8]	@ movhi
	strh	ip, [r2, #10]	@ movhi
	strh	r1, [r2, #12]	@ movhi
.L403:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L404
	bl	checkFoodCollected
	ldr	r3, [r4]
	cmp	r3, #32
	bgt	.L405
	ldr	r3, .L445+32
	ldr	r2, .L445+36
	add	r0, r3, #1360
.L407:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L406
	ldr	r1, [r3, #32]
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	add	r1, r1, #96
	strh	r1, [r2, #4]	@ movhi
	strh	lr, [r2]	@ movhi
	strh	ip, [r2, #2]	@ movhi
.L406:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L407
	b	.L418
.L402:
	ldr	r3, [r4]
	cmp	r3, #32
	bgt	.L410
	ldr	r3, .L445+32
	add	r2, r1, #360
	add	r0, r3, #1360
.L412:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L411
	ldr	r1, [r3, #32]
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	add	r1, r1, #96
	strh	r1, [r2, #4]	@ movhi
	strh	lr, [r2]	@ movhi
	strh	ip, [r2, #2]	@ movhi
.L411:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L412
.L413:
	ldr	r3, .L445+28
	ldr	r2, .L445+20
	add	r0, r3, #1392
	add	r0, r0, #8
.L417:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L416
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	ldr	r1, [r3, #32]
	strh	lr, [r2, #8]	@ movhi
	strh	ip, [r2, #10]	@ movhi
	strh	r1, [r2, #12]	@ movhi
.L416:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L417
	bl	checkFoodCollected
	bl	checkEnemyCollision
	ldr	r3, [r4]
.L409:
	cmp	r3, #133
	beq	.L442
.L418:
	ldr	r3, .L445+40
	mov	lr, pc
	bx	r3
	ldr	r4, .L445+44
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L445+20
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L445+48
	str	r2, [r3, #60]
	str	r2, [r3, #128]
	str	r2, [r3, #196]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L410:
	cmp	r3, #67
	beq	.L443
	cmp	r3, #100
	bne	.L413
	bl	drawEnemiesRight
	b	.L413
.L405:
	cmp	r3, #66
	beq	.L444
	cmp	r3, #100
	bne	.L409
	bl	drawEnemiesRight
	ldr	r3, [r4]
	b	.L409
.L442:
	mov	r2, #0
	ldr	r3, .L445+32
	str	r2, [r4]
	add	r1, r3, #1360
.L419:
	ldr	r2, [r3, #4]
	sub	r2, r2, #4
	str	r2, [r3, #4]
	add	r3, r3, #40
	cmp	r3, r1
	bne	.L419
	b	.L418
.L444:
	bl	drawEnemies
	ldr	r3, [r4]
	b	.L409
.L443:
	bl	drawEnemies
	b	.L413
.L446:
	.align	2
.L445:
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
