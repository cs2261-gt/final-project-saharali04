// M4 - All requirements are complete. 
// Part 1: Backgrounds - The XL background is 768 x 256 and seen in the GAME state (maze screen). 
// Part 2:     Sprites - The two animated sprites are the panda character (eyes change color when idle) and the enemies.
// Part 3:      Sounds - There is a sound for the splash screen as well as one playing during both the GAME and GAME2 states. Both of these sounds are looping. 
//                       When a stem/leaf is delivered to a panda, a "chew" sound is played, which is not looping.
//
// The cheat turns one of the enemies into a "friend." 
// If the player presses A, the cheat is activated and one of the enemies turns pink. Colliding
// into this enemy will automatically give the player 15 leaves and 15 stems. However, they cannot
// continue to collect food or go back to the "China Screen" once they are at the maze. If they pass the
// baskets on the maze screen, they can go to door which will take them back to the start of the maze. 
// Also with the cheat, the player CAN collide with the maze boundaries without having to start over.

// The gameplay is the same as the last milestone except to teleport, you must go to the door. You can now
// go back and forth from the screens through the door (unless the cheat is activated). Also, to win, you 
// must deliver either FIVE stems or FIVE leaves. Before, it was three stems but I figured it was too confusing for the player
// to remember how many of each one to deliver.

// From the last milestone feedback, I fixed the enemy-panda collision. The enemy width/height was set to 
// to 6 instead of 8. However, when I set it to 8, I notice that the collision still isn't perfect.
// For this reason, I changed their size to 9 and it seems to be more accurate. I was wondering
// if you could give me some insight on this. Thanks. I also fixed the transition from 
// splashScreen -> instructions -> food collection screen, since previously it went straight to the maze.

// Header files
#include "myLib.h"
#include "game.h"
#include "splashScreen.h"
#include "instructionsScreen.h"
#include "gameScreen.h"
#include "gameScreen2.h"
#include "pauseScreen.h"
#include "winScreen.h"
#include "loseScreen.h"
#include "spriteSheet.h"
#include "scoreBackground.h"
#include <stdlib.h>
#include <stdio.h>
#include "gameSound.h"
#include "splashSound.h"
#include "gameSound2.h"
#include "scoreBackground2.h"
#include "sound.h"

// State Prototypes
void goToSplash();
void splash();
void goToInstruction();
void instruction();
void goToGame();
void game();
void goToGame2();
void game2();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();

// Prototypes
void initialize();

// VARIABLES 
    // Button Variables 
    unsigned short buttons;
    unsigned short oldButtons;
    
    // Keeps track if player lost
    int hasLost = 0;
    int hasWon = 0;
    
    // shadowOAM variables
    OBJ_ATTR shadowOAM[128];
    #define SHADOWOAMLENGTH 128

    int game1 = 0;
    int seed;

    // States
    enum {SPLASH, INSTRUCTION, GAME, GAME2, PAUSE, WIN, LOSE};
    int state;


int main() {

    initialize();

    while(1) {
        
        // State Machine
        switch(state) 
        {
            case SPLASH:
                splash();
                break;
            case INSTRUCTION:
                instruction();
                break;
            case GAME:
                game();
                break;
            case GAME2:
                game2();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
        }
        oldButtons = buttons;
        buttons = BUTTONS;
	}
    return 0;
}

// initialize the game on first launch
void initialize() 
{
    REG_DISPCTL = MODE0 | SPRITE_ENABLE;

    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(28);
    REG_BG0CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(27) | BG_SIZE_SMALL;

    DMANow(3, &spriteSheetPal, SPRITEPALETTE, spriteSheetPalLen/2);
    DMANow(3, spriteSheetTiles, &CHARBLOCK[4], spriteSheetTilesLen/2);    

    buttons = BUTTONS; 

    setupSounds();
	setupInterrupts();

    goToSplash();
}

// sets up the splash state
void goToSplash() 
{
    REG_DISPCTL = MODE0 | BG0_ENABLE;
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(2) | BG_SCREENBLOCK(27);

    DMANow(3, &splashScreenPal, PALETTE, splashScreenPalLen/2);
    DMANow(3, splashScreenTiles, &CHARBLOCK[2], splashScreenTilesLen/2);
    DMANow(3, splashScreenMap, &SCREENBLOCK[27], splashScreenMapLen/2);

    REG_BG1HOFF = 0;
    REG_BG1VOFF = 0;

    hasLost = 0;
    hasWon = 0;
    seed = 0;
    goToMaze = 0;
    goToChina = 0;

    for (int i = 0; i < ENEMYCOUNT; i++) {
        enemies[i].isSpecial = 0;
    }

    initGame();
    stopSound();
	playSoundA(splashSound, SPLASHSOUNDLEN, 1);

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    state = SPLASH;
}

// runs every frame of the splash state
void splash() {
    seed++;

    if (BUTTON_PRESSED(BUTTON_START)) 
    {
        srand(seed);
        stopSound();
		playSoundA(gameSound, GAMESOUNDLEN, 1);
        panda.worldRow = 5;
        panda.worldCol = 4;
        goToGame2();
    }

    if (BUTTON_PRESSED(BUTTON_A)) 
    {
        stopSound();
        goToInstruction();
    }
}

// sets up instruction screen state
void goToInstruction() 
{
    REG_DISPCTL = MODE0 | BG0_ENABLE;
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(2) | BG_SCREENBLOCK(27);

    DMANow(3, &instructionsScreenPal, PALETTE, instructionsScreenPalLen/2);
    DMANow(3, instructionsScreenTiles, &CHARBLOCK[2], instructionsScreenTilesLen/2);
    DMANow(3, instructionsScreenMap, &SCREENBLOCK[27], instructionsScreenMapLen/2);

    state = INSTRUCTION;
}

