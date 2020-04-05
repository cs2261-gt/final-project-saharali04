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
#include <stdlib.h>
#include <stdio.h>

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

    // hOff and vOff Variables
    int hOff = 0;   
    int vOff = 0;

    // Keeps track if player lost
    int hasLost = 0;
    int hasWon = 0;
    // shadowOAM variables
    OBJ_ATTR shadowOAM[128];
    #define SHADOWOAMLENGTH 128

    // For random
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

// Initialize the game on first launch
void initialize() {

    DMANow(3, spriteSheetPal, SPRITEPALETTE, spriteSheetPalLen/2);
    DMANow(3, spriteSheetTiles, &CHARBLOCK[4], spriteSheetTilesLen/2);
    hideSprites();
    REG_DISPCTL = MODE0 | SPRITE_ENABLE;
    initGame();
    buttons = BUTTONS; 
    hOff = 0;
    vOff = 0;
    goToSplash();

}

// Sets up the splash state
void goToSplash() {
    
    state = SPLASH;
    hasLost = 0;
    hasWon = 0;
    seed = 0;

}

// Runs every frame of the splash state
void splash() {

    seed++;
    // Set up display control register
    REG_DISPCTL = MODE0 | BG1_ENABLE;

    // Load splashScreen tile palette
    DMANow(3, splashScreenPal, PALETTE, splashScreenPalLen/2);

    // Set up bg 1 control register
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

    // Load splashScreen tiles to charblock
    DMANow(3, splashScreenTiles, &CHARBLOCK[0], splashScreenTilesLen/2);

    // Load splashScreen map to screenblock
    DMANow(3, splashScreenMap, &SCREENBLOCK[31], splashScreenMapLen/2);

    for (int i = 0; i < SHADOWOAMLENGTH; i++) 
    {
        shadowOAM[i].attr0 = 0;
        shadowOAM[i].attr1 = 0;
        shadowOAM[i].attr2 = 0;
    }


    DMANow(3, shadowOAM, OAM, 128 * 4);

    if (BUTTON_PRESSED(BUTTON_START)) 
    {
        srand(seed);
        initGame();
        REG_DISPCTL = MODE0;
        goToGame(); 
    }

    if (BUTTON_PRESSED(BUTTON_SELECT)) 
    {
        goToInstruction();
    }


}
void goToInstruction() {

    state = INSTRUCTION;

}

void instruction() {
    REG_DISPCTL = MODE0 | BG1_ENABLE;

    DMANow(3, instructionsScreenPal, PALETTE, instructionsScreenPalLen/2);

    // Set up bg 1 control register
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

    // Load instructionScreen tiles to charblock
    DMANow(3, instructionsScreenTiles, &CHARBLOCK[0], instructionsScreenTilesLen/2);

    // Load instructionScreen map to screenblock
    DMANow(3, instructionsScreenMap, &SCREENBLOCK[31], instructionsScreenMapLen/2);

    if (BUTTON_PRESSED(BUTTON_START)) 
    {
        srand(seed);
        goToGame(); 
    }

    if (BUTTON_PRESSED(BUTTON_SELECT)) 
    {
        goToSplash();
    }

}

// Sets up the game state
void goToGame() {

    hideSprites();
    state = GAME;

}

// Runs every frame of the game state
void game() {

    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;

    DMANow(3, gameScreenPal, PALETTE, gameScreenPalLen/2);

    // Set up bg 1 control register
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

    // Load loseScreen tiles to charblock
    DMANow(3, gameScreenTiles, &CHARBLOCK[0], gameScreenTilesLen/2);

    // Load loseScreen map to screenblock
    DMANow(3, gameScreenMap, &SCREENBLOCK[31], gameScreenMapLen/2);

    updateGame();

    if (BUTTON_PRESSED(BUTTON_START)) 
    {
        goToPause();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) 
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

    REG_DISPCTL = MODE0 | BG1_ENABLE;
    initBaskets();
    initPandas();
    hideSprites();
    state = GAME2;

}

// Runs every frame of the game state
void game2() {

    DMANow(3, shadowOAM, OAM, 128 * 4);
    
    DMANow(3, gameScreen2Pal, PALETTE, gameScreen2PalLen/2);

    // Set up bg 1 control register
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

    // Load loseScreen tiles to charblock
    DMANow(3, gameScreen2Tiles, &CHARBLOCK[0], gameScreen2TilesLen/2);

    // Load loseScreen map to screenblock
    DMANow(3, gameScreen2Map, &SCREENBLOCK[31], gameScreen2MapLen/2);
    
    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    
    
    updateGame2();

    
    if (BUTTON_PRESSED(BUTTON_START)) 
    {
        goToPause();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) 
    {
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

    state = PAUSE;

}

// Runs every frame of the pause state
void pause() {

    REG_DISPCTL = MODE0 | BG1_ENABLE;

    DMANow(3, pauseScreenPal, PALETTE, pauseScreenPalLen/2);

    // Set up bg 1 control register
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

    // Load pauseScreen tiles to charblock
    DMANow(3, pauseScreenTiles, &CHARBLOCK[0], pauseScreenTilesLen/2);

    // Load pauseScreen map to screenblock
    DMANow(3, pauseScreenMap, &SCREENBLOCK[31], pauseScreenMapLen/2);

    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    }
    
}

// Sets up the win state
void goToWin() {

    state = WIN;

}


void win() {

    REG_DISPCTL = MODE0 | BG1_ENABLE;

    DMANow(3, winScreenPal, PALETTE, winScreenPalLen/2);

    // Set up bg 1 control register
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

    // Load winScreen tiles to charblock
    DMANow(3, winScreenTiles, &CHARBLOCK[0], winScreenTilesLen/2);
    
    // Load winScreen map to screenblock
    DMANow(3, winScreenMap, &SCREENBLOCK[31], winScreenMapLen/2);
    
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToSplash();
    }

}

// Sets up the lose state
void goToLose() {
    
    state = LOSE;

}

// Runs every frame of the lose state
void lose() {

    REG_DISPCTL = MODE0 | BG1_ENABLE;

    DMANow(3, loseScreenPal, PALETTE, loseScreenPalLen/2);

    // Set up bg 1 control register
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

    // Load loseScreen tiles to charblock
    DMANow(3, loseScreenTiles, &CHARBLOCK[0], loseScreenTilesLen/2);

    // Load loseScreen map to screenblock
    DMANow(3, loseScreenMap, &SCREENBLOCK[31], loseScreenMapLen/2);

    if (BUTTON_PRESSED(BUTTON_START)) {
        goToSplash();
    }

}

