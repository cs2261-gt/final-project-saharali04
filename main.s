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
	ldr	r0, .L4+24
	ldr	r1, .L4+28
	ldr	r3, .L4+32
	strh	r4, [r6, #20]	@ movhi
	ldr	r2, .L4+36
	strh	r4, [r6, #22]	@ movhi
	str	r4, [ip]
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r3]
	str	r4, [r3, #4]
	mov	lr, pc
	bx	r2
	ldr	r3, .L4+40
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L4+44
	ldr	r0, .L4+48
	ldr	r3, .L4+52
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
	.word	goToMaze
	.word	goToChina
	.word	.LANCHOR0
	.word	initGame
	.word	stopSound
	.word	291428
	.word	splashSound
	.word	playSoundA
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
	mov	r2, #6912
	push	{r4, lr}
	mov	r0, #3
	ldr	r4, .L16
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	ldr	r1, .L16+4
	mov	r3, #16
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r3, #5760
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L16+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L16+12
	mov	r0, #3
	ldr	r1, .L16+16
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L16+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	DMANow
	.word	instructionsScreenPal
	.word	instructionsScreenTiles
	.word	100718592
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
	push	{r4, r5, r6, r7, r8, lr}
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
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L20+8
	ldr	r1, .L20+12
	mov	lr, pc
	bx	r4
	mov	r3, #3072
	mov	r0, #3
	ldr	r2, .L20+16
	ldr	r1, .L20+20
	mov	lr, pc
	bx	r4
	mov	r3, #480
	mov	r0, #3
	ldr	r2, .L20+24
	ldr	r1, .L20+28
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L20+32
	ldr	r1, .L20+36
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L20+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L20+44
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L20+48
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r7, #28
	mov	r2, #1
	mov	r0, #73
	mov	r1, #64
	mov	r4, #225
	mov	lr, #5
	mov	ip, #2
	ldr	r6, .L20+52
	str	r3, [r6]
	ldr	r6, .L20+56
	str	r3, [r6]
	ldr	r6, .L20+60
	str	r3, [r6]
	ldr	r6, .L20+64
	str	r3, [r6]
	ldr	r6, .L20+68
	str	r3, [r6]
	ldr	r6, .L20+72
	str	r7, [r6]
	strh	r3, [r5, #22]	@ movhi
	strh	r3, [r5, #20]	@ movhi
	ldr	r3, .L20+76
	str	r2, [r3, #8]
	ldr	r3, .L20+80
	ldr	r2, .L20+84
	str	r0, [r3, #12]
	str	r0, [r3, #4]
	ldr	r0, .L20+88
	str	r4, [r2, #12]
	str	lr, [r2, #8]
	str	r1, [r3, #8]
	str	r1, [r3]
	str	ip, [r0]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	DMANow
	.word	gameScreenPal
	.word	14688
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
	.word	goToMaze
	.word	playerHOff
	.word	totalHOff
	.word	hOff
	.word	vOff
	.word	screenBlock
	.word	.LANCHOR0
	.word	panda
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
	push	{r4, r5, r6, lr}
	mov	r2, #4864
	mov	r5, #67108864
	mov	r3, #7168
	ldr	r4, .L24
	strh	r2, [r5]	@ movhi
	strh	r3, [r5, #10]	@ movhi
	mov	r2, #83886080
	mov	r3, #16
	mov	r0, #3
	ldr	r1, .L24+4
	mov	lr, pc
	bx	r4
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
	mov	r3, #496
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
	mov	r3, #0
	mov	ip, #5
	mov	r0, #4
	ldr	r2, .L24+36
	ldr	r1, .L24+40
	str	r3, [r2]
	ldr	r2, .L24+44
	str	r3, [r1]
	ldr	r1, .L24+48
	ldr	lr, .L24+52
	str	r3, [r2]
	ldr	r2, .L24+56
	str	r3, [r1]
	strh	r3, [r5, #20]	@ movhi
	ldr	r1, .L24+60
	strh	r3, [r5, #22]	@ movhi
	str	r3, [lr, #8]
	str	ip, [r2, #8]
	str	r0, [r2, #12]
	mov	lr, pc
	bx	r1
	ldr	r3, .L24+64
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
	.word	goToChina
	.word	count
	.word	vOff
	.word	hOff
	.word	.LANCHOR0
	.word	panda
	.word	initEnemies
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
	ldr	r3, .L38+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToInstruction
.L36:
	ldr	r3, .L38+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L38+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L38+12
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
	.word	stopSound
	.word	srand
	.word	initGame
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
	ldr	r3, .L52+16
	mov	r2, #1
	ldr	r1, .L52+20
	ldr	r0, .L52+24
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
	.word	playSoundA
	.word	1324512
	.word	gameSound
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
	ldr	r3, .L100
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L100+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L82
	ldr	r3, .L100+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L96
.L82:
	ldr	r3, .L100+12
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L97
.L83:
	ldr	r4, .L100+16
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L98
.L84:
	ldr	r3, [r4, #4]
	cmp	r3, #0
	bne	.L99
	pop	{r4, lr}
	bx	lr
.L99:
	pop	{r4, lr}
	b	goToWin
.L98:
	bl	goToLose
	b	.L84
.L97:
	bl	goToGame2
	b	.L83
.L96:
	ldr	r3, .L100+20
	mov	lr, pc
	bx	r3
	bl	goToPause
	b	.L82
.L101:
	.align	2
.L100:
	.word	updateGame
	.word	oldButtons
	.word	buttons
	.word	goToChina
	.word	.LANCHOR0
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
	ldr	r3, .L121
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L121+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L103
	ldr	r3, .L121+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L117
.L103:
	ldr	r3, .L121+12
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L118
.L104:
	ldr	r4, .L121+16
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L119
.L105:
	ldr	r3, [r4, #4]
	cmp	r3, #0
	bne	.L120
	pop	{r4, lr}
	bx	lr
.L120:
	pop	{r4, lr}
	b	goToWin
.L119:
	bl	goToLose
	b	.L105
.L118:
	ldr	r3, .L121+20
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L121+24
	ldr	r0, .L121+28
	ldr	r3, .L121+32
	mov	lr, pc
	bx	r3
	bl	goToGame
	b	.L104
.L117:
	ldr	r3, .L121+36
	mov	lr, pc
	bx	r3
	bl	goToPause
	b	.L103
.L122:
	.align	2
.L121:
	.word	updateGame2
	.word	oldButtons
	.word	buttons
	.word	goToMaze
	.word	.LANCHOR0
	.word	stopSound
	.word	1324512
	.word	gameSound
	.word	playSoundA
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
	ldr	r6, .L141
	push	{r4, r7, fp, lr}
	ldr	r3, .L141+4
	mov	lr, pc
	bx	r3
	ldr	fp, .L141+8
	ldr	r3, [r6]
	ldr	r10, .L141+12
	ldr	r9, .L141+16
	ldr	r8, .L141+20
	ldr	r4, .L141+24
	ldr	r7, .L141+28
	ldr	r5, .L141+32
.L135:
	cmp	r3, #6
	ldrls	pc, [pc, r3, asl #2]
	b	.L124
.L126:
	.word	.L132
	.word	.L131
	.word	.L130
	.word	.L129
	.word	.L128
	.word	.L127
	.word	.L125
.L128:
	ldr	r3, .L141+36
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
.L124:
	ldrh	r1, [r7]
	strh	r1, [r4]	@ movhi
	ldrh	r1, [r5, #48]
	strh	r1, [r7]	@ movhi
	b	.L135
.L129:
	mov	lr, pc
	bx	r8
	ldr	r3, [r6]
	b	.L124
.L132:
	mov	lr, pc
	bx	fp
	ldr	r3, [r6]
	b	.L124
.L130:
	mov	lr, pc
	bx	r9
	ldr	r3, [r6]
	b	.L124
.L131:
	mov	lr, pc
	bx	r10
	ldr	r3, [r6]
	b	.L124
.L125:
	ldrh	r3, [r4]
	tst	r3, #8
	bne	.L134
.L139:
	ldrh	r3, [r7]
	strh	r3, [r4]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r7]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L139
.L134:
	ldr	r3, .L141+40
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	b	.L124
.L127:
	ldrh	r3, [r4]
	tst	r3, #8
	bne	.L133
.L140:
	ldrh	r3, [r7]
	strh	r3, [r4]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r7]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L140
.L133:
	ldr	r3, .L141+44
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	b	.L124
.L142:
	.align	2
.L141:
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
	.comm	state,4,4
	.comm	seed,4,4
	.global	game1
	.comm	shadowOAM,1024,4
	.global	hasWon
	.global	hasLost
	.comm	oldButtons,2,2
	.comm	buttons,2,2
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
