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
	.file	"main.c"
	.text
	.align	2
	.global	goToSplash
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToSplash, %function
goToSplash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, lr}
	ldr	r2, .L4
	ldr	ip, .L4+4
	ldr	r0, .L4+8
	ldr	r1, .L4+12
	str	r3, [ip]
	str	r3, [r2]
	str	r3, [r2, #4]
	str	r3, [r0]
	mov	lr, pc
	bx	r1
	mov	r2, #1
	ldr	r1, .L4+16
	ldr	r0, .L4+20
	ldr	r3, .L4+24
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	.LANCHOR0
	.word	state
	.word	seed
	.word	stopSound
	.word	291428
	.word	splashSound
	.word	playSoundA
	.size	goToSplash, .-goToSplash
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L8
	mov	r0, #3
	ldr	r2, .L8+4
	ldr	r1, .L8+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L8+12
	ldr	r1, .L8+16
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L8+20
	mov	lr, pc
	bx	r3
	mov	r1, #4096
	mov	r2, #67108864
	ldr	r3, .L8+24
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r2, .L8+28
	ldr	r3, .L8+32
	ldrh	r2, [r2, #48]
	strh	r2, [r3]	@ movhi
	bl	goToSplash
	ldr	r3, .L8+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+48
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	DMANow
	.word	83886592
	.word	spriteSheetPal
	.word	100728832
	.word	spriteSheetTiles
	.word	hideSprites
	.word	initGame
	.word	67109120
	.word	buttons
	.word	initBaskets
	.word	initPandas
	.word	setupSounds
	.word	setupInterrupts
	.size	initialize, .-initialize
	.align	2
	.global	splash
	.syntax unified
	.arm
	.fpu softvfp
	.type	splash, %function
splash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, #1024
	mov	r7, #67108864
	ldr	r5, .L23
	ldr	r3, [r5]
	add	r3, r3, #1
	str	r3, [r5]
	ldr	r4, .L23+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L23+8
	strh	r6, [r7]	@ movhi
	mov	lr, pc
	bx	r4
	mov	r2, #2816
	mov	r3, #1536
	mov	r0, #3
	strh	r2, [r7, #12]	@ movhi
	ldr	r1, .L23+12
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, r6
	ldr	r2, .L23+16
	ldr	r1, .L23+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L23+24
	add	r1, r3, r6
.L11:
	strh	r2, [r3]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	add	r3, r3, #8
	cmp	r3, r1
	bne	.L11
	ldr	r6, .L23+28
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L23+24
	mov	lr, pc
	bx	r4
	ldrh	r3, [r6]
	tst	r3, #8
	beq	.L12
	ldr	r2, .L23+32
	ldrh	r2, [r2]
	ands	r4, r2, #8
	beq	.L22
.L12:
	tst	r3, #4
	beq	.L10
	ldr	r3, .L23+32
	ldrh	r3, [r3]
	tst	r3, #4
	moveq	r2, #1
	ldreq	r3, .L23+36
	streq	r2, [r3]
.L10:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L22:
	mov	r7, #67108864
	ldr	r0, [r5]
	ldr	r3, .L23+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L23+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L23+48
	strh	r4, [r7]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L23+52
	ldr	r3, .L23+56
	ldr	r0, .L23+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L23+64
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L23+68
	ldrh	r1, [r3]
	ldr	r3, .L23+72
	strh	r1, [r7, #22]	@ movhi
	ldrh	r1, [r3]
	ldr	r3, .L23+36
	strh	r1, [r7, #20]	@ movhi
	str	r2, [r3]
	ldrh	r3, [r6]
	b	.L12
.L24:
	.align	2
.L23:
	.word	seed
	.word	DMANow
	.word	splashScreenPal
	.word	splashScreenTiles
	.word	100685824
	.word	splashScreenMap
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	state
	.word	srand
	.word	initGame
	.word	stopSound
	.word	1324512
	.word	playSoundA
	.word	gameSound
	.word	hideSprites
	.word	vOff
	.word	hOff
	.size	splash, .-splash
	.align	2
	.global	goToInstruction
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstruction, %function
goToInstruction:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #1
	ldr	r3, .L26
	str	r2, [r3]
	bx	lr
.L27:
	.align	2
.L26:
	.word	state
	.size	goToInstruction, .-goToInstruction
	.align	2
	.global	instruction
	.syntax unified
	.arm
	.fpu softvfp
	.type	instruction, %function
instruction:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #512
	mov	r5, #67108864
	ldr	r4, .L40
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L40+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #2816
	mov	r0, #3
	ldr	r3, .L40+8
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L40+12
	mov	r2, #100663296
	ldr	r6, .L40+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L40+20
	ldr	r1, .L40+24
	mov	lr, pc
	bx	r4
	ldrh	r3, [r6]
	tst	r3, #8
	beq	.L29
	ldr	r2, .L40+28
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L38
.L29:
	tst	r3, #4
	beq	.L28
	ldr	r3, .L40+28
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L39
.L28:
	pop	{r4, r5, r6, lr}
	bx	lr
.L39:
	pop	{r4, r5, r6, lr}
	b	goToSplash
.L38:
	ldr	r2, .L40+32
	ldr	r3, .L40+36
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L40+40
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L40+44
	ldrh	r1, [r3]
	ldr	r3, .L40+48
	strh	r1, [r5, #22]	@ movhi
	ldrh	r1, [r3]
	ldr	r3, .L40+52
	strh	r1, [r5, #20]	@ movhi
	str	r2, [r3]
	ldrh	r3, [r6]
	b	.L29
.L41:
	.align	2
.L40:
	.word	DMANow
	.word	instructionsScreenPal
	.word	6432
	.word	instructionsScreenTiles
	.word	oldButtons
	.word	100685824
	.word	instructionsScreenMap
	.word	buttons
	.word	seed
	.word	srand
	.word	hideSprites
	.word	vOff
	.word	hOff
	.word	state
	.size	instruction, .-instruction
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L44
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #2
	ldr	r2, .L44+4
	ldr	r0, .L44+8
	ldrh	r2, [r2]
	ldrh	r0, [r0]
	strh	r2, [r3, #22]	@ movhi
	ldr	r2, .L44+12
	strh	r0, [r3, #20]	@ movhi
	pop	{r4, lr}
	str	r1, [r2]
	bx	lr
.L45:
	.align	2
.L44:
	.word	hideSprites
	.word	vOff
	.word	hOff
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	goToGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame2, %function
goToGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r2, #0
	push	{r4, lr}
	mov	r4, #110
	mov	lr, #9
	mov	ip, #512
	mov	r0, #190
	mov	r1, #129
	strh	r2, [r3, #22]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	ldr	r2, .L48
	str	r4, [r2]
	ldr	r2, .L48+4
	str	lr, [r2]
	ldr	r2, .L48+8
	strh	ip, [r3]	@ movhi
	ldr	r3, .L48+12
	str	r0, [r2, #8]
	str	r1, [r2, #12]
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L48+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L49:
	.align	2
.L48:
	.word	vOff
	.word	hOff
	.word	panda
	.word	hideSprites
	.word	state
	.size	goToGame2, .-goToGame2
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #4864
	mov	r5, #67108864
	ldr	r4, .L72
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L72+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r3, #96
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L72+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L72+12
	ldr	r1, .L72+16
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L72+20
	mov	lr, pc
	bx	r4
	mov	r3, #448
	mov	r0, #3
	ldr	r2, .L72+24
	ldr	r1, .L72+28
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L72+32
	ldr	r1, .L72+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L72+40
	ldr	r4, .L72+44
	strh	r3, [r5, #8]	@ movhi
	ldr	r3, .L72+48
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L51
	ldr	r2, .L72+52
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L68
.L51:
	tst	r3, #4
	beq	.L52
	ldr	r3, .L72+52
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L69
.L52:
	ldr	r4, .L72+56
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L70
.L53:
	ldr	r3, [r4, #4]
	cmp	r3, #0
	bne	.L71
	pop	{r4, r5, r6, lr}
	bx	lr
.L71:
	mov	r1, #5
	ldr	r2, .L72+60
	ldr	r3, .L72+64
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L70:
	mov	r1, #6
	ldr	r2, .L72+60
	ldr	r3, .L72+64
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	b	.L53
.L69:
	ldr	r4, .L72+64
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r1, .L72+68
	ldr	r3, .L72+72
	ldr	r0, .L72+76
	mov	lr, pc
	bx	r3
	bl	goToGame2
	b	.L52
.L68:
	ldr	r3, .L72+80
	mov	lr, pc
	bx	r3
	mov	r1, #4
	ldr	r2, .L72+60
	ldrh	r3, [r4]
	str	r1, [r2]
	b	.L51
.L73:
	.align	2
.L72:
	.word	DMANow
	.word	gameScreenPal
	.word	gameScreenTiles
	.word	100720640
	.word	gameScreenMap
	.word	scoreBackgroundPal
	.word	100679680
	.word	scoreBackgroundTiles
	.word	100714496
	.word	scoreBackgroundMap
	.word	6404
	.word	oldButtons
	.word	updateGame
	.word	buttons
	.word	.LANCHOR0
	.word	state
	.word	stopSound
	.word	677952
	.word	playSoundA
	.word	gameSound2
	.word	pauseSound
	.size	game, .-game
	.align	2
	.global	game2
	.syntax unified
	.arm
	.fpu softvfp
	.type	game2, %function
game2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #512
	ldr	r4, .L96
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L96+4
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L96+8
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #2816
	mov	r3, #48
	mov	r0, #3
	strh	r2, [r5, #12]	@ movhi
	ldr	r1, .L96+12
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L96+16
	mov	lr, pc
	bx	r4
	mov	r3, #448
	mov	r0, #3
	ldr	r2, .L96+20
	ldr	r1, .L96+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L96+28
	ldr	r1, .L96+32
	mov	lr, pc
	bx	r4
	ldr	r2, .L96+36
	mov	r3, #1024
	mov	r0, #3
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L96+40
	ldr	r2, .L96+44
	mov	lr, pc
	bx	r4
	mov	r3, #5376
	ldr	r4, .L96+48
	strh	r3, [r5]	@ movhi
	ldr	r3, .L96+52
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L75
	ldr	r2, .L96+56
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L92
.L75:
	tst	r3, #4
	beq	.L76
	ldr	r3, .L96+56
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L93
.L76:
	ldr	r4, .L96+60
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L94
.L77:
	ldr	r3, [r4, #4]
	cmp	r3, #0
	bne	.L95
	pop	{r4, r5, r6, lr}
	bx	lr
.L95:
	mov	r1, #5
	ldr	r2, .L96+64
	ldr	r3, .L96+68
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L94:
	mov	r1, #6
	ldr	r2, .L96+64
	ldr	r3, .L96+68
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	b	.L77
.L93:
	ldr	r3, .L96+68
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L96+72
	ldr	r3, .L96+76
	ldr	r0, .L96+80
	mov	lr, pc
	bx	r3
	ldr	r3, .L96+84
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #2
	ldr	r2, .L96+88
	ldr	r0, .L96+92
	ldrh	r2, [r2]
	ldrh	r0, [r0]
	strh	r2, [r3, #22]	@ movhi
	ldr	r2, .L96+64
	strh	r0, [r3, #20]	@ movhi
	str	r1, [r2]
	b	.L76
.L92:
	ldr	r3, .L96+96
	mov	lr, pc
	bx	r3
	mov	r1, #4
	ldr	r2, .L96+64
	ldrh	r3, [r4]
	str	r1, [r2]
	b	.L75
.L97:
	.align	2
.L96:
	.word	DMANow
	.word	shadowOAM
	.word	gameScreen2Pal
	.word	gameScreen2Tiles
	.word	scoreBackgroundPal
	.word	100679680
	.word	scoreBackgroundTiles
	.word	100714496
	.word	scoreBackgroundMap
	.word	6404
	.word	gameScreen2Map
	.word	100685824
	.word	oldButtons
	.word	updateGame2
	.word	buttons
	.word	.LANCHOR0
	.word	state
	.word	stopSound
	.word	1324512
	.word	playSoundA
	.word	gameSound
	.word	hideSprites
	.word	vOff
	.word	hOff
	.word	pauseSound
	.size	game2, .-game2
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #4
	ldr	r3, .L99
	str	r2, [r3]
	bx	lr
.L100:
	.align	2
.L99:
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, #67108864
	mov	r6, #1024
	ldr	r4, .L108
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L108+4
	strh	r6, [r5]	@ movhi
	mov	lr, pc
	bx	r4
	mov	r2, #2816
	mov	r3, #96
	mov	r0, #3
	strh	r2, [r5, #12]	@ movhi
	ldr	r1, .L108+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, r6
	mov	r0, #3
	ldr	r2, .L108+12
	ldr	r1, .L108+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L108+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L101
	ldr	r3, .L108+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L107
.L101:
	pop	{r4, r5, r6, lr}
	bx	lr
.L107:
	ldr	r3, .L108+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L108+32
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L108+36
	ldr	r1, .L108+40
	ldrh	r3, [r3]
	ldrh	r1, [r1]
	strh	r3, [r5, #22]	@ movhi
	ldr	r3, .L108+44
	strh	r1, [r5, #20]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L109:
	.align	2
.L108:
	.word	DMANow
	.word	pauseScreenPal
	.word	pauseScreenTiles
	.word	100685824
	.word	pauseScreenMap
	.word	oldButtons
	.word	buttons
	.word	unpauseSound
	.word	hideSprites
	.word	vOff
	.word	hOff
	.word	state
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #5
	push	{r4, lr}
	ldr	r2, .L112
	ldr	r3, .L112+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L113:
	.align	2
.L112:
	.word	state
	.word	stopSound
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #512
	mov	r5, #67108864
	ldr	r4, .L121
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L121+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #2816
	mov	r3, #880
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L121+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L121+12
	ldr	r1, .L121+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L121+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L114
	ldr	r3, .L121+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L120
.L114:
	pop	{r4, r5, r6, lr}
	bx	lr
.L120:
	pop	{r4, r5, r6, lr}
	b	goToSplash
.L122:
	.align	2
.L121:
	.word	DMANow
	.word	winScreenPal
	.word	winScreenTiles
	.word	100685824
	.word	winScreenMap
	.word	oldButtons
	.word	buttons
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #6
	push	{r4, lr}
	ldr	r2, .L125
	ldr	r3, .L125+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L126:
	.align	2
.L125:
	.word	state
	.word	stopSound
	.size	goToLose, .-goToLose
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, #67108864
	mov	r5, #1024
	ldr	r4, .L134
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L134+4
	strh	r5, [r6]	@ movhi
	mov	lr, pc
	bx	r4
	mov	r2, #2816
	mov	r3, #944
	mov	r0, #3
	strh	r2, [r6, #12]	@ movhi
	ldr	r1, .L134+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r0, #3
	ldr	r2, .L134+12
	ldr	r1, .L134+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L134+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L127
	ldr	r3, .L134+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L133
.L127:
	pop	{r4, r5, r6, lr}
	bx	lr
.L133:
	pop	{r4, r5, r6, lr}
	b	goToSplash
.L135:
	.align	2
.L134:
	.word	DMANow
	.word	loseScreenPal
	.word	loseScreenTiles
	.word	100685824
	.word	loseScreenMap
	.word	oldButtons
	.word	buttons
	.size	lose, .-lose
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r6, .L148
	push	{r4, r7, fp, lr}
	ldr	r3, .L148+4
	mov	lr, pc
	bx	r3
	ldr	fp, .L148+8
	ldr	r3, [r6]
	ldr	r10, .L148+12
	ldr	r9, .L148+16
	ldr	r8, .L148+20
	ldr	r5, .L148+24
	ldr	r7, .L148+28
	ldr	r4, .L148+32
.L146:
	cmp	r3, #6
	ldrls	pc, [pc, r3, asl #2]
	b	.L137
.L139:
	.word	.L145
	.word	.L144
	.word	.L143
	.word	.L142
	.word	.L141
	.word	.L140
	.word	.L138
.L138:
	ldr	r3, .L148+36
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
.L137:
	ldrh	r1, [r7]
	strh	r1, [r5]	@ movhi
	ldrh	r1, [r4, #48]
	strh	r1, [r7]	@ movhi
	b	.L146
.L140:
	ldr	r3, .L148+40
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	b	.L137
.L141:
	ldr	r3, .L148+44
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	b	.L137
.L142:
	mov	lr, pc
	bx	r8
	ldr	r3, [r6]
	b	.L137
.L143:
	mov	lr, pc
	bx	r9
	ldr	r3, [r6]
	b	.L137
.L145:
	mov	lr, pc
	bx	fp
	ldr	r3, [r6]
	b	.L137
.L144:
	mov	lr, pc
	bx	r10
	ldr	r3, [r6]
	b	.L137
.L149:
	.align	2
.L148:
	.word	state
	.word	initialize
	.word	splash
	.word	instruction
	.word	game
	.word	game2
	.word	oldButtons
	.word	buttons
	.word	67109120
	.word	lose
	.word	win
	.word	pause
	.size	main, .-main
	.comm	state,4,4
	.comm	seed,4,4
	.comm	shadowOAM,1024,4
	.global	hasWon
	.global	hasLost
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	pandas,204,4
	.comm	baskets,96,4
	.comm	enemies,480,4
	.comm	food,960,4
	.comm	panda,68,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	hasLost, %object
	.size	hasLost, 4
hasLost:
	.space	4
	.type	hasWon, %object
	.size	hasWon, 4
hasWon:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
