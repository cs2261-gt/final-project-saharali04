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
	ldr	r3, .L15
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #2
	ldr	r3, .L15+4
	ldr	r3, [r3]
	lsl	r3, r3, #24
	orr	r3, r3, #1073741824
	lsr	r3, r3, #16
	strh	r3, [r2, #10]	@ movhi
	ldr	r3, .L15+8
	ldr	r0, .L15+12
	ldrh	r3, [r3]
	ldrh	r0, [r0]
	strh	r3, [r2, #22]	@ movhi
	ldr	r3, .L15+16
	strh	r0, [r2, #20]	@ movhi
	pop	{r4, lr}
	str	r1, [r3]
	bx	lr
.L16:
	.align	2
.L15:
	.word	hideSprites
	.word	screenBlock
	.word	vOff
	.word	hOff
	.word	state
	.size	goToGame, .-goToGame
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
	ldr	r5, .L30
	ldr	r3, [r5]
	add	r3, r3, #1
	str	r3, [r5]
	ldr	r4, .L30+4
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r6]	@ movhi
	ldr	r1, .L30+8
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #1536
	mov	r0, #3
	strh	r2, [r6, #10]	@ movhi
	ldr	r1, .L30+12
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L30+16
	ldr	r1, .L30+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L30+24
	add	r1, r3, #1024
.L18:
	strh	r2, [r3]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	add	r3, r3, #8
	cmp	r3, r1
	bne	.L18
	ldr	r6, .L30+28
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L30+24
	mov	lr, pc
	bx	r4
	ldrh	r3, [r6]
	tst	r3, #8
	beq	.L19
	ldr	r2, .L30+32
	ldrh	r2, [r2]
	ands	r4, r2, #8
	beq	.L29
.L19:
	tst	r3, #4
	beq	.L17
	ldr	r3, .L30+32
	ldrh	r3, [r3]
	tst	r3, #4
	moveq	r2, #1
	ldreq	r3, .L30+36
	streq	r2, [r3]
.L17:
	pop	{r4, r5, r6, lr}
	bx	lr
.L29:
	ldr	r0, [r5]
	ldr	r3, .L30+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L30+44
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	ldr	r3, .L30+48
	strh	r4, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L30+52
	mov	r2, #1
	ldr	r1, .L30+56
	ldr	r0, .L30+60
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r6]
	b	.L19
.L31:
	.align	2
.L30:
	.word	seed
	.word	DMANow
	.word	splashScreenPal
	.word	splashScreenTiles
	.word	100726784
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
	ldr	r4, .L44
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L44+4
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r3, .L44+8
	mov	r2, #100663296
	ldr	r1, .L44+12
	ldr	r5, .L44+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L44+20
	ldr	r1, .L44+24
	mov	lr, pc
	bx	r4
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L33
	ldr	r2, .L44+28
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L42
.L33:
	tst	r3, #4
	beq	.L32
	ldr	r3, .L44+28
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L43
.L32:
	pop	{r4, r5, r6, lr}
	bx	lr
.L43:
	pop	{r4, r5, r6, lr}
	b	goToSplash
.L42:
	ldr	r2, .L44+32
	ldr	r3, .L44+36
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r5]
	b	.L33
.L45:
	.align	2
.L44:
	.word	DMANow
	.word	instructionsScreenPal
	.word	6432
	.word	instructionsScreenTiles
	.word	oldButtons
	.word	100726784
	.word	instructionsScreenMap
	.word	buttons
	.word	seed
	.word	srand
	.size	instruction, .-instruction
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
	mov	r2, #67108864
	mov	r1, #4608
	push	{r4, r5, r6, lr}
	mov	r3, #256
	strh	r1, [r2]	@ movhi
	ldr	r4, .L66
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L66+4
	mov	lr, pc
	bx	r4
	mov	r3, #528
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L66+8
	mov	lr, pc
	bx	r4
	ldr	r5, .L66+12
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L66+16
	ldr	r1, .L66+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L66+24
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L47
	ldr	r2, .L66+28
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L64
.L47:
	tst	r3, #4
	beq	.L48
	ldr	r3, .L66+28
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L65
.L48:
	ldr	r3, .L66+32
	ldr	r2, [r3]
	cmp	r2, #0
	movne	r1, #6
	ldrne	r2, .L66+36
	ldr	r3, [r3, #4]
	strne	r1, [r2]
	cmp	r3, #0
	movne	r2, #5
	ldrne	r3, .L66+36
	pop	{r4, r5, r6, lr}
	strne	r2, [r3]
	bx	lr
.L65:
	ldr	r4, .L66+40
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r1, .L66+44
	ldr	r3, .L66+48
	ldr	r0, .L66+52
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #512
	ldr	r3, .L66+56
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L66+36
	str	r2, [r3]
	b	.L48
.L64:
	ldr	r3, .L66+60
	mov	lr, pc
	bx	r3
	mov	r1, #4
	ldr	r2, .L66+36
	ldrh	r3, [r5]
	str	r1, [r2]
	b	.L47
.L67:
	.align	2
.L66:
	.word	DMANow
	.word	gameScreenPal
	.word	gameScreenTiles
	.word	oldButtons
	.word	100720640
	.word	gameScreenMap
	.word	updateGame
	.word	buttons
	.word	.LANCHOR0
	.word	state
	.word	stopSound
	.word	677952
	.word	playSoundA
	.word	gameSound2
	.word	hideSprites
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
	mov	r2, #67108864
	mov	r1, #512
	push	{r4, lr}
	ldr	r3, .L70
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L70+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L71:
	.align	2
.L70:
	.word	hideSprites
	.word	state
	.size	goToGame2, .-goToGame2
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
	ldr	r4, .L92
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L92+4
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L92+8
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #7936
	mov	r3, #496
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L92+12
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L92+16
	ldr	r1, .L92+20
	mov	lr, pc
	bx	r4
	mov	r3, #4608
	ldr	r4, .L92+24
	strh	r3, [r5]	@ movhi
	ldr	r3, .L92+28
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L73
	ldr	r2, .L92+32
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L90
.L73:
	tst	r3, #4
	beq	.L74
	ldr	r3, .L92+32
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L91
.L74:
	ldr	r3, .L92+36
	ldr	r2, [r3]
	cmp	r2, #0
	movne	r1, #6
	ldrne	r2, .L92+40
	ldr	r3, [r3, #4]
	strne	r1, [r2]
	cmp	r3, #0
	movne	r2, #5
	ldrne	r3, .L92+40
	pop	{r4, r5, r6, lr}
	strne	r2, [r3]
	bx	lr
.L91:
	ldr	r3, .L92+44
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L92+48
	ldr	r3, .L92+52
	ldr	r0, .L92+56
	mov	lr, pc
	bx	r3
	bl	goToGame
	b	.L74
.L90:
	ldr	r3, .L92+60
	mov	lr, pc
	bx	r3
	mov	r1, #4
	ldr	r2, .L92+40
	ldrh	r3, [r4]
	str	r1, [r2]
	b	.L73
.L93:
	.align	2
.L92:
	.word	DMANow
	.word	shadowOAM
	.word	gameScreen2Pal
	.word	gameScreen2Tiles
	.word	100726784
	.word	gameScreen2Map
	.word	oldButtons
	.word	updateGame2
	.word	buttons
	.word	.LANCHOR0
	.word	state
	.word	stopSound
	.word	1324512
	.word	playSoundA
	.word	gameSound
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
	ldr	r3, .L95
	str	r2, [r3]
	bx	lr
.L96:
	.align	2
.L95:
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
	mov	r2, #512
	mov	r5, #67108864
	ldr	r4, .L104
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L104+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #96
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L104+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L104+12
	ldr	r1, .L104+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L104+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L97
	ldr	r3, .L104+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L103
.L97:
	pop	{r4, r5, r6, lr}
	bx	lr
.L103:
	ldr	r3, .L104+28
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToGame
.L105:
	.align	2
.L104:
	.word	DMANow
	.word	pauseScreenPal
	.word	pauseScreenTiles
	.word	100726784
	.word	pauseScreenMap
	.word	oldButtons
	.word	buttons
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
	@ link register save eliminated.
	mov	r2, #5
	ldr	r3, .L107
	str	r2, [r3]
	bx	lr
.L108:
	.align	2
.L107:
	.word	state
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
	ldr	r4, .L116
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L116+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #880
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L116+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L116+12
	ldr	r1, .L116+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L116+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L109
	ldr	r3, .L116+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L115
.L109:
	pop	{r4, r5, r6, lr}
	bx	lr
.L115:
	pop	{r4, r5, r6, lr}
	b	goToSplash
.L117:
	.align	2
.L116:
	.word	DMANow
	.word	winScreenPal
	.word	winScreenTiles
	.word	100726784
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
	@ link register save eliminated.
	mov	r2, #6
	ldr	r3, .L119
	str	r2, [r3]
	bx	lr
.L120:
	.align	2
.L119:
	.word	state
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
	mov	r2, #512
	mov	r5, #67108864
	ldr	r4, .L128
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L128+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #944
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L128+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L128+12
	ldr	r1, .L128+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L128+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L121
	ldr	r3, .L128+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L127
.L121:
	pop	{r4, r5, r6, lr}
	bx	lr
.L127:
	pop	{r4, r5, r6, lr}
	b	goToSplash
.L129:
	.align	2
.L128:
	.word	DMANow
	.word	loseScreenPal
	.word	loseScreenTiles
	.word	100726784
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
	ldr	r6, .L142
	push	{r4, r7, fp, lr}
	ldr	r3, .L142+4
	mov	lr, pc
	bx	r3
	ldr	fp, .L142+8
	ldr	r3, [r6]
	ldr	r10, .L142+12
	ldr	r9, .L142+16
	ldr	r8, .L142+20
	ldr	r5, .L142+24
	ldr	r7, .L142+28
	ldr	r4, .L142+32
.L140:
	cmp	r3, #6
	ldrls	pc, [pc, r3, asl #2]
	b	.L131
.L133:
	.word	.L139
	.word	.L138
	.word	.L137
	.word	.L136
	.word	.L135
	.word	.L134
	.word	.L132
.L132:
	ldr	r3, .L142+36
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
.L131:
	ldrh	r1, [r7]
	strh	r1, [r5]	@ movhi
	ldrh	r1, [r4, #48]
	strh	r1, [r7]	@ movhi
	b	.L140
.L134:
	ldr	r3, .L142+40
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	b	.L131
.L135:
	ldr	r3, .L142+44
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	b	.L131
.L136:
	mov	lr, pc
	bx	r8
	ldr	r3, [r6]
	b	.L131
.L137:
	mov	lr, pc
	bx	r9
	ldr	r3, [r6]
	b	.L131
.L139:
	mov	lr, pc
	bx	fp
	ldr	r3, [r6]
	b	.L131
.L138:
	mov	lr, pc
	bx	r10
	ldr	r3, [r6]
	b	.L131
.L143:
	.align	2
.L142:
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
