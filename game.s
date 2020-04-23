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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L25
	mov	r3, #0
	mov	r2, r4
	mov	lr, #1
	mov	r0, #8
	mov	r1, #2
	mov	r10, #214
	mov	r9, #18
	mvn	r8, #484
	mov	r7, #181
	mov	r6, #20
	mov	r5, #3
	b	.L15
.L6:
	sub	ip, r3, #4
	cmp	ip, #4
	bls	.L20
	sub	ip, r3, #9
	cmp	ip, #4
	bls	.L21
.L7:
	sub	ip, r3, #14
	cmp	ip, #5
	bls	.L22
.L9:
	sub	ip, r3, #20
	cmp	ip, #6
	bls	.L23
.L10:
	sub	ip, r3, #27
	cmp	ip, #7
	mlals	ip, r9, r3, r8
	strls	r10, [r2, #4]
	strls	ip, [r2]
.L11:
	tst	r3, #1
	moveq	ip, #4
	movne	ip, #3
.L13:
	add	r3, r3, #1
	cmp	r3, #35
	str	ip, [r2, #32]
	add	r2, r2, #44
	beq	.L24
.L15:
	cmp	r3, #3
	str	lr, [r2, #36]
	str	r0, [r2, #24]
	str	r0, [r2, #28]
	str	r1, [r2, #20]
	str	r1, [r2, #16]
	bgt	.L6
	mov	fp, #31
	rsb	ip, r3, r3, lsl #4
	lsl	ip, ip, #1
	add	ip, ip, #15
	str	ip, [r2]
	str	fp, [r2, #4]
	b	.L7
.L24:
	ldr	r3, [r4, #1144]
	sub	r3, r3, #1
	str	r3, [r4, #1144]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L20:
	mov	ip, #30
	mov	fp, #64
	mul	ip, r3, ip
	sub	ip, ip, #120
	str	ip, [r2]
	str	fp, [r2, #4]
	b	.L9
.L23:
	mul	ip, r6, r3
	sub	ip, ip, #388
	sub	ip, ip, #2
	tst	r3, #1
	str	ip, [r2]
	str	r7, [r2, #4]
	moveq	ip, #4
	beq	.L13
	str	r5, [r2, #32]
	add	r3, r3, #1
	add	r2, r2, #44
	b	.L15
.L22:
	mov	ip, #25
	mov	fp, #141
	mul	ip, r3, ip
	sub	ip, ip, #348
	sub	ip, ip, #2
	str	ip, [r2]
	str	fp, [r2, #4]
	b	.L11
.L21:
	mov	ip, #25
	mov	fp, #101
	mul	ip, r3, ip
	sub	ip, ip, #213
	str	ip, [r2]
	str	fp, [r2, #4]
	b	.L10
.L26:
	.align	2
.L25:
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
	mov	r0, #9
	mov	r1, #2
	mov	lr, #7
	mov	r9, #209
	mov	r8, #18
	mov	r7, #177
	mov	r6, #20
	mov	r5, #137
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
	add	r2, r2, #44
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
	mov	r10, #26
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
	mov	r10, #58
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
	str	ip, [r2], #44
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
	mov	r10, #97
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
	mov	r1, #8
	mov	r2, #1
	mov	lr, #28
	mov	r5, #3
	ldr	r3, .L49
	ldr	ip, .L49+4
	ldr	r0, .L49+8
	str	r4, [ip]
	str	r4, [r3]
	ldr	ip, .L49+12
	ldr	r3, .L49+16
	str	lr, [ip]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r4, [r0]
	str	r4, [r0, #4]
	str	r4, [r3, #32]
	str	r4, [r3, #36]
	str	r4, [r3, #44]
	str	r4, [r3, #48]
	str	r4, [r3, #60]
	str	r5, [r3, #64]
	bl	initFood
	bl	initEnemies
	mov	r2, #155
	mov	r1, #16
	mov	lr, #121
	mov	r0, #6
	mov	ip, #2
	ldr	r3, .L49+20
.L46:
	str	r2, [r3, #12]
	add	r2, r2, #20
	cmp	r2, #215
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	lr, [r3, #8]
	str	r0, [r3, #36]
	str	r4, [r3, #44]
	str	r4, [r3, #48]
	str	r0, [r3, #60]
	str	ip, [r3, #64]
	add	r3, r3, #68
	bne	.L46
	mov	r2, #195
	mov	r0, #1
	mov	lr, #105
	mov	ip, #4
	mov	r7, #155
	mov	r6, #175
	mov	r5, #225
	ldr	r3, .L49+24
	str	r2, [r3, #100]
	ldr	r2, .L49+28
	str	r7, [r3, #12]
	str	r6, [r3, #56]
	str	lr, [r3, #8]
	str	r4, [r2, #8]
	str	r5, [r2, #12]
	str	lr, [r3, #52]
	str	lr, [r3, #96]
	str	r0, [r3, #36]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r0, [r3, #80]
	str	r1, [r3, #68]
	str	r1, [r3, #72]
	str	r0, [r3, #124]
	str	r1, [r3, #112]
	str	r1, [r3, #116]
	str	r0, [r2, #36]
	str	r1, [r2, #24]
	str	r1, [r2, #28]
	str	ip, [r3, #32]
	str	ip, [r3, #76]
	str	ip, [r3, #120]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L50:
	.align	2
.L49:
	.word	playerHOff
	.word	cheatMode
	.word	.LANCHOR0
	.word	screenBlock
	.word	panda
	.word	pandas
	.word	baskets
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
	mov	r2, #16
	mov	ip, #1
	mov	r0, #105
	mov	r1, #4
	mov	r5, #155
	mov	r4, #175
	mov	lr, #195
	ldr	r3, .L53
	str	r5, [r3, #12]
	str	r4, [r3, #56]
	str	lr, [r3, #100]
	str	ip, [r3, #36]
	str	ip, [r3, #80]
	str	ip, [r3, #124]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #68]
	str	r2, [r3, #72]
	str	r2, [r3, #112]
	str	r2, [r3, #116]
	str	r0, [r3, #8]
	str	r0, [r3, #52]
	str	r0, [r3, #96]
	str	r1, [r3, #32]
	str	r1, [r3, #76]
	str	r1, [r3, #120]
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
	mov	r2, #155
	mov	ip, #16
	mov	r4, #121
	mov	r0, #6
	mov	r1, #0
	mov	lr, #2
	ldr	r3, .L59
.L56:
	str	r2, [r3, #12]
	add	r2, r2, #20
	cmp	r2, #215
	str	ip, [r3, #24]
	str	ip, [r3, #28]
	str	r4, [r3, #8]
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L150
	ldr	r3, [r4, #36]
	cmp	r3, #6
	movne	r2, #0
	strne	r3, [r4, #40]
	strne	r2, [r4, #36]
	ldr	r1, .L150+4
	ldr	r2, [r4, #32]
	ldr	r3, .L150+8
	mla	r3, r2, r3, r1
	ldr	r1, .L150+12
	cmp	r3, r1
	addhi	r2, r2, #1
	strhi	r2, [r4, #32]
	bhi	.L67
	ldr	r0, [r4, #60]
	ldr	r3, .L150+16
	ldr	r1, [r4, #64]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #60]
.L67:
	ldr	r3, .L150+20
	ldr	r3, [r3]
	ldr	r1, .L150+24
	cmp	r3, #0
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldrh	r1, [r1, #48]
	bne	.L68
	tst	r1, #64
	beq	.L128
.L135:
	ldr	r1, .L150+28
	ldr	r0, .L150+32
.L69:
	ldr	ip, .L150+24
	ldrh	ip, [ip, #48]
	tst	ip, #128
	bne	.L71
	ldr	r5, [r4, #28]
	add	ip, r5, r3
	cmp	ip, #235
	ble	.L145
.L71:
	ldr	ip, .L150+24
	ldrh	ip, [ip, #48]
	tst	ip, #16
	bne	.L74
	ldr	ip, [r4, #24]
	add	ip, r2, ip
.L88:
	cmp	ip, #748
	bge	.L74
	add	lr, r3, r3, lsl #1
	ldr	r5, .L150+36
	add	lr, ip, lr, lsl #8
	lsl	lr, lr, #1
	ldrh	r6, [r5, lr]
	ldr	lr, .L150+40
	cmp	r6, lr
	beq	.L146
.L77:
	mov	ip, #0
	mov	lr, #28
	mov	r2, #73
	mov	r3, #64
	str	ip, [r1]
	str	ip, [r1, #4]
	ldr	r1, .L150+44
	str	lr, [r1]
	ldr	r1, [r4, #36]
	ldr	r5, .L150+48
	cmp	r1, #6
	str	r2, [r4, #12]
	str	r3, [r4, #8]
	str	ip, [r0]
	str	ip, [r5]
	bne	.L86
.L148:
	mov	r0, #0
	ldr	r1, [r4, #40]
	str	r0, [r4, #60]
	str	r1, [r4, #36]
	str	r2, [r4, #4]
	str	r3, [r4]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L68:
	tst	r1, #64
	beq	.L130
.L137:
	ldr	r1, .L150+28
.L79:
	ldr	r0, .L150+24
	ldrh	r0, [r0, #48]
	tst	r0, #128
	bne	.L80
	ldr	lr, [r4, #28]
	add	r0, lr, r3
	cmp	r0, #235
	ble	.L147
.L80:
	ldr	r0, .L150+24
	ldrh	ip, [r0, #48]
	ldr	r0, .L150+32
	tst	ip, #16
	ldr	lr, [r0]
	bne	.L138
	ldr	ip, [r4, #24]
	add	ip, r2, ip
.L89:
	cmp	ip, #748
	blt	.L83
.L138:
	ldr	r1, [r1]
	sub	r2, r2, lr
	sub	r3, r3, r1
.L76:
	ldr	r1, [r4, #36]
	cmp	r1, #6
	beq	.L148
.L86:
	ldr	r1, [r4, #32]
	add	r1, r1, #1
	str	r1, [r4, #32]
	str	r2, [r4, #4]
	str	r3, [r4]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L130:
	ldr	r0, [r4, #16]
	sub	r0, r3, r0
	add	r1, r0, r0, lsl #1
	ldr	lr, .L150+36
	add	ip, r2, r1, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [lr, ip]
	cmp	ip, #0
	lsl	ip, r1, #8
	beq	.L137
	ldr	r1, [r4, #24]
	ldr	r5, [r4, #20]
	add	r1, r2, r1
	sub	r1, r1, r5
	add	r1, r1, ip
	lsl	r1, r1, #1
	ldrh	r1, [lr, r1]
	cmp	r1, #0
	cmpne	r3, #0
	ble	.L137
	mov	r3, #2
	ldr	r1, .L150+28
	ldr	ip, [r1]
	cmp	ip, #0
	str	r0, [r4, #8]
	str	r3, [r4, #36]
	ble	.L93
	ldr	r3, [r4, #28]
	ldr	lr, [r4]
	add	r3, r3, r3, lsr #31
	add	r3, lr, r3, asr #1
	cmp	r3, #80
	subeq	ip, ip, #1
	moveq	r3, r0
	streq	ip, [r1]
	beq	.L79
.L93:
	mov	r3, r0
	b	.L79
.L128:
	ldr	r0, [r4, #16]
	sub	r0, r3, r0
	add	r1, r0, r0, lsl #1
	ldr	lr, .L150+36
	add	ip, r2, r1, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [lr, ip]
	cmp	ip, #0
	lsl	ip, r1, #8
	beq	.L70
	ldr	r1, [r4, #24]
	ldr	r5, [r4, #20]
	add	r1, r2, r1
	sub	r1, r1, r5
	add	r1, r1, ip
	lsl	r1, r1, #1
	ldrh	r1, [lr, r1]
	cmp	r1, #0
	beq	.L70
	cmp	r3, #0
	ble	.L135
	mov	r3, #2
	ldr	r1, .L150+28
	ldr	ip, [r1]
	cmp	ip, #0
	str	r0, [r4, #8]
	str	r3, [r4, #36]
	ble	.L91
	ldr	r3, [r4, #28]
	ldr	lr, [r4]
	add	r3, r3, r3, lsr #31
	add	r3, lr, r3, asr #1
	cmp	r3, #80
	beq	.L149
.L91:
	mov	r3, r0
	ldr	r0, .L150+32
	b	.L69
.L74:
	ldr	r0, [r0]
	ldr	r1, [r1]
	sub	r2, r2, r0
	sub	r3, r3, r1
	b	.L76
.L70:
	mov	ip, #0
	mov	r2, #73
	mov	r3, #64
	mov	r5, #28
	ldr	lr, .L150+48
	ldr	r1, .L150+28
	str	ip, [lr]
	ldr	r0, .L150+32
	ldr	lr, .L150+44
	str	r2, [r4, #4]
	str	r2, [r4, #12]
	str	r3, [r4]
	str	r3, [r4, #8]
	str	ip, [r1, #4]
	str	ip, [r1]
	str	ip, [r0]
	str	r5, [lr]
	b	.L69
.L145:
	add	ip, ip, ip, lsl #1
	ldr	r6, .L150+36
	add	lr, r2, ip, lsl #8
	lsl	lr, lr, #1
	ldrh	lr, [r6, lr]
	cmp	lr, #0
	lsl	lr, ip, #8
	beq	.L72
	add	r7, r4, #20
	ldm	r7, {r7, ip}
	add	ip, r2, ip
	sub	r7, ip, r7
	add	lr, r7, lr
	lsl	lr, lr, #1
	ldrh	lr, [r6, lr]
	cmp	lr, #0
	beq	.L72
	mov	r6, #2
	ldr	lr, [r4, #16]
	add	r3, r3, lr
	ldr	lr, [r1]
	cmp	lr, #95
	str	r3, [r4, #8]
	str	r6, [r4, #36]
	bgt	.L73
	ldr	r6, [r4]
	add	r5, r5, r5, lsr #31
	add	r5, r6, r5, asr #1
	cmp	r5, #80
	addeq	lr, lr, #1
	streq	lr, [r1]
.L73:
	ldr	lr, .L150+24
	ldrh	lr, [lr, #48]
	tst	lr, #16
	beq	.L88
	ldr	r0, [r0]
	ldr	r1, [r1]
	sub	r2, r2, r0
	sub	r3, r3, r1
	b	.L86
.L147:
	add	r0, r0, r0, lsl #1
	add	ip, r2, r0, lsl #8
	ldr	r6, .L150+36
	lsl	ip, ip, #1
	ldrh	ip, [r6, ip]
	cmp	ip, #0
	lsl	r0, r0, #8
	beq	.L80
	add	r5, r4, #20
	ldm	r5, {r5, ip}
	add	ip, r2, ip
	sub	r5, ip, r5
	add	r0, r5, r0
	lsl	r0, r0, #1
	ldrh	r0, [r6, r0]
	cmp	r0, #0
	beq	.L80
	mov	r5, #2
	ldr	r0, [r4, #16]
	add	r3, r3, r0
	ldr	r0, [r1]
	cmp	r0, #95
	str	r3, [r4, #8]
	str	r5, [r4, #36]
	bgt	.L81
	ldr	r5, [r4]
	add	lr, lr, lr, lsr #31
	add	lr, r5, lr, asr #1
	cmp	lr, #80
	addeq	r0, r0, #1
	streq	r0, [r1]
.L81:
	ldr	r0, .L150+24
	ldrh	lr, [r0, #48]
	ldr	r0, .L150+32
	tst	lr, #16
	ldr	lr, [r0]
	beq	.L89
	b	.L139
.L83:
	add	r5, r3, r3, lsl #1
	ldr	r6, .L150+36
	add	r5, ip, r5, lsl #8
	lsl	r5, r5, #1
	ldrh	r7, [r6, r5]
	ldr	r5, .L150+40
	cmp	r7, r5
	bne	.L138
	ldr	r5, [r4, #28]
	ldr	r8, [r4, #16]
	add	r5, r3, r5
	sub	r5, r5, r8
	add	r5, r5, r5, lsl #1
	add	ip, ip, r5, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [r6, ip]
	cmp	ip, r7
	bne	.L138
	mov	ip, #1
	ldr	r5, .L150+44
	ldr	r5, [r5]
	add	r2, r2, ip
	cmp	r5, #29
	str	r2, [r4, #12]
	str	ip, [r4, #36]
	bgt	.L139
.L144:
	ldr	ip, [r1, #4]
	ldr	r5, .L150+52
	cmp	ip, r5
	bgt	.L139
	ldr	r5, [r4, #4]
	cmp	r5, #120
	ble	.L139
	ldr	r6, .L150+48
	ldr	r5, [r6]
	add	ip, ip, #1
	add	lr, lr, #1
	add	r5, r5, #1
	str	ip, [r1, #4]
	str	lr, [r0]
	str	r5, [r6]
.L139:
	ldr	r1, [r1]
	sub	r2, r2, lr
	sub	r3, r3, r1
	b	.L86
.L72:
	mov	r5, #73
	mov	ip, #0
	mov	lr, #64
	mov	r6, #28
	mov	r2, r5
	str	r5, [r4, #4]
	str	r5, [r4, #12]
	ldr	r5, .L150+48
	str	ip, [r1, #4]
	str	ip, [r1]
	str	ip, [r0]
	str	ip, [r5]
	ldr	ip, .L150+44
	mov	r3, lr
	str	lr, [r4]
	str	lr, [r4, #8]
	str	r6, [ip]
	b	.L71
.L146:
	ldr	lr, [r4, #28]
	ldr	r7, [r4, #16]
	add	lr, r3, lr
	sub	lr, lr, r7
	add	lr, lr, lr, lsl #1
	add	ip, ip, lr, lsl #8
	lsl	ip, ip, #1
	ldrh	ip, [r5, ip]
	cmp	ip, r6
	bne	.L77
	mov	ip, #1
	ldr	lr, .L150+44
	ldr	lr, [lr]
	add	r2, r2, ip
	cmp	lr, #29
	str	r2, [r4, #12]
	str	ip, [r4, #36]
	ldr	lr, [r0]
	bgt	.L139
	b	.L144
.L149:
	sub	ip, ip, #1
	mov	r3, r0
	str	ip, [r1]
	ldr	r0, .L150+32
	b	.L69
.L151:
	.align	2
.L150:
	.word	panda
	.word	85899345
	.word	-1030792151
	.word	171798690
	.word	__aeabi_idivmod
	.word	cheatMode
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
	ldr	r4, .L193
	ldr	r3, [r4, #36]
	cmp	r3, #6
	movne	r2, #0
	strne	r3, [r4, #40]
	strne	r2, [r4, #36]
	ldr	r1, .L193+4
	ldr	r2, [r4, #32]
	ldr	r3, .L193+8
	mla	r3, r2, r3, r1
	ldr	r1, .L193+12
	cmp	r3, r1
	addhi	r2, r2, #1
	strhi	r2, [r4, #32]
	bhi	.L155
	ldr	r0, [r4, #60]
	ldr	r3, .L193+16
	ldr	r1, [r4, #64]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #60]
.L155:
	ldr	r3, .L193+20
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	bne	.L156
	cmp	r3, #0
	ble	.L156
	ldr	ip, [r4, #16]
	sub	ip, r3, ip
	ldr	r1, .L193+24
	add	r0, r2, ip, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [r1, r0]
	cmp	r0, #0
	lsl	lr, ip, #8
	bne	.L189
.L156:
	ldr	r1, .L193+20
	ldrh	r1, [r1, #48]
	tst	r1, #128
	bne	.L157
	ldr	r1, [r4]
	cmp	r1, #127
	ble	.L190
.L157:
	ldr	lr, .L193+20
	ldrh	r1, [lr, #48]
	tst	r1, #32
	bne	.L158
	cmp	r2, #0
	ble	.L158
	ldr	r5, [r4, #20]
	sub	r5, r2, r5
	ldr	r1, .L193+24
	add	r0, r5, r3, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [r1, r0]
	cmp	r0, #0
	lsl	ip, r3, #8
	beq	.L158
	ldr	r0, [r4, #28]
	ldr	r6, [r4, #16]
	add	r0, r3, r0
	sub	r0, r0, r6
	add	r0, r5, r0, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [r1, r0]
	cmp	r0, #0
	beq	.L158
	mov	r2, #1
	ldrh	r0, [lr, #48]
	tst	r0, #16
	str	r5, [r4, #12]
	str	r2, [r4, #36]
	beq	.L159
.L188:
	mov	r2, r5
	b	.L160
.L158:
	ldr	r1, .L193+20
	ldrh	r1, [r1, #48]
	tst	r1, #16
	bne	.L161
	ldr	r0, [r4, #24]
	add	r0, r2, r0
	cmp	r0, #239
	bgt	.L161
	ldr	r1, .L193+24
	lsl	ip, r3, #8
.L163:
	add	ip, ip, r0
	lsl	ip, ip, #1
	ldrh	lr, [r1, ip]
	ldr	ip, .L193+28
	cmp	lr, ip
	beq	.L191
.L161:
	ldr	r1, [r4, #36]
	cmp	r1, #6
	beq	.L192
.L160:
	ldr	r1, [r4, #32]
	add	r1, r1, #1
	str	r1, [r4, #32]
	str	r2, [r4, #4]
	str	r3, [r4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L190:
	ldr	r0, [r4, #28]
	add	r0, r3, r0
	cmp	r0, #255
	bgt	.L157
	add	ip, r2, r0, lsl #8
	ldr	r1, .L193+24
	lsl	ip, ip, #1
	ldrh	ip, [r1, ip]
	cmp	ip, #0
	lsl	r0, r0, #8
	beq	.L157
	ldr	ip, [r4, #24]
	ldr	lr, [r4, #20]
	add	ip, r2, ip
	sub	ip, ip, lr
	add	r0, ip, r0
	lsl	r0, r0, #1
	ldrh	r1, [r1, r0]
	cmp	r1, #0
	movne	r1, #2
	ldrne	r0, [r4, #16]
	addne	r3, r3, r0
	strne	r3, [r4, #8]
	strne	r1, [r4, #36]
	b	.L157
.L192:
	mov	r0, #0
	ldr	r1, [r4, #40]
	str	r0, [r4, #60]
	str	r1, [r4, #36]
	str	r2, [r4, #4]
	str	r3, [r4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L189:
	ldr	r0, [r4, #24]
	ldr	r5, [r4, #20]
	add	r0, r2, r0
	sub	r0, r0, r5
	add	r0, r0, lr
	lsl	r0, r0, #1
	ldrh	r1, [r1, r0]
	cmp	r1, #0
	movne	r1, #2
	movne	r3, ip
	strne	ip, [r4, #8]
	strne	r1, [r4, #36]
	b	.L156
.L191:
	ldr	ip, [r4, #28]
	ldr	r5, [r4, #16]
	add	ip, r3, ip
	sub	ip, ip, r5
	add	r0, r0, ip, lsl #8
	lsl	r0, r0, #1
	ldrh	r1, [r1, r0]
	cmp	r1, lr
	bne	.L161
	mov	r1, #1
	ldr	r0, [r4, #20]
	add	r2, r2, r0
	str	r2, [r4, #12]
	str	r1, [r4, #36]
	b	.L160
.L159:
	ldr	r0, [r4, #24]
	add	r0, r5, r0
	cmp	r0, #239
	bgt	.L188
	mov	r2, r5
	b	.L163
.L194:
	.align	2
.L193:
	.word	panda
	.word	85899345
	.word	-1030792151
	.word	171798690
	.word	__aeabi_idivmod
	.word	67109120
	.word	collisionmap2Bitmap
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
	ldr	r4, .L207
	ldr	r5, .L207+4
	add	r7, r4, #1536
	mov	fp, #0
	mov	r10, #5
	ldr	r6, .L207+8
	ldr	r8, .L207+12
	sub	sp, sp, #20
	add	r7, r7, #4
	sub	r9, r5, #8
	b	.L200
.L197:
	add	r4, r4, #44
	cmp	r4, r7
	add	r5, r5, #8
	beq	.L206
.L200:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L197
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
	beq	.L197
	ldm	r4, {r0, ip}
	str	fp, [r4, #36]
	strh	r0, [r5]	@ movhi
	strh	ip, [r5, #2]	@ movhi
	mov	r3, #512
	strh	r10, [r5, #4]	@ movhi
	mov	r2, #117440512
	mov	r1, r9
	mov	r0, #3
	ldr	ip, .L207+16
	mov	lr, pc
	bx	ip
	ldr	r3, [r4, #32]
	cmp	r3, #4
	ldreq	r3, [r6, #44]
	ldrne	r3, [r6, #48]
	addeq	r3, r3, #1
	addne	r3, r3, #1
	add	r4, r4, #44
	streq	r3, [r6, #44]
	strne	r3, [r6, #48]
	cmp	r4, r7
	add	r5, r5, #8
	bne	.L200
.L206:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L208:
	.align	2
.L207:
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
	ldr	r4, .L229
	ldr	r5, .L229+4
	ldr	r8, .L229+8
	ldr	r10, .L229+12
	ldr	r7, .L229+16
	ldr	fp, .L229+20
	sub	sp, sp, #20
	add	r9, r4, #132
.L216:
	ldrh	r3, [r8]
	tst	r3, #1
	beq	.L210
	ldrh	r6, [r10]
	ands	r6, r6, #1
	beq	.L226
.L210:
	tst	r3, #2
	beq	.L214
	ldrh	r2, [r10]
	ands	r6, r2, #2
	beq	.L227
.L214:
	add	r4, r4, #44
	cmp	r4, r9
	add	r5, r5, #68
	bne	.L216
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L226:
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
	ldr	ip, .L229+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L225
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bgt	.L228
.L225:
	ldrh	r3, [r8]
	b	.L210
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
	ldr	ip, .L229+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L214
	ldr	r3, [r7, #48]
	cmp	r3, #0
	ble	.L214
	mov	ip, #8
	ldr	r0, [r5, #48]
	sub	r3, r3, #1
	add	r0, r0, #1
	str	r3, [r7, #48]
	str	r0, [r5, #48]
	mov	r2, r6
	ldr	r1, .L229+28
	ldr	r0, .L229+32
	str	ip, [r5, #60]
	ldr	r3, .L229+36
	mov	lr, pc
	bx	r3
	b	.L214
.L228:
	mov	ip, #8
	ldr	r0, [r5, #44]
	sub	r3, r3, #1
	add	r0, r0, #1
	str	r3, [r7, #44]
	str	r0, [r5, #44]
	ldr	r3, .L229+36
	mov	r2, r6
	ldr	r1, .L229+28
	ldr	r0, .L229+32
	str	ip, [r5, #60]
	mov	lr, pc
	bx	r3
	ldrh	r3, [r8]
	b	.L210
.L230:
	.align	2
.L229:
	.word	baskets
	.word	pandas
	.word	oldButtons
	.word	buttons
	.word	panda
	.word	totalHOff
	.word	collision
	.word	21312
	.word	chewSound
	.word	playSoundB
	.size	checkFoodDelivered, .-checkFoodDelivered
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
	ldr	r4, .L242
	add	r6, r4, #1488
	ldr	r5, .L242+4
	ldr	r7, .L242+8
	ldr	r8, .L242+12
	sub	sp, sp, #16
	add	r6, r6, #8
	b	.L235
.L233:
	add	r4, r4, #44
	cmp	r4, r6
	beq	.L241
.L235:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L233
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
	beq	.L233
	ldr	r3, [r4, #40]
	cmp	r3, #0
	moveq	r3, #1
	add	r4, r4, #44
	streq	r3, [r8]
	cmp	r4, r6
	bne	.L235
.L241:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L243:
	.align	2
.L242:
	.word	enemies
	.word	panda
	.word	collision
	.word	hasLost
	.size	checkEnemyCollision, .-checkEnemyCollision
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
	ldr	r2, .L246
	ldr	r3, [r2, #4]
	str	lr, [sp, #-4]!
	ldr	r0, [r2, #36]
	ldr	lr, [r2, #60]
	ldrb	ip, [r2]	@ zero_extendqisi2
	ldr	r1, .L246+4
	lsl	r3, r3, #23
	add	r2, r0, lr, lsl #5
	lsr	r3, r3, #23
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L247:
	.align	2
.L246:
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
	ldr	r3, .L264
	ldr	r2, .L264+4
	add	r0, r3, #1536
	add	r0, r0, #4
.L256:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L262
	str	lr, [sp, #-4]!
.L257:
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	ldr	r1, [r3, #32]
	add	r3, r3, #44
	cmp	r3, r0
	strh	lr, [r2, #8]	@ movhi
	strh	ip, [r2, #10]	@ movhi
	strh	r1, [r2, #12]	@ movhi
	add	r2, r2, #8
	beq	.L263
.L250:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	bne	.L257
	add	r3, r3, #44
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L250
.L263:
	ldr	lr, [sp], #4
	bx	lr
.L262:
	add	r3, r3, #44
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L256
	bx	lr
.L265:
	.align	2
.L264:
	.word	food
	.word	shadowOAM
	.size	drawFood, .-drawFood
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
	ldr	r3, .L274
	ldr	r1, .L274+4
	add	ip, r3, #1488
	add	ip, ip, #8
.L268:
	ldr	r2, [r3, #4]
	ldr	r0, [r3, #36]
	add	r2, r2, #4
	cmp	r0, #0
	str	r2, [r3, #4]
	beq	.L267
	ldr	r0, [r3, #32]
	ldr	lr, [r3]
	add	r0, r0, #64
	strh	r2, [r1, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	strh	lr, [r1]	@ movhi
.L267:
	add	r3, r3, #44
	cmp	r3, ip
	add	r1, r1, #8
	bne	.L268
	ldr	lr, [sp], #4
	bx	lr
.L275:
	.align	2
.L274:
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
	ldr	r3, .L292
	ldr	r2, .L292+4
	add	r0, r3, #1488
	add	r0, r0, #8
.L284:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L290
	str	lr, [sp, #-4]!
.L285:
	ldr	r1, [r3, #32]
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	add	r3, r3, #44
	add	r1, r1, #96
	cmp	r3, r0
	strh	r1, [r2, #4]	@ movhi
	strh	lr, [r2]	@ movhi
	strh	ip, [r2, #2]	@ movhi
	add	r2, r2, #8
	beq	.L291
.L278:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	bne	.L285
	add	r3, r3, #44
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L278
.L291:
	ldr	lr, [sp], #4
	bx	lr
.L290:
	add	r3, r3, #44
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L284
	bx	lr
.L293:
	.align	2
.L292:
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
	ldr	r3, .L302
	ldr	r1, .L302+4
	add	ip, r3, #1488
	add	ip, ip, #8
.L296:
	ldr	r2, [r3, #4]
	ldr	r0, [r3, #36]
	add	r2, r2, #4
	cmp	r0, #0
	str	r2, [r3, #4]
	beq	.L295
	ldr	r0, [r3, #32]
	ldr	lr, [r3]
	add	r0, r0, #128
	strh	r2, [r1, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	strh	lr, [r1]	@ movhi
.L295:
	add	r3, r3, #44
	cmp	r3, ip
	add	r1, r1, #8
	bne	.L296
	ldr	lr, [sp], #4
	bx	lr
.L303:
	.align	2
.L302:
	.word	enemies
	.word	shadowOAM+360
	.size	drawEnemiesRight, .-drawEnemiesRight
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
	ldr	r0, .L306
	ldr	r1, [r0, #116]
	ldr	r2, [r0, #48]
	ldr	r3, [r0, #184]
	add	r2, r2, r1
	ldr	r6, [r0, #112]
	add	r2, r2, r3
	ldr	r3, [r0, #44]
	ldr	r1, .L306+4
	ldr	r0, [r0, #180]
	ldr	r5, .L306+8
	add	r3, r3, r6
	str	r2, [r5]
	add	r3, r3, r0
	add	r2, r2, #8
	add	r0, r1, #324
	strh	r2, [r0]	@ movhi
	ldr	r2, .L306+12
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
.L307:
	.align	2
.L306:
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
	ldr	r2, .L310
	ldr	r3, .L310+4
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
.L311:
	.align	2
.L310:
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
	ldr	r2, .L316
	ldr	r3, .L316+4
	push	{r4, r5, lr}
	ldr	r1, .L316+8
	ldr	r5, [r2]
	ldr	r4, [r2, #4]
	add	lr, r3, #132
.L313:
	add	r0, r3, #8
	ldm	r0, {r0, r2}
	ldr	ip, [r3, #32]
	sub	r0, r0, r5
	sub	r2, r2, r4
	stm	r3, {r0, r2}
	add	r3, r3, #44
	orr	r2, r2, #16384
	add	ip, ip, #192
	cmp	r3, lr
	strh	r0, [r1]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	add	r1, r1, #8
	bne	.L313
	pop	{r4, r5, lr}
	bx	lr
.L317:
	.align	2
.L316:
	.word	.LANCHOR0
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
	ldr	r2, .L322
	ldr	r3, .L322+4
	push	{r4, r5, r6, lr}
	ldr	r1, .L322+8
	ldr	r6, [r2]
	ldr	r5, [r2, #4]
	add	r4, r3, #204
.L319:
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
	bne	.L319
	pop	{r4, r5, r6, lr}
	bx	lr
.L323:
	.align	2
.L322:
	.word	.LANCHOR0
	.word	pandas
	.word	shadowOAM+288
	.size	drawFriendlyPandas, .-drawFriendlyPandas
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
	ldr	r1, .L325
	ldr	r3, .L325+4
	ldr	r2, [r1, #12]
	ldr	ip, [r1, #8]
	orr	r2, r2, #16384
	add	r1, r3, #800
	add	r3, r3, #804
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r0, [r3]	@ movhi
	bx	lr
.L326:
	.align	2
.L325:
	.word	door
	.word	shadowOAM
	.size	drawDoor, .-drawDoor
	.align	2
	.global	drawPandaScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPandaScore, %function
drawPandaScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L329
	ldr	ip, [r2, #4]
	ldr	r0, [r2, #72]
	ldr	r3, .L329+4
	add	ip, ip, #4
	push	{r4, r5, r6, r7, lr}
	lsl	ip, ip, #16
	ldrh	r4, [r2]
	ldr	r1, [r2, #140]
	add	r6, r3, #808
	add	r5, r3, #832
	lsr	ip, ip, #16
	add	r0, r0, #4
	ldrh	lr, [r2, #68]
	lsl	r0, r0, #16
	strh	ip, [r6, #2]	@ movhi
	strh	ip, [r5, #2]	@ movhi
	add	ip, r4, #20
	add	r4, r4, #30
	strh	ip, [r6]	@ movhi
	lsr	r0, r0, #16
	ldrh	ip, [r2, #136]
	add	r6, r3, #840
	strh	r4, [r5]	@ movhi
	add	r1, r1, #4
	add	r5, r3, #816
	ldr	r4, [r2, #48]
	lsl	r1, r1, #16
	strh	r0, [r5, #2]	@ movhi
	strh	r0, [r6, #2]	@ movhi
	add	r0, lr, #20
	add	lr, lr, #30
	strh	r0, [r5]	@ movhi
	lsr	r1, r1, #16
	ldr	r5, [r2, #116]
	add	r0, r3, #824
	strh	lr, [r6]	@ movhi
	add	r6, r3, #848
	ldr	lr, [r2, #184]
	add	r7, ip, #20
	strh	r1, [r0, #2]	@ movhi
	add	r4, r4, #8
	strh	r1, [r6, #2]	@ movhi
	add	r1, ip, #30
	add	ip, r3, #812
	strh	r7, [r0]	@ movhi
	add	r5, r5, #8
	ldr	r0, [r2, #44]
	strh	r1, [r6]	@ movhi
	ldr	r1, [r2, #112]
	ldr	r2, [r2, #180]
	strh	r4, [ip]	@ movhi
	add	ip, r3, #820
	strh	r5, [ip]	@ movhi
	add	lr, lr, #8
	add	ip, r3, #828
	strh	lr, [ip]	@ movhi
	add	r4, r3, #836
	add	ip, r3, #844
	add	r0, r0, #8
	add	r1, r1, #8
	add	r2, r2, #8
	add	r3, r3, #852
	strh	r0, [r4]	@ movhi
	strh	r1, [ip]	@ movhi
	strh	r2, [r3]	@ movhi
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L330:
	.align	2
.L329:
	.word	pandas
	.word	shadowOAM
	.size	drawPandaScore, .-drawPandaScore
	.align	2
	.global	drawWordStems
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawWordStems, %function
drawWordStems:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L333
	ldrh	r0, [r3, #4]
	sub	r1, r0, #42
	mvn	r1, r1, lsl #17
	push	{r4, r5, lr}
	mvn	r1, r1, lsr #17
	mov	r5, #107
	mov	r4, #111
	ldr	r3, [r3]
	add	r3, r3, #20
	ldr	r2, .L333+4
	orr	r3, r3, #16384
	lsl	r3, r3, #16
	add	lr, r2, #856
	lsr	r3, r3, #16
	add	ip, r2, #864
	strh	r3, [lr]	@ movhi
	sub	r0, r0, #10
	strh	r3, [ip]	@ movhi
	add	r3, r2, #860
	add	r2, r2, #868
	strh	r1, [lr, #2]	@ movhi
	strh	r0, [ip, #2]	@ movhi
	strh	r5, [r3]	@ movhi
	strh	r4, [r2]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L334:
	.align	2
.L333:
	.word	pandas
	.word	shadowOAM
	.size	drawWordStems, .-drawWordStems
	.align	2
	.global	drawWordLeaves
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawWordLeaves, %function
drawWordLeaves:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L337
	ldrh	r1, [r3, #4]
	sub	r0, r1, #50
	mvn	r0, r0, lsl #17
	push	{r4, r5, lr}
	mvn	r0, r0, lsr #17
	mov	r5, #235
	mov	r4, #239
	ldr	r3, [r3]
	add	r3, r3, #30
	ldr	r2, .L337+4
	orr	r3, r3, #16384
	lsl	r3, r3, #16
	add	lr, r2, #872
	lsr	r3, r3, #16
	add	ip, r2, #880
	sub	r1, r1, #18
	strh	r3, [lr]	@ movhi
	orr	r1, r1, #16384
	strh	r3, [ip]	@ movhi
	add	r3, r2, #876
	add	r2, r2, #884
	strh	r0, [lr, #2]	@ movhi
	strh	r1, [ip, #2]	@ movhi
	strh	r5, [r3]	@ movhi
	strh	r4, [r2]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L338:
	.align	2
.L337:
	.word	pandas
	.word	shadowOAM
	.size	drawWordLeaves, .-drawWordLeaves
	.align	2
	.global	hideBaskets
	.syntax unified
	.arm
	.fpu softvfp
	.type	hideBaskets, %function
hideBaskets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r5, #396
	ldr	r2, .L343
	ldr	r3, .L343+4
	ldm	r2, {r4, lr}
	ldr	r1, .L343+8
	add	ip, r3, #132
.L340:
	add	r0, r3, #8
	ldm	r0, {r0, r2}
	sub	r0, r0, r4
	sub	r2, r2, lr
	stm	r3, {r0, r2}
	add	r3, r3, #44
	orr	r2, r2, #16384
	cmp	r3, ip
	strh	r5, [r1, #4]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	add	r1, r1, #8
	bne	.L340
	pop	{r4, r5, lr}
	bx	lr
.L344:
	.align	2
.L343:
	.word	.LANCHOR0
	.word	baskets
	.word	shadowOAM+256
	.size	hideBaskets, .-hideBaskets
	.align	2
	.global	hidePandas
	.syntax unified
	.arm
	.fpu softvfp
	.type	hidePandas, %function
hidePandas:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r5, #396
	ldr	r2, .L349
	ldr	r3, .L349+4
	ldm	r2, {r4, lr}
	ldr	r1, .L349+8
	add	ip, r3, #204
.L346:
	add	r0, r3, #8
	ldm	r0, {r0, r2}
	sub	r0, r0, r4
	sub	r2, r2, lr
	stm	r3, {r0, r2}
	add	r3, r3, #68
	orr	r2, r2, #16384
	cmp	r3, ip
	strh	r5, [r1, #4]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	add	r1, r1, #8
	bne	.L346
	pop	{r4, r5, lr}
	bx	lr
.L350:
	.align	2
.L349:
	.word	.LANCHOR0
	.word	pandas
	.word	shadowOAM+288
	.size	hidePandas, .-hidePandas
	.align	2
	.global	hideDoor
	.syntax unified
	.arm
	.fpu softvfp
	.type	hideDoor, %function
hideDoor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #396
	ldr	r1, .L352
	ldr	r3, .L352+4
	ldr	r2, [r1, #12]
	ldr	ip, [r1, #8]
	orr	r2, r2, #16384
	add	r1, r3, #800
	add	r3, r3, #804
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r0, [r3]	@ movhi
	bx	lr
.L353:
	.align	2
.L352:
	.word	door
	.word	shadowOAM
	.size	hideDoor, .-hideDoor
	.align	2
	.global	hideFood
	.syntax unified
	.arm
	.fpu softvfp
	.type	hideFood, %function
hideFood:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	lr, #396
	ldr	r3, .L362
	ldr	r2, .L362+4
	add	r0, r3, #1536
	add	r0, r0, #4
.L356:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	ldrne	ip, [r3]
	ldrne	r1, [r3, #4]
	add	r3, r3, #44
	strhne	lr, [r2, #12]	@ movhi
	strhne	ip, [r2, #8]	@ movhi
	strhne	r1, [r2, #10]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L356
	ldr	lr, [sp], #4
	bx	lr
.L363:
	.align	2
.L362:
	.word	food
	.word	shadowOAM
	.size	hideFood, .-hideFood
	.align	2
	.global	hidePandaScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	hidePandaScore, %function
hidePandaScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #396
	push	{r4, r5, r6, r7, lr}
	ldr	r5, .L366
	ldr	r0, [r5, #4]
	ldr	r1, [r5, #72]
	ldr	r3, .L366+4
	add	r0, r0, #4
	ldrh	lr, [r5]
	lsl	r0, r0, #16
	ldr	r2, [r5, #140]
	add	r7, r3, #808
	add	r6, r3, #832
	lsr	r0, r0, #16
	add	r1, r1, #4
	strh	r0, [r7, #2]	@ movhi
	add	r4, lr, #30
	strh	r0, [r6, #2]	@ movhi
	lsl	r1, r1, #16
	add	r0, lr, #20
	ldrh	lr, [r5, #68]
	strh	r0, [r7]	@ movhi
	lsr	r1, r1, #16
	ldrh	r0, [r5, #136]
	add	r2, r2, #4
	strh	r4, [r6]	@ movhi
	add	r5, r3, #840
	add	r4, r3, #816
	strh	r1, [r4, #2]	@ movhi
	lsl	r2, r2, #16
	strh	r1, [r5, #2]	@ movhi
	add	r1, lr, #20
	add	lr, lr, #30
	strh	r1, [r4]	@ movhi
	lsr	r2, r2, #16
	strh	lr, [r5]	@ movhi
	add	r4, r3, #824
	add	r1, r3, #848
	add	lr, r0, #20
	add	r0, r0, #30
	strh	r2, [r4, #2]	@ movhi
	add	r5, r3, #812
	strh	r2, [r1, #2]	@ movhi
	strh	lr, [r4]	@ movhi
	add	r2, r3, #844
	strh	r0, [r1]	@ movhi
	add	r4, r3, #820
	add	lr, r3, #828
	add	r1, r3, #836
	add	r3, r3, #852
	strh	ip, [r5]	@ movhi
	strh	ip, [r4]	@ movhi
	strh	ip, [lr]	@ movhi
	strh	ip, [r1]	@ movhi
	pop	{r4, r5, r6, r7, lr}
	strh	ip, [r2]	@ movhi
	strh	ip, [r3]	@ movhi
	bx	lr
.L367:
	.align	2
.L366:
	.word	pandas
	.word	shadowOAM
	.size	hidePandaScore, .-hidePandaScore
	.align	2
	.global	hideWordStemsAndLeaves
	.syntax unified
	.arm
	.fpu softvfp
	.type	hideWordStemsAndLeaves, %function
hideWordStemsAndLeaves:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L370
	ldrh	r3, [r2]
	ldrh	r0, [r2, #4]
	add	r1, r3, #20
	push	{r4, r5, r6, lr}
	ldr	r2, .L370+4
	ldr	ip, .L370+8
	orr	r1, r1, #16384
	sub	r4, r0, #42
	add	r3, r3, #30
	lsl	r1, r1, #16
	add	r6, r2, #856
	add	r5, r2, #864
	lsr	r1, r1, #16
	orr	r4, r4, ip
	sub	lr, r0, #50
	orr	r3, r3, #16384
	strh	r1, [r6]	@ movhi
	orr	lr, lr, ip
	strh	r1, [r5]	@ movhi
	sub	ip, r0, #18
	strh	r4, [r6, #2]	@ movhi
	ldr	r1, .L370+12
	add	r4, r2, #872
	sub	r0, r0, #10
	lsl	r3, r3, #16
	strh	r0, [r5, #2]	@ movhi
	add	r6, r2, #860
	strh	lr, [r4, #2]	@ movhi
	add	r0, r2, #880
	add	r5, r2, #868
	add	lr, r2, #876
	lsr	r3, r3, #16
	orr	ip, ip, #16384
	add	r2, r2, #884
	strh	r3, [r4]	@ movhi
	strh	r3, [r0]	@ movhi
	strh	ip, [r0, #2]	@ movhi
	strh	r1, [r6]	@ movhi
	strh	r1, [r5]	@ movhi
	strh	r1, [lr]	@ movhi
	strh	r1, [r2]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L371:
	.align	2
.L370:
	.word	pandas
	.word	shadowOAM
	.word	-32768
	.word	495
	.size	hideWordStemsAndLeaves, .-hideWordStemsAndLeaves
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L421
	sub	sp, sp, #20
	bl	checkFoodDelivered
	bl	updatePanda
	ldr	r3, [r5, #4]
	ldr	r2, [r5, #60]
	ldr	r0, [r5, #36]
	ldr	r7, .L421+4
	ldr	r1, .L421+8
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	add	r0, r0, r2, lsl #5
	ldr	r2, [r7]
	strh	r3, [r1, #2]	@ movhi
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r2, #28
	strh	r3, [r1]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	moveq	r3, #67108864
	moveq	r1, #23552
	ldr	r4, .L421+12
	strheq	r1, [r3, #10]	@ movhi
	ldr	r3, [r4, #4]
	cmp	r3, #256
	ble	.L374
	mov	r0, #67108864
	add	r2, r2, #1
	lsl	r1, r2, #24
	orr	r1, r1, #1073741824
	lsr	r1, r1, #16
	sub	r3, r3, #256
	str	r2, [r7]
	str	r3, [r4, #4]
	strh	r1, [r0, #10]	@ movhi
.L374:
	ldr	r9, .L421+16
	ldr	r3, [r9]
	ldr	r6, .L421+20
	cmp	r3, #512
	subgt	r3, r3, #512
	add	r1, r6, #24
	add	r2, r6, #8
	strgt	r3, [r9]
	ldm	r1, {r1, ip}
	ldm	r2, {r2, r3}
	ldr	r8, .L421+24
	ldr	lr, [r5, #12]
	ldr	r0, [r8]
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #8]
	ldr	r10, .L421+28
	sub	r0, lr, r0
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L376
	ldr	r3, .L421+32
	ldr	r3, [r3]
	cmp	r3, #0
	moveq	r2, #1
	ldreq	r3, .L421+36
	streq	r2, [r3]
.L376:
	ldr	r3, [r8]
	ldr	r0, [r5, #12]
	add	r1, r6, #24
	ldm	r1, {r1, ip}
	ldr	r2, [r6, #8]
	sub	r0, r0, r3
	ldr	r3, [r6, #12]
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #8]
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L377
	ldr	r3, .L421+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L419
.L377:
	ldr	r3, [r7]
	cmp	r3, #30
	beq	.L378
	cmp	r3, #29
	ldr	ip, [r4, #4]
	beq	.L420
.L379:
	ldr	r3, .L421+40
	mov	r5, #0
	mov	r7, r3
	mov	r2, r3
	mov	lr, #6
	add	r0, r3, #204
.L382:
	ldr	r1, [r2, #60]
	cmp	r1, #8
	ldr	r1, [r2, #32]
	addeq	r1, r1, #1
	streq	r1, [r2, #32]
	cmp	r1, #15
	streq	r5, [r2, #32]
	streq	lr, [r2, #60]
	add	r2, r2, #68
	cmp	r2, r0
	bne	.L382
	mov	lr, #8
	mov	r1, #6
.L385:
	ldr	r2, [r3, #44]
	cmp	r2, #5
	beq	.L383
	ldr	r2, [r3, #48]
	cmp	r2, #5
	beq	.L383
.L384:
	add	r3, r3, #68
	cmp	r3, r0
	bne	.L385
	ldr	r3, [r7, #44]
	cmp	r3, #5
	beq	.L386
	ldr	r3, [r7, #48]
	cmp	r3, #5
	beq	.L386
.L387:
	mov	r2, #67108864
	ldrh	r1, [r4]
	lsl	r3, ip, #16
	lsr	r3, r3, #16
	strh	r3, [r2, #20]	@ movhi
	strh	r1, [r2, #22]	@ movhi
	ldr	r3, .L421+44
	mov	lr, pc
	bx	r3
	ldr	r4, .L421+48
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L421+8
	mov	lr, pc
	bx	r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L386:
	ldr	r3, [r7, #112]
	cmp	r3, #5
	beq	.L388
	ldr	r3, [r7, #116]
	cmp	r3, #5
	bne	.L387
.L388:
	ldr	r3, [r7, #180]
	cmp	r3, #5
	beq	.L389
	ldr	r3, [r7, #184]
	cmp	r3, #5
	bne	.L387
.L389:
	mov	r2, #1
	ldr	r3, .L421+52
	str	r2, [r3]
	b	.L387
.L383:
	str	lr, [r3, #36]
	str	r1, [r3, #60]
	b	.L384
.L420:
	cmp	ip, #256
	ble	.L379
.L378:
	bl	drawFriendlyPandas
	bl	drawBaskets
	mov	r2, #96
	add	r1, r6, #8
	ldr	r5, .L421+56
	ldm	r1, {r1, r3}
	mov	r6, r5
	orr	r3, r3, #16384
	strh	r3, [r5, #2]	@ movhi
	strh	r1, [r5]	@ movhi
	strh	r2, [r5, #4]	@ movhi
	bl	drawPandaScore
	mov	fp, #107
	mov	lr, r5
	mov	ip, r5
	mov	r10, #111
	mov	r0, r5
	mov	r9, #235
	ldr	r7, .L421+40
	ldrh	r3, [r7]
	add	r1, r3, #20
	orr	r1, r1, #16384
	ldrh	r2, [r7, #4]
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	ldr	r8, .L421+60
	strh	r1, [r6, #56]!	@ movhi
	sub	r7, r2, #42
	add	r3, r3, #30
	orr	r7, r7, r8
	orr	r3, r3, #16384
	strh	r7, [r6, #2]	@ movhi
	lsl	r3, r3, #16
	strh	fp, [r5, #60]	@ movhi
	strh	r1, [lr, #64]!	@ movhi
	lsr	r3, r3, #16
	sub	r1, r2, #10
	strh	r1, [lr, #2]	@ movhi
	strh	r10, [r5, #68]	@ movhi
	sub	r1, r2, #50
	strh	r3, [ip, #72]!	@ movhi
	orr	r8, r1, r8
	strh	r8, [ip, #2]	@ movhi
	strh	r9, [r5, #76]	@ movhi
	strh	r3, [r0, #80]!	@ movhi
	mov	r3, #239	@ movhi
	sub	r2, r2, #18
	orr	r2, r2, #16384
	strh	r2, [r0, #2]	@ movhi
	ldr	ip, [r4, #4]
	strh	r3, [r5, #84]	@ movhi
	b	.L379
.L419:
	mov	r3, #0
	mov	r1, #73
	mov	r2, #64
	mov	r0, #28
	str	r1, [r5, #4]
	str	r1, [r5, #12]
	str	r2, [r5]
	str	r2, [r5, #8]
	str	r3, [r4, #4]
	str	r3, [r4]
	str	r3, [r9]
	str	r3, [r8]
	str	r0, [r7]
	bl	hideBaskets
	bl	hidePandas
	mov	r1, #396
	ldr	r2, [r6, #12]
	ldr	r3, .L421+56
	ldr	r0, [r6, #8]
	orr	r2, r2, #16384
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	bl	hidePandaScore
	bl	hideWordStemsAndLeaves
	b	.L377
.L422:
	.align	2
.L421:
	.word	panda
	.word	screenBlock
	.word	shadowOAM
	.word	.LANCHOR0
	.word	playerHOff
	.word	door
	.word	totalHOff
	.word	collision
	.word	cheatMode
	.word	goToChina
	.word	pandas
	.word	waitForVBlank
	.word	DMANow
	.word	hasWon
	.word	shadowOAM+800
	.word	-32768
	.size	updateGame, .-updateGame
	.align	2
	.global	checkCheatActivation
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkCheatActivation, %function
checkCheatActivation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L434
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L434+4
	ldrh	r2, [r3]
	ands	r2, r2, #1
	bxne	lr
	push	{r4, lr}
	ldr	r4, .L434+8
	mov	lr, #1
	mov	r3, r4
	mov	r0, #7
	ldr	ip, .L434+12
	add	r1, r4, #1488
	str	lr, [ip]
	add	r1, r1, #8
.L425:
	str	r2, [r3, #40]
	str	r0, [r3, #32]
	add	r3, r3, #44
	cmp	r3, r1
	bne	.L425
	ldr	r3, .L434+16
	ldr	r1, .L434+20
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	mov	lr, pc
	bx	r1
	mov	ip, #1
	mov	r1, #8
	ldr	r3, .L434+24
	smull	lr, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #5
	sub	r3, r0, r3
	add	r2, r3, r3, lsl #2
	ldr	r0, .L434+28
	add	r2, r3, r2, lsl ip
	add	r4, r4, r2, lsl #2
	str	ip, [r4, #40]
	str	r1, [r4, #32]
	str	r3, [r0]
	pop	{r4, lr}
	bx	lr
.L435:
	.align	2
.L434:
	.word	oldButtons
	.word	buttons
	.word	enemies
	.word	cheatMode
	.word	panda
	.word	rand
	.word	1041204193
	.word	randomIndex
	.size	checkCheatActivation, .-checkCheatActivation
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
	ldr	r5, .L484
	add	r2, r5, #8
	ldm	r2, {r2, r3}
	ldr	r0, [r5, #28]
	ldr	r1, [r5, #24]
	sub	sp, sp, #16
	ldr	r4, .L484+4
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	ldr	r7, .L484+8
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	movne	r2, #1
	ldrne	r3, .L484+12
	strne	r2, [r3]
	ldr	r3, .L484+16
	ldr	r3, [r3]
	cmp	r3, #0
	ldr	r6, .L484+20
	beq	.L438
	mov	lr, #396
	mov	r2, r6
	ldr	r3, .L484+24
	add	r0, r3, #1536
	add	r0, r0, #4
.L440:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	ldrne	ip, [r3]
	ldrne	r1, [r3, #4]
	add	r3, r3, #44
	strhne	lr, [r2, #12]	@ movhi
	strhne	ip, [r2, #8]	@ movhi
	strhne	r1, [r2, #10]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L440
	bl	checkEnemyCollision
	ldr	r3, .L484+28
	ldr	r3, [r3]
	ldr	r1, .L484+32
	add	r2, r3, r3, lsl #2
	add	r3, r3, r2, lsl #1
	add	r2, r1, r3, lsl #2
	ldr	ip, [r1, r3, lsl #2]
	ldr	r0, [r2, #28]
	ldr	r1, [r2, #24]
	ldr	r3, [r2, #4]
	str	ip, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	movne	r3, #15
	ldr	r7, .L484+36
	ldr	r0, [r7]
	strne	r3, [r4, #48]
	strne	r3, [r4, #44]
	cmp	r0, #32
	bgt	.L442
	ldr	r3, .L484+32
	ldr	r2, .L484+40
	add	ip, r3, #1488
	add	ip, ip, #8
.L444:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L443
	ldr	r1, [r3, #32]
	ldm	r3, {r8, lr}
	add	r1, r1, #96
	strh	r1, [r2, #4]	@ movhi
	strh	r8, [r2]	@ movhi
	strh	lr, [r2, #2]	@ movhi
.L443:
	add	r3, r3, #44
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L444
.L445:
	add	r0, r0, #1
	str	r0, [r7]
	mov	r8, #96
	bl	checkCheatActivation
	mov	lr, #105
	mov	r0, #142
	mov	ip, #210
	ldr	r1, [r4, #60]
	ldr	r2, [r4, #36]
	ldr	r3, [r4, #4]
	add	r2, r2, r1, lsl #5
	strh	r2, [r6, #4]	@ movhi
	ldrb	r2, [r4]	@ zero_extendqisi2
	lsl	r3, r3, #23
	add	r1, r5, #8
	strh	r2, [r6]	@ movhi
	lsr	r3, r3, #23
	ldm	r1, {r1, r2}
	strh	r3, [r6, #2]	@ movhi
	ldr	r3, .L484+44
	orr	r2, r2, #16384
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	ldr	r1, [r4, #48]
	ldr	r2, [r4, #44]
	sub	r4, r3, #480
	strh	r8, [r3, #4]	@ movhi
	strh	lr, [r4, #2]	@ movhi
	sub	lr, r3, #472
	strh	r0, [r4]	@ movhi
	add	r1, r1, #8
	strh	r0, [lr]	@ movhi
	add	r2, r2, #8
	sub	r0, r3, #476
	sub	r3, r3, #468
	strh	ip, [lr, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r2, [r3]	@ movhi
	bl	updatePanda2
	ldr	r3, [r7]
	cmp	r3, #133
	beq	.L453
.L455:
	ldr	r3, .L484+48
	mov	lr, pc
	bx	r3
	ldr	r4, .L484+52
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L484+20
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L484+56
	str	r2, [r3, #60]
	str	r2, [r3, #128]
	str	r2, [r3, #196]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L438:
	mov	r2, r6
	ldr	r3, .L484+24
	add	r0, r3, #1536
	add	r0, r0, #4
.L448:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L447
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	ldr	r1, [r3, #32]
	strh	lr, [r2, #8]	@ movhi
	strh	ip, [r2, #10]	@ movhi
	strh	r1, [r2, #12]	@ movhi
.L447:
	add	r3, r3, #44
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L448
	ldr	r7, .L484+36
	bl	checkFoodCollected
	bl	checkEnemyCollision
	ldr	r0, [r7]
	cmp	r0, #32
	bgt	.L449
	ldr	r3, .L484+32
	ldr	r2, .L484+40
	add	ip, r3, #1488
	add	ip, ip, #8
.L451:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L450
	ldr	r1, [r3, #32]
	ldm	r3, {r8, lr}
	add	r1, r1, #96
	strh	r1, [r2, #4]	@ movhi
	strh	r8, [r2]	@ movhi
	strh	lr, [r2, #2]	@ movhi
.L450:
	add	r3, r3, #44
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L451
	b	.L445
.L449:
	cmp	r0, #67
	beq	.L482
.L452:
	cmp	r0, #100
	bne	.L445
	bl	drawEnemiesRight
	ldr	r0, [r7]
	b	.L445
.L442:
	cmp	r0, #66
	bne	.L452
.L482:
	bl	drawEnemies
	ldr	r0, [r7]
	b	.L445
.L453:
	mov	r2, #0
	ldr	r3, .L484+32
	str	r2, [r7]
	add	r1, r3, #1488
	add	r1, r1, #8
.L454:
	ldr	r2, [r3, #4]
	sub	r2, r2, #8
	str	r2, [r3, #4]
	add	r3, r3, #44
	cmp	r1, r3
	bne	.L454
	b	.L455
.L485:
	.align	2
.L484:
	.word	door
	.word	panda
	.word	collision
	.word	goToMaze
	.word	cheatMode
	.word	shadowOAM
	.word	food
	.word	randomIndex
	.word	enemies
	.word	count
	.word	shadowOAM+360
	.word	shadowOAM+800
	.word	waitForVBlank
	.word	DMANow
	.word	pandas
	.size	updateGame2, .-updateGame2
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
	ldr	r3, .L487
	str	r2, [r3, #60]
	str	r2, [r3, #128]
	str	r2, [r3, #196]
	bx	lr
.L488:
	.align	2
.L487:
	.word	pandas
	.size	resetAnimationFriendly, .-resetAnimationFriendly
	.comm	count,4,4
	.comm	randomIndex,4,4
	.comm	cheatMode,4,4
	.comm	goToChina,4,4
	.comm	goToMaze,4,4
	.comm	totalHOff,4,4
	.comm	playerHOff,4,4
	.comm	screenBlock,4,4
	.global	vOff
	.global	hOff
	.comm	totalLeavesDelivered,4,4
	.comm	totalStemsDelivered,4,4
	.comm	hasWon,4,4
	.comm	hasLost,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	door,44,4
	.comm	pandas,204,4
	.comm	baskets,132,4
	.comm	enemies,1496,4
	.comm	food,1540,4
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
