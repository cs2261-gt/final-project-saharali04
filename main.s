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
	mov	r1, #67108864
	push	{r4, lr}
	ldr	r2, .L4
	ldr	ip, .L4+4
	ldr	r0, .L4+8
	strh	r3, [r1, #20]	@ movhi
	strh	r3, [r1, #22]	@ movhi
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
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #1
	ldr	r2, .L15
	push	{r4, lr}
	ldr	r3, .L15+4
	str	r1, [r2, #8]
	mov	lr, pc
	bx	r3
	ldr	r3, .L15+8
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	ip, #120
	mov	r0, #70
	mov	r1, #2
	ldr	r3, .L15+12
	ldrh	r3, [r3]
	strh	r3, [r2, #22]	@ movhi
	ldr	r3, .L15+16
	ldrh	lr, [r3]
	ldr	r3, .L15+20
	strh	lr, [r2, #20]	@ movhi
	ldr	r2, .L15+24
	str	ip, [r3, #12]
	str	r0, [r3, #8]
	str	r1, [r2]
	pop	{r4, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	.LANCHOR0
	.word	initPandas
	.word	hideSprites
	.word	vOff
	.word	hOff
	.word	panda
	.word	state
	.size	goToGame, .-goToGame
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
	ldr	r4, .L34
	mov	r3, #16
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L34+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r3, #25600
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L34+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L34+12
	ldr	r1, .L34+16
	mov	lr, pc
	bx	r4
	mov	r3, #16
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L34+20
	mov	lr, pc
	bx	r4
	mov	r3, #512
	mov	r0, #3
	ldr	r2, .L34+24
	ldr	r1, .L34+28
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L34+32
	ldr	r1, .L34+36
	mov	lr, pc
	bx	r4
	ldr	r2, .L34+40
	ldr	r3, .L34+44
	strh	r2, [r5, #8]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L34+48
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L18
	ldr	r3, .L34+52
	ldrh	r3, [r3]
	ands	r4, r3, #8
	beq	.L31
.L18:
	ldr	r4, .L34+56
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L32
.L19:
	ldr	r3, [r4, #4]
	cmp	r3, #0
	bne	.L33
	pop	{r4, r5, r6, lr}
	bx	lr
.L33:
	mov	r3, #67108864
	mov	r2, #0
	mov	ip, #5
	ldr	r0, .L34+60
	strh	r2, [r3, #20]	@ movhi
	ldr	r1, .L34+64
	strh	r2, [r3, #22]	@ movhi
	str	ip, [r0]
	mov	lr, pc
	bx	r1
	pop	{r4, r5, r6, lr}
	bx	lr
.L32:
	mov	r3, #67108864
	mov	r2, #0
	mov	r0, #6
	ldr	r1, .L34+60
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	ldr	r3, .L34+64
	str	r0, [r1]
	mov	lr, pc
	bx	r3
	b	.L19
.L31:
	ldr	r3, .L34+68
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L34+60
	strh	r4, [r5, #16]	@ movhi
	strh	r4, [r5, #18]	@ movhi
	str	r2, [r3]
	b	.L18
.L35:
	.align	2
.L34:
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
	.word	updateGame
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	state
	.word	stopSound
	.word	pauseSound
	.size	game, .-game
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
	mov	r3, #0
	mov	r2, #67108864
	mov	r1, #512
	mov	ip, #5
	mov	r0, #4
	push	{r4, lr}
	ldr	lr, .L38
	str	r3, [lr]
	ldr	lr, .L38+4
	str	r3, [lr]
	ldr	lr, .L38+8
	str	r3, [lr]
	strh	r1, [r2]	@ movhi
	ldr	lr, .L38+12
	ldr	r2, .L38+16
	ldr	r1, .L38+20
	str	r3, [lr, #8]
	str	ip, [r2, #8]
	str	r0, [r2, #12]
	mov	lr, pc
	bx	r1
	mov	r2, #3
	ldr	r3, .L38+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L39:
	.align	2
.L38:
	.word	count
	.word	hOff
	.word	vOff
	.word	.LANCHOR0
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
	ldr	r5, .L53
	ldr	r3, [r5]
	add	r3, r3, #1
	str	r3, [r5]
	ldr	r4, .L53+4
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r6]	@ movhi
	ldr	r1, .L53+8
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #2816
	mov	r3, #2096
	mov	r0, #3
	strh	r2, [r6, #10]	@ movhi
	ldr	r1, .L53+12
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L53+16
	ldr	r1, .L53+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L53+24
	add	r1, r3, #1024
.L41:
	strh	r2, [r3]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	add	r3, r3, #8
	cmp	r3, r1
	bne	.L41
	ldr	r6, .L53+28
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L53+24
	mov	lr, pc
	bx	r4
	ldrh	r3, [r6]
	tst	r3, #8
	beq	.L42
	ldr	r2, .L53+32
	ldrh	r2, [r2]
	ands	r4, r2, #8
	beq	.L52
.L42:
	tst	r3, #1
	beq	.L40
	ldr	r3, .L53+32
	ldrh	r3, [r3]
	tst	r3, #1
	moveq	r2, #1
	ldreq	r3, .L53+36
	streq	r2, [r3]
.L40:
	pop	{r4, r5, r6, lr}
	bx	lr
.L52:
	ldr	r0, [r5]
	ldr	r3, .L53+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L53+44
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	ldr	r3, .L53+48
	strh	r4, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L53+52
	mov	r2, #1
	ldr	r1, .L53+56
	ldr	r0, .L53+60
	mov	lr, pc
	bx	r3
	bl	goToGame2
	ldrh	r3, [r6]
	b	.L42
.L54:
	.align	2
.L53:
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
	ldr	r4, .L67
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L67+4
	mov	lr, pc
	bx	r4
	mov	r2, #2816
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r3, .L67+8
	mov	r2, #100663296
	ldr	r1, .L67+12
	ldr	r5, .L67+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L67+20
	ldr	r1, .L67+24
	mov	lr, pc
	bx	r4
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L56
	ldr	r2, .L67+28
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L65
.L56:
	tst	r3, #1
	beq	.L55
	ldr	r3, .L67+28
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L66
.L55:
	pop	{r4, r5, r6, lr}
	bx	lr
.L66:
	pop	{r4, r5, r6, lr}
	b	goToSplash
.L65:
	ldr	r2, .L67+32
	ldr	r3, .L67+36
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	bl	goToGame2
	ldrh	r3, [r5]
	b	.L56
.L68:
	.align	2
.L67:
	.word	DMANow
	.word	instructionsScreenPal
	.word	5792
	.word	instructionsScreenTiles
	.word	oldButtons
	.word	100685824
	.word	instructionsScreenMap
	.word	buttons
	.word	seed
	.word	srand
	.size	instruction, .-instruction
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
	mov	r2, #4864
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
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L96+12
	ldr	r2, .L96+16
	mov	lr, pc
	bx	r4
	mov	r3, #128
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L96+20
	mov	lr, pc
	bx	r4
	mov	r3, #16
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
	ldr	r4, .L96+48
	strh	r3, [r5, #8]	@ movhi
	ldr	r3, .L96+52
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L70
	ldr	r3, .L96+56
	ldrh	r3, [r3]
	ands	r6, r3, #8
	beq	.L91
.L70:
	ldr	r3, .L96+60
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L92
.L71:
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L72
	ldr	r3, .L96+56
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L93
.L72:
	ldr	r4, .L96+64
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L94
.L73:
	ldr	r3, [r4, #4]
	cmp	r3, #0
	bne	.L95
	pop	{r4, r5, r6, lr}
	bx	lr
.L92:
	ldr	r3, .L96+68
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L96+72
	ldr	r3, .L96+76
	ldr	r0, .L96+80
	mov	lr, pc
	bx	r3
	bl	goToGame
	b	.L71
.L95:
	mov	r3, #67108864
	mov	r2, #0
	mov	ip, #5
	ldr	r0, .L96+84
	strh	r2, [r3, #20]	@ movhi
	ldr	r1, .L96+68
	strh	r2, [r3, #22]	@ movhi
	str	ip, [r0]
	mov	lr, pc
	bx	r1
	pop	{r4, r5, r6, lr}
	bx	lr
.L94:
	mov	r3, #67108864
	mov	r2, #0
	mov	r0, #6
	ldr	r1, .L96+84
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	ldr	r3, .L96+68
	str	r0, [r1]
	mov	lr, pc
	bx	r3
	b	.L73
.L93:
	bl	goToGame
	b	.L72
.L91:
	ldr	r3, .L96+88
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L96+84
	strh	r6, [r5, #16]	@ movhi
	strh	r6, [r5, #18]	@ movhi
	str	r2, [r3]
	b	.L70
.L97:
	.align	2
.L96:
	.word	DMANow
	.word	shadowOAM
	.word	gameScreen2Pal
	.word	gameScreen2Map
	.word	100726784
	.word	gameScreen2Tiles
	.word	scoreBackground2Pal
	.word	100679680
	.word	scoreBackground2Tiles
	.word	100698112
	.word	scoreBackground2Map
	.word	4356
	.word	oldButtons
	.word	updateGame2
	.word	buttons
	.word	goToMaze
	.word	.LANCHOR0
	.word	stopSound
	.word	1324512
	.word	playSoundA
	.word	gameSound
	.word	state
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
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
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
	mov	r3, #1168
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
	bne	.L101
	ldr	r3, .L108+28
	ldr	r3, [r3, #8]
	cmp	r3, #0
	ldr	r3, .L108+32
	beq	.L103
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToGame
.L101:
	pop	{r4, r5, r6, lr}
	bx	lr
.L103:
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToGame2
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
	.word	.LANCHOR0
	.word	unpauseSound
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
	mov	r3, #67108864
	mov	r2, #0
	mov	ip, #5
	push	{r4, lr}
	ldr	r0, .L112
	strh	r2, [r3, #20]	@ movhi
	ldr	r1, .L112+4
	strh	r2, [r3, #22]	@ movhi
	str	ip, [r0]
	mov	lr, pc
	bx	r1
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
	mov	r3, #1440
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
	mov	r3, #67108864
	mov	r2, #0
	mov	ip, #6
	push	{r4, lr}
	ldr	r0, .L125
	strh	r2, [r3, #16]	@ movhi
	ldr	r1, .L125+4
	strh	r2, [r3, #18]	@ movhi
	str	ip, [r0]
	mov	lr, pc
	bx	r1
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
	mov	r3, #1440
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
	ldr	r6, .L150
	push	{r4, r7, fp, lr}
	ldr	r3, .L150+4
	mov	lr, pc
	bx	r3
	ldr	fp, .L150+8
	ldr	r3, [r6]
	ldr	r10, .L150+12
	ldr	r9, .L150+16
	ldr	r8, .L150+20
	ldr	r4, .L150+24
	ldr	r7, .L150+28
	ldr	r5, .L150+32
.L147:
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L137
.L139:
	.word	.L146
	.word	.L145
	.word	.L144
	.word	.L143
	.word	.L142
	.word	.L141
	.word	.L140
	.word	.L148
.L140:
	ldr	r3, .L150+36
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
.L137:
	ldrh	r1, [r7]
	strh	r1, [r4]	@ movhi
	ldrh	r1, [r5, #48]
	strh	r1, [r7]	@ movhi
	b	.L147
.L141:
	ldr	r3, .L150+40
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	b	.L137
.L142:
	ldr	r3, .L150+44
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	b	.L137
.L143:
	mov	lr, pc
	bx	r8
	ldr	r3, [r6]
	b	.L137
.L144:
	mov	lr, pc
	bx	r9
	ldr	r3, [r6]
	b	.L137
.L146:
	mov	lr, pc
	bx	fp
	ldr	r3, [r6]
	b	.L137
.L145:
	mov	lr, pc
	bx	r10
	ldr	r3, [r6]
	b	.L137
.L148:
	mov	ip, #67108864
	mov	r0, #4	@ movhi
	ldr	r1, .L150+32
.L138:
	strh	r0, [ip]	@ movhi
	ldrh	r3, [r7]
	strh	r3, [r4]	@ movhi
	ldrh	r3, [r1, #48]
	strh	r3, [r7]	@ movhi
	b	.L138
.L151:
	.align	2
.L150:
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
	.text
	.align	2
	.global	goToTest
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToTest, %function
goToTest:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #7
	ldr	r3, .L153
	str	r2, [r3]
	bx	lr
.L154:
	.align	2
.L153:
	.word	state
	.size	goToTest, .-goToTest
	.align	2
	.global	test
	.syntax unified
	.arm
	.fpu softvfp
	.type	test, %function
test:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r2, #4
	strh	r2, [r3]	@ movhi
	bx	lr
	.size	test, .-test
	.comm	state,4,4
	.comm	seed,4,4
	.global	game1
	.comm	shadowOAM,1024,4
	.global	hasWon
	.global	hasLost
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	pandas,204,4
	.comm	baskets,120,4
	.comm	enemies,1480,4
	.comm	food,1480,4
	.comm	door,40,4
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
	.type	game1, %object
	.size	game1, 4
game1:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
