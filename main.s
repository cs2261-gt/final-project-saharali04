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
	.global	initialize
	.arch armv4t
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
	ldr	r4, .L4
	mov	r0, #3
	ldr	r2, .L4+4
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+20
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #4096
	ldr	r3, .L4+24
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r2, .L4+28
	ldr	ip, .L4+32
	ldrh	lr, [r2, #48]
	ldr	r0, .L4+36
	ldr	r2, .L4+40
	ldr	r1, .L4+44
	strh	lr, [ip]	@ movhi
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
	str	r3, [r2, #4]
	str	r3, [r2, #8]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	83886592
	.word	spriteSheetPal
	.word	100728832
	.word	spriteSheetTiles
	.word	hideSprites
	.word	initGame
	.word	67109120
	.word	buttons
	.word	state
	.word	.LANCHOR0
	.word	seed
	.size	initialize, .-initialize
	.align	2
	.global	goToSplash
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToSplash, %function
goToSplash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r0, .L7
	ldr	r1, .L7+4
	ldr	r2, .L7+8
	str	r3, [r0]
	str	r3, [r1, #8]
	str	r3, [r2]
	bx	lr
.L8:
	.align	2
.L7:
	.word	state
	.word	.LANCHOR0
	.word	seed
	.size	goToSplash, .-goToSplash
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
	ldr	r5, .L22
	ldr	r3, [r5]
	add	r3, r3, #1
	str	r3, [r5]
	ldr	r4, .L22+4
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r6]	@ movhi
	ldr	r1, .L22+8
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #1536
	mov	r0, #3
	strh	r2, [r6, #10]	@ movhi
	ldr	r1, .L22+12
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L22+16
	ldr	r1, .L22+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L22+24
	add	r1, r3, #1024
.L10:
	strh	r2, [r3]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	add	r3, r3, #8
	cmp	r3, r1
	bne	.L10
	ldr	r6, .L22+28
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L22+24
	mov	lr, pc
	bx	r4
	ldrh	r3, [r6]
	tst	r3, #8
	beq	.L11
	ldr	r2, .L22+32
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L21
.L11:
	tst	r3, #4
	beq	.L9
	ldr	r3, .L22+32
	ldrh	r3, [r3]
	tst	r3, #4
	moveq	r2, #1
	ldreq	r3, .L22+36
	streq	r2, [r3]
.L9:
	pop	{r4, r5, r6, lr}
	bx	lr
.L21:
	ldr	r0, [r5]
	ldr	r3, .L22+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L22+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L22+48
	mov	lr, pc
	bx	r3
	mov	r1, #2
	ldr	r2, .L22+36
	ldrh	r3, [r6]
	str	r1, [r2]
	b	.L11
.L23:
	.align	2
.L22:
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
	.word	hideSprites
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
	ldr	r3, .L25
	str	r2, [r3]
	bx	lr
.L26:
	.align	2
.L25:
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
	ldr	r4, .L38
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L38+4
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r3, .L38+8
	mov	r2, #100663296
	ldr	r1, .L38+12
	ldr	r5, .L38+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L38+20
	ldr	r1, .L38+24
	mov	lr, pc
	bx	r4
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L28
	ldr	r2, .L38+28
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L37
.L28:
	tst	r3, #4
	beq	.L27
	ldr	r3, .L38+28
	ldrh	r3, [r3]
	ands	r3, r3, #4
	bne	.L27
	ldr	r0, .L38+32
	ldr	r1, .L38+36
	ldr	r2, .L38+40
	str	r3, [r0]
	str	r3, [r1, #8]
	str	r3, [r2]
.L27:
	pop	{r4, r5, r6, lr}
	bx	lr
.L37:
	ldr	r2, .L38+40
	ldr	r3, .L38+44
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L38+48
	mov	lr, pc
	bx	r3
	mov	r1, #2
	ldr	r2, .L38+32
	ldrh	r3, [r5]
	str	r1, [r2]
	b	.L28
.L39:
	.align	2
.L38:
	.word	DMANow
	.word	instructionsScreenPal
	.word	6432
	.word	instructionsScreenTiles
	.word	oldButtons
	.word	100726784
	.word	instructionsScreenMap
	.word	buttons
	.word	state
	.word	.LANCHOR0
	.word	seed
	.word	srand
	.word	hideSprites
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
	ldr	r3, .L42
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L42+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L43:
	.align	2
.L42:
	.word	hideSprites
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
	mov	r2, #4608
	mov	r5, #67108864
	ldr	r4, .L59
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L59+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #32
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L59+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L59+12
	ldr	r1, .L59+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L59+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L59+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L45
	ldr	r2, .L59+28
	ldrh	r2, [r2]
	tst	r2, #8
	moveq	r1, #4
	ldreq	r2, .L59+32
	streq	r1, [r2]
.L45:
	tst	r3, #4
	beq	.L46
	ldr	r3, .L59+28
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L58
.L46:
	ldr	r3, .L59+36
	ldr	r3, [r3, #8]
	cmp	r3, #0
	movne	r2, #6
	ldrne	r3, .L59+32
	pop	{r4, r5, r6, lr}
	strne	r2, [r3]
	bx	lr
.L58:
	mov	r2, #67108864
	mov	r1, #512
	ldr	r3, .L59+40
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L59+32
	str	r2, [r3]
	b	.L46
.L60:
	.align	2
.L59:
	.word	DMANow
	.word	gameScreenPal
	.word	gameScreenTiles
	.word	100726784
	.word	gameScreenMap
	.word	updateGame
	.word	oldButtons
	.word	buttons
	.word	state
	.word	.LANCHOR0
	.word	hideSprites
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
	ldr	r3, .L63
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L63+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L64:
	.align	2
.L63:
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
	mov	r2, #0
	push	{r4, r5, r6, lr}
	ldr	r3, .L82
	add	r1, r3, #1016
.L66:
	strh	r2, [r3, #8]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	add	r3, r3, #8
	cmp	r3, r1
	bne	.L66
	ldr	r4, .L82+4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L82
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L82+8
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #7936
	mov	r3, #32
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L82+12
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L82+16
	ldr	r1, .L82+20
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	mov	r3, #4608
	ldr	r4, .L82+24
	strh	r3, [r5]	@ movhi
	mov	lr, pc
	bx	r4
	ldr	r3, .L82+28
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r4
	ldr	r3, .L82+32
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L67
	ldr	r2, .L82+36
	ldrh	r2, [r2]
	tst	r2, #8
	moveq	r1, #4
	ldreq	r2, .L82+40
	streq	r1, [r2]
.L67:
	tst	r3, #4
	beq	.L68
	ldr	r3, .L82+36
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L81
.L68:
	ldr	r3, .L82+44
	ldr	r3, [r3, #8]
	cmp	r3, #0
	movne	r2, #6
	ldrne	r3, .L82+40
	pop	{r4, r5, r6, lr}
	strne	r2, [r3]
	bx	lr
.L81:
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L82+40
	str	r2, [r3]
	b	.L68
.L83:
	.align	2
.L82:
	.word	shadowOAM
	.word	DMANow
	.word	gameScreen2Pal
	.word	gameScreen2Tiles
	.word	100726784
	.word	gameScreen2Map
	.word	hideSprites
	.word	drawPanda
	.word	oldButtons
	.word	buttons
	.word	state
	.word	.LANCHOR0
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
	ldr	r3, .L85
	str	r2, [r3]
	bx	lr
.L86:
	.align	2
.L85:
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
	ldr	r4, .L94
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L94+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #96
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L94+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L94+12
	ldr	r1, .L94+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L94+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L87
	ldr	r3, .L94+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L93
.L87:
	pop	{r4, r5, r6, lr}
	bx	lr
.L93:
	ldr	r3, .L94+28
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L94+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L95:
	.align	2
.L94:
	.word	DMANow
	.word	pauseScreenPal
	.word	pauseScreenTiles
	.word	100726784
	.word	pauseScreenMap
	.word	oldButtons
	.word	buttons
	.word	hideSprites
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
	@ link register save eliminated.
	mov	r2, #5
	ldr	r3, .L97
	str	r2, [r3]
	bx	lr
.L98:
	.align	2
.L97:
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
	ldr	r4, .L105
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L105+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #880
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L105+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L105+12
	ldr	r1, .L105+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L105+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L99
	ldr	r3, .L105+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	bne	.L99
	ldr	r0, .L105+28
	ldr	r1, .L105+32
	ldr	r2, .L105+36
	str	r3, [r0]
	str	r3, [r1, #8]
	str	r3, [r2]
.L99:
	pop	{r4, r5, r6, lr}
	bx	lr
.L106:
	.align	2
.L105:
	.word	DMANow
	.word	winScreenPal
	.word	winScreenTiles
	.word	100726784
	.word	winScreenMap
	.word	oldButtons
	.word	buttons
	.word	state
	.word	.LANCHOR0
	.word	seed
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
	ldr	r3, .L108
	str	r2, [r3]
	bx	lr
.L109:
	.align	2
.L108:
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
	ldr	r4, .L116
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L116+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #944
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
	beq	.L110
	ldr	r3, .L116+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	bne	.L110
	ldr	r0, .L116+28
	ldr	r1, .L116+32
	ldr	r2, .L116+36
	str	r3, [r0]
	str	r3, [r1, #8]
	str	r3, [r2]
.L110:
	pop	{r4, r5, r6, lr}
	bx	lr
.L117:
	.align	2
.L116:
	.word	DMANow
	.word	loseScreenPal
	.word	loseScreenTiles
	.word	100726784
	.word	loseScreenMap
	.word	oldButtons
	.word	buttons
	.word	state
	.word	.LANCHOR0
	.word	seed
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
	ldr	r6, .L130
	push	{r4, r7, fp, lr}
	ldr	r3, .L130+4
	mov	lr, pc
	bx	r3
	ldr	fp, .L130+8
	ldr	r3, [r6]
	ldr	r10, .L130+12
	ldr	r9, .L130+16
	ldr	r8, .L130+20
	ldr	r5, .L130+24
	ldr	r7, .L130+28
	ldr	r4, .L130+32
.L128:
	cmp	r3, #6
	ldrls	pc, [pc, r3, asl #2]
	b	.L119
.L121:
	.word	.L127
	.word	.L126
	.word	.L125
	.word	.L124
	.word	.L123
	.word	.L122
	.word	.L120
.L120:
	ldr	r3, .L130+36
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
.L119:
	ldrh	r1, [r7]
	strh	r1, [r5]	@ movhi
	ldrh	r1, [r4, #48]
	strh	r1, [r7]	@ movhi
	b	.L128
.L122:
	ldr	r3, .L130+40
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	b	.L119
.L123:
	ldr	r3, .L130+44
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	b	.L119
.L124:
	mov	lr, pc
	bx	r8
	ldr	r3, [r6]
	b	.L119
.L125:
	mov	lr, pc
	bx	r9
	ldr	r3, [r6]
	b	.L119
.L127:
	mov	lr, pc
	bx	fp
	ldr	r3, [r6]
	b	.L119
.L126:
	mov	lr, pc
	bx	r10
	ldr	r3, [r6]
	b	.L119
.L131:
	.align	2
.L130:
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
	.global	hasLost
	.global	vOff
	.global	hOff
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	food,960,4
	.comm	panda,52,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	hOff, %object
	.size	hOff, 4
hOff:
	.space	4
	.type	vOff, %object
	.size	vOff, 4
vOff:
	.space	4
	.type	hasLost, %object
	.size	hasLost, 4
hasLost:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
