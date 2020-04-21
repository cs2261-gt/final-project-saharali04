// M4 - All requirements are complete. The cheat turns one of the enemies into a "friend." 
// If the player presses A, the cheat is activated and one of the enemies turns pink. Colliding
// into this enemy will automatically give the player 15 leaves and 15 stems. However, they cannot
// continue to collect food or go back to the "China Screen" once they leave. If they pass the
// baskets, they can go to door which will take them back to the start of the maze. Also with the cheat, 
// the player CAN collide with the maze boundaries.


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
void goToTest();
void test();

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
    // For random
    int seed;

    // States
    enum {SPLASH, INSTRUCTION, GAME, GAME2, PAUSE, WIN, LOSE, TEST};
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
            case TEST:
                test();
                break;
        }

        oldButtons = buttons;
        buttons = BUTTONS;

	}
    return 0;
}

// Initialize the game on first launch
void initialize() {
    REG_DISPCTL = MODE0 | SPRITE_ENABLE;

    // Set up bg1 and bg0 control register
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(28);
    REG_BG0CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(27) | BG_SIZE_SMALL;

    DMANow(3, &spriteSheetPal, SPRITEPALETTE, spriteSheetPalLen/2);
    DMANow(3, spriteSheetTiles, &CHARBLOCK[4], spriteSheetTilesLen/2);    

    buttons = BUTTONS; 

    initGame();
    initBaskets();
    initPandas();
    
    setupSounds();
	setupInterrupts();

    goToSplash();
}

// Sets up the splash state
void goToSplash() {
    REG_DISPCTL = MODE0 | BG1_ENABLE;
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(28);
    DMANow(3, &splashScreenPal, PALETTE, splashScreenPalLen/2);
    DMANow(3, splashScreenTiles, &CHARBLOCK[0], splashScreenTilesLen/2);
    DMANow(3, splashScreenMap, &SCREENBLOCK[28], splashScreenMapLen/2);

    REG_BG1HOFF = 0;
    REG_BG1VOFF = 0;
    hasLost = 0;
    hasWon = 0;

    seed = 0;
    goToMaze = 0;
    goToChina = 0;
    initGame();
    stopSound();
	playSoundA(splashSound, SPLASHSOUNDLEN, 1);

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    state = SPLASH;

}

// Runs every frame of the splash state
void splash() {
    seed++;

    if (BUTTON_PRESSED(BUTTON_START)) 
    {
        srand(seed);
        initGame();
        stopSound();
		playSoundA(gameSound, GAMESOUNDLEN, 1);
        goToGame2();
    }

    if (BUTTON_PRESSED(BUTTON_A)) 
    {
        goToInstruction();
    }


}
void goToInstruction() {
    REG_DISPCTL = MODE0 | BG1_ENABLE;
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(28);
    DMANow(3, &instructionsScreenPal, PALETTE, instructionsScreenPalLen/2);
    DMANow(3, instructionsScreenTiles, &CHARBLOCK[0], instructionsScreenTilesLen/2);
    DMANow(3, instructionsScreenMap, &SCREENBLOCK[28], instructionsScreenMapLen/2);

    state = INSTRUCTION;
}

void instruction() {
    if (BUTTON_PRESSED(BUTTON_START)) 
    {
        srand(seed);
        goToGame2(); 
    }

    if (BUTTON_PRESSED(BUTTON_A)) 
    {
        goToSplash();
    }

}

// Sets up the game state
void goToGame() {
    REG_DISPCTL = MODE0 | SPRITE_ENABLE | BG0_ENABLE | BG1_ENABLE;

    REG_BG1CNT = BG_SIZE_WIDE | BG_CHARBLOCK(0) | BG_SCREENBLOCK(28);

    // bg 1 - displayed behind bg0
    // use palette of game bc it has both the score palette and game palette
    DMANow(3, &gameScreenPal, PALETTE, gameScreenPalLen/2);
    DMANow(3, gameScreenTiles, &CHARBLOCK[0], gameScreenTilesLen/2);
    DMANow(3, gameScreenMap, &SCREENBLOCK[28], gameScreenMapLen/2);

    // bg 0
    DMANow(3, scoreBackgroundTiles, &CHARBLOCK[2], scoreBackgroundTilesLen/2);
    DMANow(3, scoreBackgroundMap, &SCREENBLOCK[27], scoreBackgroundMapLen/2);

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);
    goToMaze = 0;
    // likely these inits can be done elsewhere to be cleaner
    game1 = 1;
    screenBlock = 28;                       
    //initPandas();
    REG_BG1VOFF = vOff;
    REG_BG1HOFF = hOff;
    panda.worldCol = 73; // you should set this up likely in initPanda
    panda.worldRow = 64;
    panda.col = 73; // you should set this up likely in initPanda
    panda.row = 64;
    hOff = 0;
    vOff = 0;
    playerHOff = 0;
    totalHOff = 0;
    screenBlock = 28;

    door.worldCol = 225;
    door.worldRow = 5;

    state = GAME;

}

