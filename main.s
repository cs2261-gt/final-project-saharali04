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
	ldr	r1, .L4+32
	ldrh	lr, [r2, #48]
	ldr	ip, .L4+36
	ldr	r2, .L4+40
	ldr	r0, .L4+44
	strh	lr, [r1]	@ movhi
	ldr	r1, .L4+48
	str	r3, [ip]
	str	r3, [r0]
	str	r3, [r2]
	str	r3, [r2, #4]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	mov	lr, pc
	bx	r1
	ldr	r3, .L4+52
	mov	lr, pc
	bx	r3
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
	.word	initBaskets
	.word	initPandas
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
	ldr	r2, .L7
	ldr	r0, .L7+4
	ldr	r1, .L7+8
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	bx	lr
.L8:
	.align	2
.L7:
	.word	.LANCHOR0
	.word	state
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
	ands	r4, r2, #8
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
	mov	r2, #67108864
	ldr	r3, .L22+48
	strh	r4, [r2]	@ movhi
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
	ldr	r2, .L38+32
	ldr	r0, .L38+36
	ldr	r1, .L38+40
	str	r3, [r0]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	str	r3, [r1]
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
	ldr	r2, .L38+36
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
	.word	.LANCHOR0
	.word	state
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
	ldr	r4, .L63
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L63+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #496
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L63+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L63+12
	ldr	r1, .L63+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L63+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L63+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L45
	ldr	r2, .L63+28
	ldrh	r2, [r2]
	tst	r2, #8
	moveq	r1, #4
	ldreq	r2, .L63+32
	streq	r1, [r2]
.L45:
	tst	r3, #4
	beq	.L46
	ldr	r3, .L63+28
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L62
.L46:
	ldr	r3, .L63+36
	ldr	r2, [r3, #8]
	cmp	r2, #0
	movne	r1, #6
	ldrne	r2, .L63+32
	ldr	r3, [r3, #12]
	strne	r1, [r2]
	cmp	r3, #0
	movne	r2, #5
	ldrne	r3, .L63+32
	pop	{r4, r5, r6, lr}
	strne	r2, [r3]
	bx	lr
.L62:
	mov	r2, #67108864
	mov	r1, #512
	ldr	r3, .L63+40
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L63+32
	str	r2, [r3]
	b	.L46
.L64:
	.align	2
.L63:
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
	ldr	r3, .L67
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L67+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L68:
	.align	2
.L67:
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
	ldr	r4, .L88
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L88+4
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L88+8
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #7936
	mov	r3, #496
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L88+12
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L88+16
	ldr	r1, .L88+20
	mov	lr, pc
	bx	r4
	mov	r2, #4608
	ldr	r3, .L88+24
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L88+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L70
	ldr	r2, .L88+32
	ldrh	r2, [r2]
	tst	r2, #8
	moveq	r1, #4
	ldreq	r2, .L88+36
	streq	r1, [r2]
.L70:
	tst	r3, #4
	beq	.L71
	ldr	r3, .L88+32
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L87
.L71:
	ldr	r3, .L88+40
	ldr	r2, [r3, #8]
	cmp	r2, #0
	movne	r1, #6
	ldrne	r2, .L88+36
	ldr	r3, [r3, #12]
	strne	r1, [r2]
	cmp	r3, #0
	movne	r2, #5
	ldrne	r3, .L88+36
	pop	{r4, r5, r6, lr}
	strne	r2, [r3]
	bx	lr
.L87:
	ldr	r3, .L88+44
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L88+36
	str	r2, [r3]
	b	.L71
.L89:
	.align	2
.L88:
	.word	DMANow
	.word	shadowOAM
	.word	gameScreen2Pal
	.word	gameScreen2Tiles
	.word	100726784
	.word	gameScreen2Map
	.word	updateGame2
	.word	oldButtons
	.word	buttons
	.word	state
	.word	.LANCHOR0
	.word	hideSprites
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
	ldr	r3, .L91
	str	r2, [r3]
	bx	lr
.L92:
	.align	2
.L91:
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
	ldr	r4, .L100
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L100+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #96
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L100+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L100+12
	ldr	r1, .L100+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L100+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L93
	ldr	r3, .L100+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L99
.L93:
	pop	{r4, r5, r6, lr}
	bx	lr
.L99:
	ldr	r3, .L100+28
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L100+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L101:
	.align	2
.L100:
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
	ldr	r3, .L103
	str	r2, [r3]
	bx	lr
.L104:
	.align	2
.L103:
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
	ldr	r4, .L111
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L111+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #880
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L111+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L111+12
	ldr	r1, .L111+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L111+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L105
	ldr	r3, .L111+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	bne	.L105
	ldr	r2, .L111+28
	ldr	r0, .L111+32
	ldr	r1, .L111+36
	str	r3, [r0]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	str	r3, [r1]
.L105:
	pop	{r4, r5, r6, lr}
	bx	lr
.L112:
	.align	2
.L111:
	.word	DMANow
	.word	winScreenPal
	.word	winScreenTiles
	.word	100726784
	.word	winScreenMap
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	state
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
	ldr	r3, .L114
	str	r2, [r3]
	bx	lr
.L115:
	.align	2
.L114:
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
	ldr	r4, .L122
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L122+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #944
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L122+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L122+12
	ldr	r1, .L122+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L122+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L116
	ldr	r3, .L122+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	bne	.L116
	ldr	r2, .L122+28
	ldr	r0, .L122+32
	ldr	r1, .L122+36
	str	r3, [r0]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	str	r3, [r1]
.L116:
	pop	{r4, r5, r6, lr}
	bx	lr
.L123:
	.align	2
.L122:
	.word	DMANow
	.word	loseScreenPal
	.word	loseScreenTiles
	.word	100726784
	.word	loseScreenMap
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	state
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
	ldr	r6, .L136
	push	{r4, r7, fp, lr}
	ldr	r3, .L136+4
	mov	lr, pc
	bx	r3
	ldr	fp, .L136+8
	ldr	r3, [r6]
	ldr	r10, .L136+12
	ldr	r9, .L136+16
	ldr	r8, .L136+20
	ldr	r5, .L136+24
	ldr	r7, .L136+28
	ldr	r4, .L136+32
.L134:
	cmp	r3, #6
	ldrls	pc, [pc, r3, asl #2]
	b	.L125
.L127:
	.word	.L133
	.word	.L132
	.word	.L131
	.word	.L130
	.word	.L129
	.word	.L128
	.word	.L126
.L126:
	ldr	r3, .L136+36
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
.L125:
	ldrh	r1, [r7]
	strh	r1, [r5]	@ movhi
	ldrh	r1, [r4, #48]
	strh	r1, [r7]	@ movhi
	b	.L134
.L128:
	ldr	r3, .L136+40
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	b	.L125
.L129:
	ldr	r3, .L136+44
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	b	.L125
.L130:
	mov	lr, pc
	bx	r8
	ldr	r3, [r6]
	b	.L125
.L131:
	mov	lr, pc
	bx	r9
	ldr	r3, [r6]
	b	.L125
.L133:
	mov	lr, pc
	bx	fp
	ldr	r3, [r6]
	b	.L125
.L132:
	mov	lr, pc
	bx	r10
	ldr	r3, [r6]
	b	.L125
.L137:
	.align	2
.L136:
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
	.global	vOff
	.global	hOff
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	pandas,180,4
	.comm	baskets,96,4
	.comm	food,960,4
	.comm	panda,60,4
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
	.type	hasWon, %object
	.size	hasWon, 4
hasWon:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
