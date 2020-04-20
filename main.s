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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #7168
	mov	r6, #67108864
	mov	r7, #512
	mov	r4, #0
	ldr	r5, .L4
	strh	r3, [r6, #10]	@ movhi
	mov	r2, #83886080
	mov	r3, #256
	mov	r0, #3
	strh	r7, [r6]	@ movhi
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r5
	mov	r3, #2096
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r5
	ldr	ip, .L4+20
	ldr	r1, .L4+24
	ldr	r3, .L4+28
	ldr	r0, .L4+32
	strh	r4, [r6, #20]	@ movhi
	ldr	r2, .L4+36
	strh	r4, [r6, #22]	@ movhi
	str	r4, [ip]
	str	r4, [r1]
	str	r4, [r0]
	str	r4, [r3]
	str	r4, [r3, #4]
	mov	lr, pc
	bx	r2
	ldr	r3, .L4+40
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L4+44
	ldr	r3, .L4+48
	ldr	r0, .L4+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+60
	mov	lr, pc
	bx	r3
	mov	r3, r7
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L4+64
	mov	lr, pc
	bx	r5
	ldr	r3, .L4+68
	str	r4, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	splashScreenPal
	.word	splashScreenTiles
	.word	100720640
	.word	splashScreenMap
	.word	seed
	.word	goToChina
	.word	.LANCHOR0
	.word	goToMaze
	.word	initGame
	.word	stopSound
	.word	291428
	.word	playSoundA
	.word	splashSound
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	state
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
	mov	r3, #67108864
	mov	r0, #7168
	mov	r1, #4096
	ldr	r2, .L8
	push	{r4, lr}
	strh	r0, [r3, #10]	@ movhi
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r4, .L8+4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L8+8
	ldr	r1, .L8+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #16384
	ldr	r2, .L8+16
	ldr	r1, .L8+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L8+24
	ldr	r2, .L8+28
	ldrh	r1, [r3, #48]
	ldr	r3, .L8+32
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
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
	b	goToSplash
.L9:
	.align	2
.L8:
	.word	6920
	.word	DMANow
	.word	83886592
	.word	spriteSheetPal
	.word	100728832
	.word	spriteSheetTiles
	.word	67109120
	.word	buttons
	.word	initGame
	.word	initBaskets
	.word	initPandas
	.word	setupSounds
	.word	setupInterrupts
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	win.part.0, %function
win.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L12
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToSplash
.L13:
	.align	2
.L12:
	.word	buttons
	.size	win.part.0, .-win.part.0
	.set	lose.part.0,win.part.0
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
	mov	r3, #67108864
	mov	r1, #512
	mov	r2, #7168
	push	{r4, lr}
	mov	r0, #3
	ldr	r4, .L16
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	ldr	r1, .L16+4
	mov	r3, #256
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L16+8
	ldr	r1, .L16+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L16+16
	mov	r0, #3
	ldr	r1, .L16+20
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L16+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	DMANow
	.word	instructionsScreenPal
	.word	5792
	.word	instructionsScreenTiles
	.word	100720640
	.word	instructionsScreenMap
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r2, #4864
	mov	r5, #67108864
	mov	r3, #23552
	ldr	r4, .L20
	strh	r2, [r5]	@ movhi
	strh	r3, [r5, #10]	@ movhi
	mov	r2, #83886080
	mov	r3, #16
	mov	r0, #3
	ldr	r1, .L20+4
	mov	lr, pc
	bx	r4
	mov	r3, #19968
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L20+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L20+12
	ldr	r1, .L20+16
	mov	lr, pc
	bx	r4
	mov	r3, #512
	mov	r0, #3
	ldr	r2, .L20+20
	ldr	r1, .L20+24
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L20+28
	ldr	r1, .L20+32
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L20+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L20+40
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L20+44
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r8, #1
	mov	r2, #64
	mov	r1, #73
	mov	r7, #28
	mov	r6, #225
	mov	r4, #5
	mov	lr, #2
	ldr	r0, .L20+48
	ldr	ip, .L20+52
	ldrh	r9, [r0]
	str	r3, [ip]
	ldr	ip, .L20+56
	strh	r9, [r5, #22]	@ movhi
	ldrh	r9, [ip]
	strh	r9, [r5, #20]	@ movhi
	str	r3, [r0]
	ldr	r0, .L20+60
	str	r3, [r0]
	ldr	r0, .L20+64
	str	r3, [ip]
	str	r3, [r0]
	ldr	r3, .L20+68
	str	r8, [r3, #8]
	ldr	r3, .L20+72
	ldr	r0, .L20+76
	stmib	r3, {r1, r2}
	str	r1, [r3, #12]
	str	r2, [r3]
	ldr	r3, .L20+80
	ldr	r2, .L20+84
	str	r7, [r0]
	str	r6, [r3, #12]
	str	r4, [r3, #8]
	str	lr, [r2]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	DMANow
	.word	gameScreenPal
	.word	gameScreenTiles
	.word	100720640
	.word	gameScreenMap
	.word	100696064
	.word	scoreBackgroundTiles
	.word	100718592
	.word	scoreBackgroundMap
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	vOff
	.word	goToMaze
	.word	hOff
	.word	playerHOff
	.word	totalHOff
	.word	.LANCHOR0
	.word	panda
	.word	screenBlock
	.word	door
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
	mov	r1, #4864
	mov	r2, #7168
	push	{r4, r5, r6, lr}
	mov	r0, #3
	ldr	r4, .L24
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	ldr	r1, .L24+4
	mov	r3, #16
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r5, #0
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L24+8
	ldr	r1, .L24+12
	mov	lr, pc
	bx	r4
	mov	r3, #416
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L24+16
	mov	lr, pc
	bx	r4
	mov	r3, #512
	mov	r0, #3
	ldr	r2, .L24+20
	ldr	r1, .L24+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L24+28
	ldr	r1, .L24+32
	mov	lr, pc
	bx	r4
	mov	r0, #5
	mov	r1, #4
	ldr	r3, .L24+36
	ldr	r2, .L24+40
	str	r5, [r3]
	ldr	r3, .L24+44
	str	r5, [r2, #8]
	ldr	r2, .L24+48
	str	r5, [r3]
	ldr	r3, .L24+52
	str	r5, [r2]
	ldr	r2, .L24+56
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	mov	lr, pc
	bx	r2
	ldr	r2, .L24+60
	ldr	r3, .L24+64
	str	r5, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L24+68
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L24+72
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L24+76
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L25:
	.align	2
.L24:
	.word	DMANow
	.word	gameScreen2Pal
	.word	100720640
	.word	gameScreen2Map
	.word	gameScreen2Tiles
	.word	100696064
	.word	scoreBackground2Tiles
	.word	100718592
	.word	scoreBackground2Map
	.word	count
	.word	.LANCHOR0
	.word	hOff
	.word	vOff
	.word	panda
	.word	initEnemies
	.word	goToChina
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
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
	push	{r4, lr}
	ldr	r2, .L38
	ldr	r4, .L38+4
	ldr	r0, [r2]
	ldrh	r3, [r4]
	add	r0, r0, #1
	tst	r3, #8
	str	r0, [r2]
	beq	.L27
	ldr	r2, .L38+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L36
.L27:
	tst	r3, #1
	beq	.L26
	ldr	r3, .L38+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L37
.L26:
	pop	{r4, lr}
	bx	lr
.L37:
	pop	{r4, lr}
	b	goToInstruction
.L36:
	ldr	r3, .L38+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L38+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L38+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L38+24
	mov	r2, #1
	ldr	r1, .L38+28
	ldr	r0, .L38+32
	mov	lr, pc
	bx	r3
	bl	goToGame2
	ldrh	r3, [r4]
	b	.L27
.L39:
	.align	2
.L38:
	.word	seed
	.word	oldButtons
	.word	buttons
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
	push	{r4, lr}
	ldr	r4, .L52
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L41
	ldr	r2, .L52+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L50
.L41:
	tst	r3, #1
	beq	.L40
	ldr	r3, .L52+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L51
.L40:
	pop	{r4, lr}
	bx	lr
.L51:
	pop	{r4, lr}
	b	goToSplash
.L50:
	ldr	r2, .L52+8
	ldr	r3, .L52+12
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	bl	goToGame2
	ldrh	r3, [r4]
	b	.L41
.L53:
	.align	2
.L52:
	.word	oldButtons
	.word	buttons
	.word	seed
	.word	srand
	.size	instruction, .-instruction
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
	push	{r4, r5, r6, lr}
	mov	r3, #256
	mov	r4, #67108864
	ldr	r5, .L56
	strh	r3, [r4]	@ movhi
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L56+4
	mov	lr, pc
	bx	r5
	mov	r3, #1168
	mov	r0, #3
	ldr	r2, .L56+8
	ldr	r1, .L56+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L56+16
	ldr	r1, .L56+20
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #0
	mov	r1, #4
	ldr	r2, .L56+24
	strh	r3, [r4, #16]	@ movhi
	strh	r3, [r4, #18]	@ movhi
	str	r1, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L57:
	.align	2
.L56:
	.word	DMANow
	.word	pauseScreenPal
	.word	100696064
	.word	pauseScreenTiles
	.word	100718592
	.word	pauseScreenMap
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
	ldr	r3, .L67
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L67+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r3, .L67+8
	ldr	r3, [r3, #8]
	cmp	r3, #0
	push	{r4, lr}
	ldr	r3, .L67+12
	beq	.L60
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L60:
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame2
.L68:
	.align	2
.L67:
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
	push	{r4, r5, r6, lr}
	mov	r3, #256
	mov	r4, #67108864
	ldr	r5, .L71
	strh	r3, [r4]	@ movhi
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L71+4
	mov	lr, pc
	bx	r5
	mov	r3, #1440
	mov	r0, #3
	ldr	r2, .L71+8
	ldr	r1, .L71+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L71+16
	ldr	r1, .L71+20
	mov	lr, pc
	bx	r5
	mov	r3, #0
	ldr	r2, .L71+24
	strh	r3, [r4, #20]	@ movhi
	strh	r3, [r4, #22]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r2, #5
	ldr	r3, .L71+28
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L72:
	.align	2
.L71:
	.word	DMANow
	.word	winScreenPal
	.word	100696064
	.word	winScreenTiles
	.word	100718592
	.word	winScreenMap
	.word	stopSound
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
	@ link register save eliminated.
	ldr	r3, .L75
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	win.part.0
.L76:
	.align	2
.L75:
	.word	oldButtons
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
	push	{r4, r5, r6, lr}
	mov	r3, #256
	mov	r4, #67108864
	ldr	r5, .L79
	strh	r3, [r4]	@ movhi
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L79+4
	mov	lr, pc
	bx	r5
	mov	r3, #1440
	mov	r0, #3
	ldr	r2, .L79+8
	ldr	r1, .L79+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L79+16
	ldr	r1, .L79+20
	mov	lr, pc
	bx	r5
	mov	r3, #0
	ldr	r2, .L79+24
	strh	r3, [r4, #16]	@ movhi
	strh	r3, [r4, #18]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r2, #6
	ldr	r3, .L79+28
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L80:
	.align	2
.L79:
	.word	DMANow
	.word	loseScreenPal
	.word	100696064
	.word	loseScreenTiles
	.word	100718592
	.word	loseScreenMap
	.word	stopSound
	.word	state
	.size	goToLose, .-goToLose
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
	push	{r4, lr}
	ldr	r4, .L107
	ldr	r3, .L107+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L82
	ldr	r2, .L107+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L104
.L82:
	tst	r3, #4
	beq	.L83
	ldr	r3, .L107+8
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L83
	bl	goToGame2
.L85:
	ldr	r4, .L107+12
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L105
.L86:
	ldr	r3, [r4, #4]
	cmp	r3, #0
	bne	.L106
	pop	{r4, lr}
	bx	lr
.L83:
	ldr	r3, .L107+16
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L85
	bl	goToGame2
	b	.L85
.L106:
	pop	{r4, lr}
	b	goToWin
.L105:
	bl	goToLose
	b	.L86
.L104:
	ldr	r3, .L107+20
	mov	lr, pc
	bx	r3
	bl	goToPause
	ldrh	r3, [r4]
	b	.L82
.L108:
	.align	2
.L107:
	.word	oldButtons
	.word	updateGame
	.word	buttons
	.word	.LANCHOR0
	.word	goToChina
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
	push	{r4, lr}
	ldr	r4, .L133
	ldr	r3, .L133+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L110
	ldr	r3, .L133+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L128
.L110:
	ldr	r3, .L133+12
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L129
.L111:
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L112
	ldr	r3, .L133+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L130
.L112:
	ldr	r4, .L133+16
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L131
.L113:
	ldr	r3, [r4, #4]
	cmp	r3, #0
	bne	.L132
	pop	{r4, lr}
	bx	lr
.L129:
	ldr	r3, .L133+20
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L133+24
	ldr	r3, .L133+28
	ldr	r0, .L133+32
	mov	lr, pc
	bx	r3
	bl	goToGame
	b	.L111
.L132:
	pop	{r4, lr}
	b	goToWin
.L131:
	bl	goToLose
	b	.L113
.L130:
	bl	goToGame
	b	.L112
.L128:
	ldr	r3, .L133+36
	mov	lr, pc
	bx	r3
	bl	goToPause
	b	.L110
.L134:
	.align	2
.L133:
	.word	oldButtons
	.word	updateGame2
	.word	buttons
	.word	goToMaze
	.word	.LANCHOR0
	.word	stopSound
	.word	1324512
	.word	playSoundA
	.word	gameSound
	.word	pauseSound
	.size	game2, .-game2
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
	ldr	r6, .L153
	push	{r4, r7, fp, lr}
	ldr	r3, .L153+4
	mov	lr, pc
	bx	r3
	ldr	fp, .L153+8
	ldr	r3, [r6]
	ldr	r10, .L153+12
	ldr	r9, .L153+16
	ldr	r8, .L153+20
	ldr	r4, .L153+24
	ldr	r7, .L153+28
	ldr	r5, .L153+32
.L148:
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L136
.L138:
	.word	.L145
	.word	.L144
	.word	.L143
	.word	.L142
	.word	.L141
	.word	.L140
	.word	.L139
	.word	.L149
.L141:
	ldr	r3, .L153+36
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
.L136:
	ldrh	r1, [r7]
	strh	r1, [r4]	@ movhi
	ldrh	r1, [r5, #48]
	strh	r1, [r7]	@ movhi
	b	.L148
.L142:
	mov	lr, pc
	bx	r8
	ldr	r3, [r6]
	b	.L136
.L145:
	mov	lr, pc
	bx	fp
	ldr	r3, [r6]
	b	.L136
.L143:
	mov	lr, pc
	bx	r9
	ldr	r3, [r6]
	b	.L136
.L144:
	mov	lr, pc
	bx	r10
	ldr	r3, [r6]
	b	.L136
.L147:
	ldrh	r3, [r7]
	strh	r3, [r4]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r7]	@ movhi
.L139:
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L147
	ldr	r3, .L153+40
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	b	.L136
.L146:
	ldrh	r3, [r7]
	strh	r3, [r4]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r7]	@ movhi
.L140:
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L146
	ldr	r3, .L153+44
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	b	.L136
.L149:
	mov	ip, #67108864
	mov	r0, #4	@ movhi
	ldr	r1, .L153+32
.L137:
	strh	r0, [ip]	@ movhi
	ldrh	r3, [r7]
	strh	r3, [r4]	@ movhi
	ldrh	r3, [r1, #48]
	strh	r3, [r7]	@ movhi
	b	.L137
.L154:
	.align	2
.L153:
	.word	state
	.word	initialize
	.word	splash
	.word	instruction
	.word	game
	.word	game2
	.word	oldButtons
	.word	buttons
	.word	67109120
	.word	pause
	.word	lose.part.0
	.word	win.part.0
	.size	main, .-main
	.text
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
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
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
	ldr	r3, .L157
	str	r2, [r3]
	bx	lr
.L158:
	.align	2
.L157:
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
	.comm	enemies,1360,4
	.comm	food,1400,4
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