// runs every frame of instruction state
void instruction() 
{
    if (BUTTON_PRESSED(BUTTON_START)) 
    {
        srand(seed);
        playSoundA(gameSound, GAMESOUNDLEN, 1);
        goToGame2(); 
    }

    if (BUTTON_PRESSED(BUTTON_A)) 
    {
        goToSplash();
    }
}

// sets up the game state
void goToGame() 
{
    REG_DISPCTL = MODE0 | SPRITE_ENABLE | BG1_ENABLE;

    REG_BG1CNT = BG_SIZE_WIDE | BG_CHARBLOCK(0) | BG_SCREENBLOCK(screenBlock);

    DMANow(3, &gameScreenPal, PALETTE, gameScreenPalLen/2);
    DMANow(3, gameScreenTiles, &CHARBLOCK[0], gameScreenTilesLen/2);
    DMANow(3, gameScreenMap, &SCREENBLOCK[screenBlock], gameScreenMapLen/2);

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    goToMaze = 0;
    game1 = 1;


    door.worldCol = 225;
    door.worldRow = 5;

    state = GAME;
}

// runs every frame of the game state
void game() 
{
    updateGame();
    
    if (BUTTON_PRESSED(BUTTON_START)) 
    {
        pauseSound();
        goToPause();
    }

    if (goToChina)
    {
        panda.worldRow = 5;
        panda.worldCol = 4;
        goToGame2();
    }

    if (hasWon) 
    {
        goToWin();
    }
}

// sets up the game state
void goToGame2() 
{
    REG_DISPCTL = MODE0 | SPRITE_ENABLE | BG0_ENABLE | BG1_ENABLE;
    
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(28);

    DMANow(3, &gameScreen2Pal, PALETTE, gameScreen2PalLen/2);
    DMANow(3, gameScreen2Map, &SCREENBLOCK[28], gameScreen2MapLen/2);
    DMANow(3, gameScreen2Tiles, &CHARBLOCK[0], gameScreen2TilesLen/2);

    DMANow(3, scoreBackground2Tiles, &CHARBLOCK[2], scoreBackground2TilesLen/2);
    DMANow(3, scoreBackground2Map, &SCREENBLOCK[27], scoreBackground2MapLen/2);

    count = 0;
    game1 = 0;
    goToChina = 0;
    goToMaze = 0;
    hasLost = 0;
    hasWon = 0;

    hOff = 0;
    vOff = 0;
    REG_BG1HOFF = 0;
    REG_BG1VOFF = 0;
    
    
    
    initEnemies();

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    state = GAME2;
}

// runs every frame of the game state
void game2() 
{
    updateGame2();

    if (BUTTON_PRESSED(BUTTON_START)) 
    {
        pauseSound();
        goToPause();

    }
    if (goToMaze || BUTTON_PRESSED(BUTTON_SELECT)) 
    {
        stopSound();
		playSoundA(gameSound, GAMESOUNDLEN, 1);
        panda.worldCol = 73; 
        panda.worldRow = 64;
        panda.col = 73; 
        panda.row = 64;
        screenBlock = 28;  
        playerHOff = 0;
        totalHOff = 0;
        hOff = 0;
        vOff = 0;
        REG_BG1VOFF = vOff;
        REG_BG1HOFF = hOff;
        goToGame();
    }

    if (hasLost) 
    {
        goToLose();
    }
}
// sets up the pause state
void goToPause() 
{
    REG_DISPCTL = MODE0 | BG0_ENABLE;

    DMANow(3, &pauseScreenPal, PALETTE, pauseScreenPalLen/2);
    DMANow(3, pauseScreenTiles, &CHARBLOCK[2], pauseScreenTilesLen/2);
    DMANow(3, pauseScreenMap, &SCREENBLOCK[27], pauseScreenMapLen/2);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    state = PAUSE;

}

// runs every frame of the pause state
void pause() 
{
    if (BUTTON_PRESSED(BUTTON_START)) 
    {
        if (game1) 
        {
            unpauseSound();
            goToGame();
        } else {
            unpauseSound();
            goToGame2();
        }
    }
}

// sets up the win state
void goToWin() 
{
    REG_DISPCTL = MODE0 | BG0_ENABLE;

    DMANow(3, &winScreenPal, PALETTE, winScreenPalLen/2);
    DMANow(3, winScreenTiles, &CHARBLOCK[2], winScreenTilesLen/2);
    DMANow(3, winScreenMap, &SCREENBLOCK[27], winScreenMapLen/2);

    REG_BG1HOFF = 0;
    REG_BG1VOFF = 0;
    stopSound();

    state = WIN;
}

// runs every frame of the win state
void win() 
{
    if (BUTTON_PRESSED(BUTTON_START)) 
    {
        goToSplash();
    }

}

// sets up the lose state
void goToLose() 
{
    REG_DISPCTL = MODE0 | BG0_ENABLE;

    DMANow(3, &loseScreenPal, PALETTE, loseScreenPalLen/2);
    DMANow(3, loseScreenTiles, &CHARBLOCK[2], loseScreenTilesLen/2);
    DMANow(3, loseScreenMap, &SCREENBLOCK[27], loseScreenMapLen/2);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;
    panda.row = 0;
    panda.col = 0;
    stopSound();

    state = LOSE;
}

// runs every frame of the lose state
void lose() 
{
    if (BUTTON_PRESSED(BUTTON_START)) 
    {
        goToSplash();
    }
}