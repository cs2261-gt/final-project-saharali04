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
	ldr	r3, .L11
	str	r2, [r3]
	bx	lr
.L12:
	.align	2
.L11:
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
	ldr	r4, .L25
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L25+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #2816
	mov	r0, #3
	ldr	r3, .L25+8
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L25+12
	mov	r2, #100663296
	ldr	r6, .L25+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L25+20
	ldr	r1, .L25+24
	mov	lr, pc
	bx	r4
	ldrh	r3, [r6]
	tst	r3, #8
	beq	.L14
	ldr	r2, .L25+28
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L23
.L14:
	tst	r3, #4
	beq	.L13
	ldr	r3, .L25+28
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L24
.L13:
	pop	{r4, r5, r6, lr}
	bx	lr
.L24:
	pop	{r4, r5, r6, lr}
	b	goToSplash
.L23:
	ldr	r2, .L25+32
	ldr	r3, .L25+36
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L25+40
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L25+44
	ldrh	r1, [r3]
	ldr	r3, .L25+48
	strh	r1, [r5, #22]	@ movhi
	ldrh	r1, [r3]
	ldr	r3, .L25+52
	strh	r1, [r5, #20]	@ movhi
	str	r2, [r3]
	ldrh	r3, [r6]
	b	.L14
.L26:
	.align	2
.L25:
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
	ldr	r3, .L29
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #2
	ldr	r2, .L29+4
	ldr	r0, .L29+8
	ldrh	r2, [r2]
	ldrh	r0, [r0]
	strh	r2, [r3, #22]	@ movhi
	ldr	r2, .L29+12
	strh	r0, [r3, #20]	@ movhi
	pop	{r4, lr}
	str	r1, [r2]
	bx	lr
.L30:
	.align	2
.L29:
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
	mov	r4, #60
	mov	lr, #9
	mov	ip, #512
	mov	r0, #190
	mov	r1, #129
	strh	r2, [r3, #22]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	ldr	r2, .L33
	str	r4, [r2]
	ldr	r2, .L33+4
	str	lr, [r2]
	ldr	r2, .L33+8
	strh	ip, [r3]	@ movhi
	ldr	r3, .L33+12
	str	r0, [r2, #8]
	str	r1, [r2, #12]
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L33+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L34:
	.align	2
.L33:
	.word	vOff
	.word	hOff
	.word	panda
	.word	hideSprites
	.word	state
	.size	goToGame2, .-goToGame2
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
	push	{r4, r5, r6, lr}
	mov	r2, #512
	mov	r6, #67108864
	ldr	r5, .L48
	ldr	r3, [r5]
	add	r3, r3, #1
	str	r3, [r5]
	ldr	r4, .L48+4
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r6]	@ movhi
	ldr	r1, .L48+8
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #2816
	mov	r3, #1536
	mov	r0, #3
	strh	r2, [r6, #10]	@ movhi
	ldr	r1, .L48+12
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L48+16
	ldr	r1, .L48+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L48+24
	add	r1, r3, #1024
.L36:
	strh	r2, [r3]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	add	r3, r3, #8
	cmp	r3, r1
	bne	.L36
	ldr	r6, .L48+28
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L48+24
	mov	lr, pc
	bx	r4
	ldrh	r3, [r6]
	tst	r3, #8
	beq	.L37
	ldr	r2, .L48+32
	ldrh	r2, [r2]
	ands	r4, r2, #8
	beq	.L47
.L37:
	tst	r3, #4
	beq	.L35
	ldr	r3, .L48+32
	ldrh	r3, [r3]
	tst	r3, #4
	moveq	r2, #1
	ldreq	r3, .L48+36
	streq	r2, [r3]
.L35:
	pop	{r4, r5, r6, lr}
	bx	lr
.L47:
	ldr	r0, [r5]
	ldr	r3, .L48+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L48+44
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	ldr	r3, .L48+48
	strh	r4, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L48+52
	mov	r2, #1
	ldr	r1, .L48+56
	ldr	r0, .L48+60
	mov	lr, pc
	bx	r3
	bl	goToGame2
	ldrh	r3, [r6]
	b	.L37
.L49:
	.align	2
.L48:
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
	.word	playSoundA
	.word	1324512
	.word	gameSound
	.size	splash, .-splash
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
	mov	r3, #128
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
	mov	r3, #512
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
	ldr	r6, .L72+44
	strh	r3, [r5, #8]	@ movhi
	ldr	r3, .L72+48
	mov	lr, pc
	bx	r3
	ldrh	r3, [r6]
	tst	r3, #8
	beq	.L51
	ldr	r2, .L72+52
	ldrh	r2, [r2]
	ands	r4, r2, #8
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
	mov	r2, #4
	strh	r4, [r5, #24]	@ movhi
	ldr	r3, .L72+60
	strh	r4, [r5, #26]	@ movhi
	str	r2, [r3]
	ldrh	r3, [r6]
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
	.word	100698112
	.word	scoreBackgroundMap
	.word	4356
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
	mov	r2, #5376
	mov	r5, #67108864
	ldr	r4, .L96
	mov	r3, #512
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L96+4
	mov	r2, #117440512
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L96+8
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #1024
	mov	r0, #3
	strh	r2, [r5, #12]	@ movhi
	ldr	r1, .L96+12
	ldr	r2, .L96+16
	mov	lr, pc
	bx	r4
	mov	r3, #48
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L96+20
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L96+24
	mov	lr, pc
	bx	r4
	mov	r3, #512
	mov	r0, #3
	ldr	r2, .L96+28
	ldr	r1, .L96+32
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L96+36
	ldr	r1, .L96+40
	mov	lr, pc
	bx	r4
	ldr	r3, .L96+44
	ldr	r6, .L96+48
	strh	r3, [r5, #8]	@ movhi
	ldr	r3, .L96+52
	mov	lr, pc
	bx	r3
	ldrh	r3, [r6]
	tst	r3, #8
	beq	.L75
	ldr	r2, .L96+56
	ldrh	r2, [r2]
	ands	r4, r2, #8
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
	mov	r2, #4
	strh	r4, [r5, #24]	@ movhi
	ldr	r3, .L96+64
	strh	r4, [r5, #26]	@ movhi
	str	r2, [r3]
	ldrh	r3, [r6]
	b	.L75
.L97:
	.align	2
.L96:
	.word	DMANow
	.word	shadowOAM
	.word	gameScreen2Pal
	.word	gameScreen2Map
	.word	100726784
	.word	gameScreen2Tiles
	.word	scoreBackgroundPal
	.word	100679680
	.word	scoreBackgroundTiles
	.word	100698112
	.word	scoreBackgroundMap
	.word	4356
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
	mov	r3, #67108864
	mov	r2, #0
	mov	r0, #4
	ldr	r1, .L99
	strh	r2, [r3, #24]	@ movhi
	strh	r2, [r3, #26]	@ movhi
	str	r0, [r1]
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
	mov	r3, #256
	mov	r5, #67108864
	ldr	r4, .L108
	mov	r2, #83886080
	mov	r0, #3
	strh	r3, [r5]	@ movhi
	ldr	r1, .L108+4
	mov	lr, pc
	bx	r4
	mov	r2, #2816
	mov	r3, #96
	mov	r0, #3
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L108+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
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
	mov	r3, #256
	mov	r5, #67108864
	ldr	r4, .L134
	mov	r2, #83886080
	mov	r0, #3
	strh	r3, [r5]	@ movhi
	ldr	r1, .L134+4
	mov	lr, pc
	bx	r4
	mov	r2, #2816
	mov	r3, #944
	mov	r0, #3
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L134+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
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
	.comm	baskets,120,4
	.comm	enemies,600,4
	.comm	food,1200,4
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
