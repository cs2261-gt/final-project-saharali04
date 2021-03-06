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
	push	{r4, r5, r6, lr}
	mov	r3, #256
	mov	r6, #67108864
	ldr	r2, .L6
	ldr	r5, .L6+4
	mov	r0, #3
	strh	r3, [r6]	@ movhi
	strh	r2, [r6, #8]	@ movhi
	ldr	r1, .L6+8
	mov	r2, #83886080
	mov	lr, pc
	bx	r5
	mov	r3, #3376
	mov	r0, #3
	ldr	r2, .L6+12
	ldr	r1, .L6+16
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L6+20
	ldr	r1, .L6+24
	mov	lr, pc
	bx	r5
	mov	r1, #0
	mov	r4, r1
	ldr	r0, .L6+28
	strh	r1, [r6, #20]	@ movhi
	ldr	r2, .L6+32
	strh	r1, [r6, #22]	@ movhi
	ldr	ip, .L6+36
	str	r1, [r0]
	ldr	r3, .L6+40
	ldr	r0, .L6+44
	str	r1, [r2]
	str	r1, [ip]
	add	r2, r3, #1488
	str	r1, [r0]
	str	r1, [r0, #4]
	add	r2, r2, #8
.L2:
	str	r4, [r3, #40]
	add	r3, r3, #44
	cmp	r3, r2
	bne	.L2
	ldr	r3, .L6+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L6+52
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L6+56
	ldr	r0, .L6+60
	ldr	r3, .L6+64
	mov	lr, pc
	bx	r3
	ldr	r3, .L6+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L6+72
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L6+76
	mov	lr, pc
	bx	r5
	ldr	r3, .L6+80
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	6920
	.word	DMANow
	.word	splashScreenPal
	.word	100696064
	.word	splashScreenTiles
	.word	100718592
	.word	splashScreenMap
	.word	seed
	.word	goToChina
	.word	goToMaze
	.word	enemies
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
	ldr	r2, .L10
	push	{r4, lr}
	strh	r0, [r3, #10]	@ movhi
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r4, .L10+4
	mov	r3, #16
	mov	r0, #3
	ldr	r2, .L10+8
	ldr	r1, .L10+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #16384
	ldr	r2, .L10+16
	ldr	r1, .L10+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L10+24
	ldr	r2, .L10+28
	ldrh	r1, [r3, #48]
	ldr	r3, .L10+32
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L10+36
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToSplash
.L11:
	.align	2
.L10:
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
	ldr	r3, .L14
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToSplash
.L15:
	.align	2
.L14:
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
	mov	r1, #256
	ldr	r2, .L18
	push	{r4, lr}
	mov	r0, #3
	ldr	r4, .L18+4
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r1, .L18+8
	mov	r3, #16
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L18+12
	ldr	r2, .L18+16
	ldr	r1, .L18+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L18+24
	mov	r0, #3
	ldr	r1, .L18+28
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L18+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L19:
	.align	2
.L18:
	.word	6920
	.word	DMANow
	.word	instructionsScreenPal
	.word	4336
	.word	100696064
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
	mov	r2, #67108864
	mov	r3, #4608
	push	{r4, r5, r6, lr}
	ldr	r5, .L22
	strh	r3, [r2]	@ movhi
	ldr	r3, [r5]
	lsl	r3, r3, #24
	orr	r3, r3, #1073741824
	lsr	r3, r3, #16
	ldr	r4, .L22+4
	strh	r3, [r2, #10]	@ movhi
	mov	r0, #3
	mov	r3, #16
	mov	r2, #83886080
	ldr	r1, .L22+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L22+12
	ldr	r1, .L22+16
	mov	lr, pc
	bx	r4
	ldr	r2, [r5]
	lsl	r2, r2, #11
	mov	r0, #3
	ldr	r1, .L22+20
	add	r2, r2, #100663296
	mov	r3, #3072
	mov	lr, pc
	bx	r4
	ldr	r3, .L22+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L22+28
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L22+32
	mov	lr, pc
	bx	r4
	mov	r2, #0
	mov	r4, #225
	mov	lr, #1
	mov	r0, #2
	ldr	r1, .L22+36
	ldr	r3, .L22+40
	str	r2, [r1]
	ldr	ip, .L22+44
	ldr	r1, .L22+48
	str	r4, [r3, #12]
	str	lr, [ip, #8]
	str	r2, [r3, #8]
	str	r0, [r1]
	pop	{r4, r5, r6, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	screenBlock
	.word	DMANow
	.word	gameScreenPal
	.word	14832
	.word	gameScreenTiles
	.word	gameScreenMap
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	goToMaze
	.word	door
	.word	.LANCHOR0
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
	ldr	r4, .L26
	strh	r2, [r5]	@ movhi
	strh	r3, [r5, #10]	@ movhi
	mov	r2, #83886080
	mov	r3, #16
	mov	r0, #3
	ldr	r1, .L26+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L26+8
	ldr	r1, .L26+12
	mov	lr, pc
	bx	r4
	mov	r3, #416
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L26+16
	mov	lr, pc
	bx	r4
	mov	r3, #752
	mov	r0, #3
	ldr	r2, .L26+20
	ldr	r1, .L26+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L26+28
	ldr	r1, .L26+32
	mov	lr, pc
	bx	r4
	mov	r3, #0
	ldr	r1, .L26+36
	ldr	r2, .L26+40
	str	r3, [r1]
	str	r3, [r2]
	ldr	ip, .L26+44
	ldr	r2, .L26+48
	ldr	r0, .L26+52
	ldr	r1, .L26+56
	str	r3, [ip]
	str	r3, [r0]
	str	r3, [r2]
	str	r3, [r1]
	strh	r3, [r5, #20]	@ movhi
	ldr	r1, .L26+60
	strh	r3, [r5, #22]	@ movhi
	str	r3, [r2, #8]
	str	r3, [r2, #4]
	mov	lr, pc
	bx	r1
	ldr	r3, .L26+64
	mov	lr, pc
	bx	r3
	ldr	r3, .L26+68
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L26+72
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L26+76
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L27:
	.align	2
.L26:
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
	.word	goToChina
	.word	goToMaze
	.word	.LANCHOR0
	.word	hOff
	.word	vOff
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
	ldr	r2, .L40
	ldr	r4, .L40+4
	ldr	r0, [r2]
	ldrh	r3, [r4]
	add	r0, r0, #1
	tst	r3, #8
	str	r0, [r2]
	beq	.L29
	ldr	r2, .L40+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L38
.L29:
	tst	r3, #1
	beq	.L28
	ldr	r3, .L40+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L39
.L28:
	pop	{r4, lr}
	bx	lr
.L39:
	ldr	r3, .L40+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToInstruction
.L38:
	ldr	r3, .L40+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L40+12
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L40+20
	ldr	r0, .L40+24
	ldr	r3, .L40+28
	mov	lr, pc
	bx	r3
	mov	r1, #5
	mov	r2, #4
	ldr	r3, .L40+32
	str	r1, [r3, #8]
	str	r2, [r3, #12]
	bl	goToGame2
	ldrh	r3, [r4]
	b	.L29
.L41:
	.align	2
.L40:
	.word	seed
	.word	oldButtons
	.word	buttons
	.word	stopSound
	.word	srand
	.word	1324512
	.word	gameSound
	.word	playSoundA
	.word	panda
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
	ldr	r4, .L54
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L43
	ldr	r2, .L54+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L52
.L43:
	tst	r3, #1
	beq	.L42
	ldr	r3, .L54+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L53
.L42:
	pop	{r4, lr}
	bx	lr
.L53:
	pop	{r4, lr}
	b	goToSplash
.L52:
	ldr	r2, .L54+8
	ldr	r3, .L54+12
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L54+16
	ldr	r0, .L54+20
	ldr	r3, .L54+24
	mov	lr, pc
	bx	r3
	mov	r1, #5
	mov	r2, #4
	ldr	r3, .L54+28
	str	r1, [r3, #8]
	str	r2, [r3, #12]
	bl	goToGame2
	ldrh	r3, [r4]
	b	.L43
.L55:
	.align	2
.L54:
	.word	oldButtons
	.word	buttons
	.word	seed
	.word	srand
	.word	1324512
	.word	gameSound
	.word	playSoundA
	.word	panda
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
	ldr	r5, .L58
	strh	r3, [r4]	@ movhi
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L58+4
	mov	lr, pc
	bx	r5
	mov	r3, #2464
	mov	r0, #3
	ldr	r2, .L58+8
	ldr	r1, .L58+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L58+16
	ldr	r1, .L58+20
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #0
	mov	r1, #4
	ldr	r2, .L58+24
	strh	r3, [r4, #16]	@ movhi
	strh	r3, [r4, #18]	@ movhi
	str	r1, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L59:
	.align	2
.L58:
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
	ldr	r3, .L69
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L69+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	ldr	r3, .L69+8
	ldr	r3, [r3, #8]
	cmp	r3, #0
	push	{r4, lr}
	ldr	r3, .L69+12
	beq	.L62
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L62:
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame2
.L70:
	.align	2
.L69:
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
	mov	r2, #256
	mov	r4, #67108864
	ldr	r5, .L73
	strh	r2, [r4]	@ movhi
	mov	r3, #16
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L73+4
	mov	lr, pc
	bx	r5
	mov	r3, #2800
	mov	r0, #3
	ldr	r2, .L73+8
	ldr	r1, .L73+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L73+16
	ldr	r1, .L73+20
	mov	lr, pc
	bx	r5
	mov	r3, #0
	ldr	r2, .L73+24
	strh	r3, [r4, #20]	@ movhi
	strh	r3, [r4, #22]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r2, #5
	ldr	r3, .L73+28
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L74:
	.align	2
.L73:
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
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L89
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L89+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L76
	ldr	r3, .L89+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L86
.L76:
	ldr	r3, .L89+12
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L87
.L77:
	ldr	r3, .L89+16
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L88
	pop	{r4, lr}
	bx	lr
.L88:
	pop	{r4, lr}
	b	goToWin
.L87:
	mov	r1, #5
	mov	r2, #4
	ldr	r3, .L89+20
	str	r1, [r3, #8]
	str	r2, [r3, #12]
	bl	goToGame2
	b	.L77
.L86:
	ldr	r3, .L89+24
	mov	lr, pc
	bx	r3
	bl	goToPause
	b	.L76
.L90:
	.align	2
.L89:
	.word	updateGame
	.word	oldButtons
	.word	buttons
	.word	goToChina
	.word	.LANCHOR0
	.word	panda
	.word	pauseSound
	.size	game, .-game
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
	ldr	r3, .L93
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	win.part.0
.L94:
	.align	2
.L93:
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
	mov	r2, #256
	mov	r4, #67108864
	ldr	r5, .L97
	strh	r2, [r4]	@ movhi
	mov	r3, #16
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L97+4
	mov	lr, pc
	bx	r5
	mov	r3, #2816
	mov	r0, #3
	ldr	r2, .L97+8
	ldr	r1, .L97+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L97+16
	ldr	r1, .L97+20
	mov	lr, pc
	bx	r5
	mov	r3, #0
	ldr	r2, .L97+24
	strh	r3, [r4, #16]	@ movhi
	ldr	r1, .L97+28
	strh	r3, [r4, #18]	@ movhi
	str	r3, [r2, #4]
	str	r3, [r2]
	mov	lr, pc
	bx	r1
	mov	r2, #6
	ldr	r3, .L97+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L98:
	.align	2
.L97:
	.word	DMANow
	.word	loseScreenPal
	.word	100696064
	.word	loseScreenTiles
	.word	100718592
	.word	loseScreenMap
	.word	panda
	.word	stopSound
	.word	state
	.size	goToLose, .-goToLose
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
	ldr	r4, .L114
	ldr	r3, .L114+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L100
	ldr	r3, .L114+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L111
.L100:
	ldr	r3, .L114+12
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L101
	ldrh	r3, [r4]
	tst	r3, #4
	bne	.L112
.L102:
	ldr	r3, .L114+16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L113
.L99:
	pop	{r4, lr}
	bx	lr
.L112:
	ldr	r3, .L114+8
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L102
.L101:
	ldr	r3, .L114+20
	mov	r4, #28
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L114+24
	ldr	r0, .L114+28
	ldr	r3, .L114+32
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r0, #64
	mov	ip, #67108864
	mov	r1, #73
	ldr	lr, .L114+36
	str	r4, [lr]
	ldr	lr, .L114+40
	str	r3, [lr]
	ldr	lr, .L114+44
	str	r3, [lr]
	ldr	lr, .L114+48
	ldr	r2, .L114+52
	str	r3, [lr]
	ldr	lr, .L114+56
	str	r0, [r2]
	str	r3, [lr]
	strh	r3, [ip, #22]	@ movhi
	strh	r3, [ip, #20]	@ movhi
	str	r0, [r2, #8]
	str	r1, [r2, #12]
	str	r1, [r2, #4]
	bl	goToGame
	ldr	r3, .L114+16
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L99
.L113:
	pop	{r4, lr}
	b	goToLose
.L111:
	ldr	r3, .L114+60
	mov	lr, pc
	bx	r3
	bl	goToPause
	b	.L100
.L115:
	.align	2
.L114:
	.word	oldButtons
	.word	updateGame2
	.word	buttons
	.word	goToMaze
	.word	.LANCHOR0
	.word	stopSound
	.word	1324512
	.word	gameSound
	.word	playSoundA
	.word	screenBlock
	.word	playerHOff
	.word	totalHOff
	.word	hOff
	.word	panda
	.word	vOff
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
	ldr	r6, .L134
	push	{r4, r7, fp, lr}
	ldr	r3, .L134+4
	mov	lr, pc
	bx	r3
	ldr	fp, .L134+8
	ldr	r3, [r6]
	ldr	r10, .L134+12
	ldr	r9, .L134+16
	ldr	r8, .L134+20
	ldr	r4, .L134+24
	ldr	r7, .L134+28
	ldr	r5, .L134+32
.L128:
	cmp	r3, #6
	ldrls	pc, [pc, r3, asl #2]
	b	.L117
.L119:
	.word	.L125
	.word	.L124
	.word	.L123
	.word	.L122
	.word	.L121
	.word	.L120
	.word	.L118
.L121:
	ldr	r3, .L134+36
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
.L117:
	ldrh	r1, [r7]
	strh	r1, [r4]	@ movhi
	ldrh	r1, [r5, #48]
	strh	r1, [r7]	@ movhi
	b	.L128
.L122:
	mov	lr, pc
	bx	r8
	ldr	r3, [r6]
	b	.L117
.L125:
	mov	lr, pc
	bx	fp
	ldr	r3, [r6]
	b	.L117
.L123:
	mov	lr, pc
	bx	r9
	ldr	r3, [r6]
	b	.L117
.L124:
	mov	lr, pc
	bx	r10
	ldr	r3, [r6]
	b	.L117
.L118:
	ldrh	r3, [r4]
	tst	r3, #8
	bne	.L127
.L132:
	ldrh	r3, [r7]
	strh	r3, [r4]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r7]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L132
.L127:
	ldr	r3, .L134+40
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	b	.L117
.L120:
	ldrh	r3, [r4]
	tst	r3, #8
	bne	.L126
.L133:
	ldrh	r3, [r7]
	strh	r3, [r4]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r7]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L133
.L126:
	ldr	r3, .L134+44
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	b	.L117
.L135:
	.align	2
.L134:
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