// Runs every frame of the game state
void game() {
    updateGame();
    
    if (BUTTON_PRESSED(BUTTON_START)) 
    {
        pauseSound();
        goToPause();
    }
    if (goToChina)
    {
        goToGame2();
    }
  

    if (hasLost) {
        goToLose();
    }

    if (hasWon) {
        goToWin();
    }
}


// Sets up the game state
void goToGame2() {
    REG_DISPCTL = MODE0 | SPRITE_ENABLE | BG0_ENABLE | BG1_ENABLE;
    
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(28);

    // bg 1 - displayed behind bg 0
    // use palette of game bc it has both the score palette and game palette
    DMANow(3, &gameScreen2Pal, PALETTE, gameScreen2PalLen/2);
    DMANow(3, gameScreen2Map, &SCREENBLOCK[28], gameScreen2MapLen/2);
    DMANow(3, gameScreen2Tiles, &CHARBLOCK[0], gameScreen2TilesLen/2);

    // bg0
    DMANow(3, scoreBackground2Tiles, &CHARBLOCK[2], scoreBackground2TilesLen/2);
    DMANow(3, scoreBackground2Map, &SCREENBLOCK[27], scoreBackground2MapLen/2);

    count = 0;
    game1 = 0;
    hOff = 0;
    vOff = 0;
    REG_BG1HOFF = 0;
    REG_BG1VOFF = 0;
    panda.worldRow = 5;
    panda.worldCol = 4;
    initEnemies();
    goToChina = 0;
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    state = GAME2;
}

// Runs every frame of the game state
void game2() {    
    updateGame2();

    
    if (BUTTON_PRESSED(BUTTON_START)) 
    {
        pauseSound();
        goToPause();

    }
    if (goToMaze) 
    {
        stopSound();
		playSoundA(gameSound, GAMESOUNDLEN, 1);
        goToGame();
    }

    if (hasLost) {
        goToLose();
    }

    if (hasWon) {
        goToWin();
    }

}
// Sets up the pause state
void goToPause() {
    REG_DISPCTL = MODE0 | BG0_ENABLE;

    DMANow(3, &pauseScreenPal, PALETTE, pauseScreenPalLen/2);
    DMANow(3, pauseScreenTiles, &CHARBLOCK[2], pauseScreenTilesLen/2);
    DMANow(3, pauseScreenMap, &SCREENBLOCK[27], pauseScreenMapLen/2);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;
    state = PAUSE;

}

// Runs every frame of the pause state
void pause() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        if (game1) {
            unpauseSound();
            goToGame();
        } else {
            unpauseSound();
            goToGame2();
        }
        
    }
}

// Sets up the win state
void goToWin() {
    REG_DISPCTL = MODE0 | BG0_ENABLE;

    DMANow(3, &winScreenPal, PALETTE, winScreenPalLen/2);
    DMANow(3, winScreenTiles, &CHARBLOCK[2], winScreenTilesLen/2);
    DMANow(3, winScreenMap, &SCREENBLOCK[27], winScreenMapLen/2);

    REG_BG1HOFF = 0;
    REG_BG1VOFF = 0;
    stopSound();

    state = WIN;
}


void win() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToSplash();
    }

}

// Sets up the lose state
void goToLose() {
    REG_DISPCTL = MODE0 | BG0_ENABLE;

    DMANow(3, &loseScreenPal, PALETTE, loseScreenPalLen/2);
    DMANow(3, loseScreenTiles, &CHARBLOCK[2], loseScreenTilesLen/2);
    DMANow(3, loseScreenMap, &SCREENBLOCK[27], loseScreenMapLen/2);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;
    stopSound();

    state = LOSE;
}

// Runs every frame of the lose state
void lose() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToSplash();
    }
}

void goToTest() {
    state = TEST;
}

void test() {
    REG_DISPCTL = MODE4;
    
}
