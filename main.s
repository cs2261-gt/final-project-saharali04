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
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L4+20
	ldr	r1, .L4+24
	ldrh	r0, [r3, #48]
	ldr	r3, .L4+28
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	str	r2, [r3, #4]
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
	.word	67109120
	.word	buttons
	.word	.LANCHOR0
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
	push	{r4, r5, r6, r7, r8, lr}
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
	ldr	r8, .L22+28
	ldr	r7, .L22+32
	ldr	r6, .L22+36
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r7
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L22+24
	mov	lr, pc
	bx	r4
	ldrh	r3, [r6]
	tst	r3, #8
	beq	.L11
	ldr	r2, .L22+40
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L21
.L11:
	tst	r3, #4
	beq	.L9
	ldr	r3, .L22+40
	ldrh	r3, [r3]
	tst	r3, #4
	moveq	r2, #1
	ldreq	r3, .L22+44
	streq	r2, [r3]
.L9:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L21:
	ldr	r3, .L22+48
	ldr	r0, [r5]
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r7
	mov	r1, #2
	ldr	r2, .L22+44
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
	.word	hideSprites
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	state
	.word	srand
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
	ldr	r3, .L38+52
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
	.word	waitForVBlank
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
	ldr	r3, .L42+4
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L42+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L43:
	.align	2
.L42:
	.word	hideSprites
	.word	waitForVBlank
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
	ldr	r4, .L58
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L58+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #57088
	mov	r3, #32
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L58+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L58+12
	ldr	r1, .L58+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L58+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L45
	ldr	r2, .L58+24
	ldrh	r2, [r2]
	tst	r2, #8
	moveq	r1, #3
	ldreq	r2, .L58+28
	streq	r1, [r2]
.L45:
	tst	r3, #32
	beq	.L46
	ldr	r2, .L58+24
	ldrh	r2, [r2]
	tst	r2, #32
	moveq	r1, #4
	ldreq	r2, .L58+28
	streq	r1, [r2]
.L46:
	tst	r3, #16
	beq	.L44
	ldr	r3, .L58+24
	ldrh	r3, [r3]
	tst	r3, #16
	moveq	r2, #5
	ldreq	r3, .L58+28
	streq	r2, [r3]
.L44:
	pop	{r4, r5, r6, lr}
	bx	lr
.L59:
	.align	2
.L58:
	.word	DMANow
	.word	gameScreenPal
	.word	gameScreenTiles
	.word	100726784
	.word	gameScreenMap
	.word	oldButtons
	.word	buttons
	.word	state
	.size	game, .-game
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
	mov	r2, #3
	ldr	r3, .L61
	str	r2, [r3]
	bx	lr
.L62:
	.align	2
.L61:
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
	ldr	r4, .L70
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L70+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #96
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L70+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L70+12
	ldr	r1, .L70+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L70+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L63
	ldr	r3, .L70+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L69
.L63:
	pop	{r4, r5, r6, lr}
	bx	lr
.L69:
	ldr	r3, .L70+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L70+32
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L70+36
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L71:
	.align	2
.L70:
	.word	DMANow
	.word	pauseScreenPal
	.word	pauseScreenTiles
	.word	100726784
	.word	pauseScreenMap
	.word	oldButtons
	.word	buttons
	.word	hideSprites
	.word	waitForVBlank
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
	mov	r2, #4
	ldr	r3, .L73
	str	r2, [r3]
	bx	lr
.L74:
	.align	2
.L73:
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
	ldr	r4, .L81
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L81+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #880
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L81+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L81+12
	ldr	r1, .L81+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L81+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L75
	ldr	r3, .L81+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	bne	.L75
	ldr	r0, .L81+28
	ldr	r1, .L81+32
	ldr	r2, .L81+36
	str	r3, [r0]
	str	r3, [r1, #8]
	str	r3, [r2]
.L75:
	pop	{r4, r5, r6, lr}
	bx	lr
.L82:
	.align	2
.L81:
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
	mov	r2, #5
	ldr	r3, .L84
	str	r2, [r3]
	bx	lr
.L85:
	.align	2
.L84:
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
	ldr	r4, .L92
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L92+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #944
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L92+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L92+12
	ldr	r1, .L92+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L92+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L86
	ldr	r3, .L92+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	bne	.L86
	ldr	r0, .L92+28
	ldr	r1, .L92+32
	ldr	r2, .L92+36
	str	r3, [r0]
	str	r3, [r1, #8]
	str	r3, [r2]
.L86:
	pop	{r4, r5, r6, lr}
	bx	lr
.L93:
	.align	2
.L92:
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
	ldr	r6, .L105
	push	{r4, r7, fp, lr}
	ldr	r3, .L105+4
	mov	lr, pc
	bx	r3
	ldr	fp, .L105+8
	ldr	r3, [r6]
	ldr	r10, .L105+12
	ldr	r9, .L105+16
	ldr	r8, .L105+20
	ldr	r5, .L105+24
	ldr	r7, .L105+28
	ldr	r4, .L105+32
.L103:
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L95
.L97:
	.word	.L102
	.word	.L101
	.word	.L100
	.word	.L99
	.word	.L98
	.word	.L96
.L96:
	ldr	r3, .L105+36
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
.L95:
	ldrh	r1, [r7]
	strh	r1, [r5]	@ movhi
	ldrh	r1, [r4, #48]
	strh	r1, [r7]	@ movhi
	b	.L103
.L98:
	ldr	r3, .L105+40
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	b	.L95
.L99:
	mov	lr, pc
	bx	r8
	ldr	r3, [r6]
	b	.L95
.L100:
	mov	lr, pc
	bx	r9
	ldr	r3, [r6]
	b	.L95
.L102:
	mov	lr, pc
	bx	fp
	ldr	r3, [r6]
	b	.L95
.L101:
	mov	lr, pc
	bx	r10
	ldr	r3, [r6]
	b	.L95
.L106:
	.align	2
.L105:
	.word	state
	.word	initialize
	.word	splash
	.word	instruction
	.word	game
	.word	pause
	.word	oldButtons
	.word	buttons
	.word	67109120
	.word	lose
	.word	win
	.size	main, .-main
	.comm	state,4,4
	.comm	seed,4,4
	.comm	shadowOAM,1024,4
	.global	hasLost
	.global	vOff
	.global	hOff
	.comm	oldButtons,2,2
	.comm	buttons,2,2
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
