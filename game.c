#include "game.h"
#include "myLib.h"
#include <stdlib.h>
#include "chew.h"
// keeps track if player has lost
int hasLost;
int hasWon;
int cheatGame;

int hOff = 0;   
int vOff = 0;
int playerHOff;
int screenBlock;

// initializes PANDA and food
void initGame() {
    vOff = 0;
    hOff = 0;
    playerHOff = 0;
    screenBlock = 28;
    initPanda();
    initFood();
    initEnemies();
    cheatGame = 0;
}

// initialize panda
void initPanda() {
    
    // initialize teleporting panda
    panda.width = 8;
    panda.height = 8;
    panda.worldCol = SCREENWIDTH/2 - (panda.width/2) - 40;
    panda.worldRow = SCREENHEIGHT/2 - (panda.height/2) - 10;
    panda.cdel = 1;
    panda.rdel = 1;
    panda.aniCounter = 0;
    panda.aniState = PANDANEUTRAL;
    panda.leavesCollected = 0;
    panda.stemsCollected = 0;
    panda.curFrame = 0;
    panda.numFrames = 3;  

}

void initFood() {
    for (int i = 0; i < FOODCOUNT; i++) 
    {
        food[i].active = 1;
        food[i].width = 8;
        food[i].height = 8;
        food[i].col = (rand() % 232);
        food[i].row = (rand() % 133);
        food[i].cdel = 2;
        food[i].rdel = 2;
        if (i % 2) 
        {
            food[i].aniState = STEM;
        } else 
        {
            food[i].aniState = LEAF;

        }
        
    }
}

void initEnemies() {
    for (int i = 0; i < ENEMYCOUNT; i++) 
    {
        enemies[i].active = 1;
        enemies[i].width = 8;
        enemies[i].height = 8;
        enemies[i].col = (rand() % 232);
        enemies[i].row = (rand() % 133);
        enemies[i].cdel = 2;
        enemies[i].rdel = 2;
        enemies[i].aniState = 8;       
    }
}

void initBaskets() {
    for (int i = 0; i < BASKETCOUNT; i++) 
    {
        baskets[i].active = 1;
        baskets[i].width = 8;
        baskets[i].height = 8;
        baskets[i].col = 60 + i*60;
        baskets[i].row = 80;
        baskets[i].aniState = BASKET;
        
    }
}

void initPandas() {
    for (int i = 0; i < PANDACOUNT; i++) 
    {
        pandas[i].width = 8;
        pandas[i].height = 8;
        pandas[i].col = 60 + i*60;
        pandas[i].row = 50;
        pandas[i].aniState = FRIENDLYPANDA;
        pandas[i].leavesCollected = 0;
        pandas[i].stemsCollected = 0;
        pandas[i].curFrame = 0;
        pandas[i].numFrames = 2;
        
    }

}

// updates position of PANDA and checks for collision
void updatePanda() {

    if (panda.aniState != PANDAIDLE) 
    {
        panda.prevAniState = panda.aniState;
        panda.aniState = PANDANEUTRAL;
    } 

    if(panda.aniCounter % 25 == 0) 
    {
        panda.curFrame = (panda.curFrame + 1) % panda.numFrames;
	} else {
        panda.aniCounter++;
    }

    if (BUTTON_HELD(BUTTON_UP)) 
    {
        if (panda.worldRow > 0) {
            
            panda.aniState = PANDAHAPPY;
            panda.worldRow-=panda.rdel;

            if (vOff > 0 && panda.row + panda.height/2 == SCREENHEIGHT/2) {
                // Update background offset variable if the above is true
                vOff--;
            }

        }
    
    }

    if (BUTTON_HELD(BUTTON_DOWN)) 
    {
        if (panda.worldRow + panda.height < WORLDHEIGHT - 20) {
            
            panda.aniState = PANDAHAPPY;
            panda.worldRow+=panda.rdel;

            if (vOff + SCREENHEIGHT < WORLDHEIGHT && panda.row + panda.height/2 == SCREENHEIGHT/2) {
                // Update background offset variable if the above is true
                vOff++;
            }
        }
    
    }
    if (BUTTON_HELD(BUTTON_LEFT)) 
    {
        if (panda.worldCol > 0) {
            panda.worldCol--;
            panda.aniState = PANDASAD;

            if (hOff > 0 && screenBlock > 27 && panda.col <= SCREENWIDTH / 2 ) {
            hOff--;
            playerHOff--; 
        }
        
        }
        if (hOff > 0 && screenBlock > 27) {
            hOff--;
            playerHOff--; 
        }
        
    }

    if (BUTTON_HELD(BUTTON_RIGHT)) 
    {
        if (panda.worldCol + panda.width < WORLDWIDTH1 - 15) {
            panda.worldCol++;
            panda.aniState = PANDASAD;

            if (screenBlock < 31 && hOff < (257) && panda.col >= SCREENWIDTH - 130) {
                hOff++;
                playerHOff++;
            }
        }

        
        panda.aniState = PANDASAD;
    
    }
    
    if (panda.aniState == PANDAIDLE) 
    {
            panda.curFrame = 0;
            panda.aniState = panda.prevAniState;
    } else 
    {
        panda.aniCounter++;
    }
    
    //if ((panda.row > 152) | (panda.row < 0) | (panda.col < 0) | (panda.col > 232)) {
    //    hasLost = 1;
    //}

    panda.col = panda.worldCol - playerHOff;
    panda.row = panda.worldRow - vOff;
    
    if (BUTTON_PRESSED(BUTTON_A)) {
        cheatGame = 1;
    }
    
}

void updatePanda2() {

    if (panda.aniState != PANDAIDLE) 
    {
        panda.prevAniState = panda.aniState;
        panda.aniState = PANDANEUTRAL;
    } 

    if(panda.aniCounter % 25 == 0) 
    {
        panda.curFrame = (panda.curFrame + 1) % panda.numFrames;
	} else {
        panda.aniCounter++;
    }

    if (BUTTON_HELD(BUTTON_UP)) 
    {
        if (panda.worldRow > 0) {
             panda.aniState = PANDAHAPPY;
             panda.worldRow-=panda.rdel;

             if (vOff > 0 && panda.row + panda.height/2 == SCREENHEIGHT/2) {
                // Update background offset variable if the above is true
                vOff--;
            }
        }
        
        
    
    }

    if (BUTTON_HELD(BUTTON_DOWN) && panda.row < 132) 
    {
        if (panda.worldRow + panda.height < WORLDHEIGHT) {
            panda.aniState = PANDAHAPPY;
            panda.worldRow+=panda.rdel;

            if (vOff + SCREENHEIGHT < WORLDHEIGHT && panda.row + panda.height/2 == SCREENHEIGHT/2) {
                // Update background offset variable if the above is true
                vOff++;
            }
        }
       
        
    
    }
    if (BUTTON_HELD(BUTTON_LEFT)) 
    {
         if (panda.worldCol > 0) {
            panda.worldCol--;
            panda.aniState = PANDASAD;

             if ( hOff > 0 && panda.col <= SCREENWIDTH / 2) {
                // Update background offset variable if the above is true
                hOff--;
            }
        }
       
        
    
        
    }

    if (BUTTON_HELD(BUTTON_RIGHT)) 
    {
        if (panda.worldCol + panda.width < WORLDWIDTH2) {
            panda.worldCol++;
            panda.aniState = PANDASAD;

            if (hOff + SCREENWIDTH < WORLDWIDTH2 && panda.col >= SCREENWIDTH / 2
                ) {
                // Update background offset variable if the above is true
                hOff++;
            }

        }
        
    }

        
    
    
    if (panda.aniState == PANDAIDLE) 
    {
            panda.curFrame = 0;
            panda.aniState = panda.prevAniState;
    } else 
    {
        panda.aniCounter++;
    }
    
    //if ((panda.row > 152) | (panda.row < 0) | (panda.col < 0) | (panda.col > 232)) {
    //    hasLost = 1;
    //}

    panda.col = panda.worldCol - hOff;
    panda.row = panda.worldRow - vOff;

 
    
    
}


void checkFoodCollected() {
     for (int i = 0; i < FOODCOUNT; i++) {
        if (food[i].active && collision(panda.col, panda.row, panda.width, panda.height, food[i].col, food[i].row, food[i].width, food[i].height)) {
            shadowOAM[i+1].attr0 = food[i].row | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i+1].attr1 = food[i].col | ATTR1_TINY;
            shadowOAM[i+1].attr2 = ATTR2_TILEID(BLACKBACKGROUND, 0);
            DMANow(3, shadowOAM, OAM, 128 * 4);
            food[i].active = 0;

            if (food[i].aniState == LEAF) {
                panda.leavesCollected++;
            } else {
                panda.stemsCollected++;
            }
            
	    
        }
    }
}

void checkFoodDelivered() {
    for (int i = 0; i < BASKETCOUNT; i++) {
        if (BUTTON_PRESSED(BUTTON_A) && collision(panda.col, panda.row, panda.width, panda.height, baskets[i].col, baskets[i].row, baskets[i].width, baskets[i].height) && panda.leavesCollected > 0) 
        {
            playSoundB(chewSound, CHEWSOUNDLEN, 0);
            pandas[i].leavesCollected++;
            panda.leavesCollected--;
            pandas[i].curFrame = 1;
            pandas[0].aniCounter++;
            
            
    
        } else {
            pandas[0].aniCounter++;
        }
            
            
        if (BUTTON_PRESSED(BUTTON_B) && collision(panda.col, panda.row, panda.width, panda.height, baskets[i].col, baskets[i].row, baskets[i].width, baskets[i].height) && panda.stemsCollected > 0) 
        {
            playSoundB(chewSound, CHEWSOUNDLEN, 0);
            pandas[i].stemsCollected++;
            panda.stemsCollected--;
            pandas[i].curFrame = 1;
            pandas[0].aniCounter++;

        } else {
            pandas[0].aniCounter++;
        }

     
    }
    
    
    

}

// Draw Functions

void drawPanda() {
    shadowOAM[0].attr0 = (ROWMASK & panda.row) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[0].attr1 = (COLMASK & panda.col) | ATTR1_TINY;
    shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(panda.aniState, panda.curFrame);
}

void drawFood() {
    for (int i = 0; i < FOODCOUNT; i++) 
    {
        if (food[i].active) 
        {
            shadowOAM[i+1].attr0 = food[i].row | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i+1].attr1 = food[i].col | ATTR1_TINY;
            shadowOAM[i+1].attr2 = ATTR2_TILEID(food[i].aniState, 0);
        } 
    }
}

void clearFood() {
    for (int i = 0; i < FOODCOUNT; i++) 
    {
        if (food[i].active) 
        {
            shadowOAM[i+1].attr0 = food[i].row | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i+1].attr1 = food[i].col | ATTR1_TINY;
            shadowOAM[i+1].attr2 = ATTR2_TILEID(5, 0);
        } 
    }
}


void drawEnemies() {
    for (int i = 0; i < ENEMYCOUNT; i++) 
    {
        if (enemies[i].active) 
        {
            shadowOAM[i+45].attr0 = enemies[i].row | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i+45].attr1 = enemies[i].col | ATTR1_TINY;
            shadowOAM[i+45].attr2 = ATTR2_TILEID(enemies[i].aniState, 1);
        } 
    }
}

void clearEnemies() {
    for (int i = 0; i < ENEMYCOUNT; i++) 
    {
        shadowOAM[i+45].attr0 = enemies[i].row | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[i+45].attr1 = enemies[i].col | ATTR1_TINY;
        shadowOAM[i+45].attr2 = ATTR2_TILEID(5, 0);
        
    }
}

void drawScore() {
    shadowOAM[40].attr0 = 141 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[40].attr1 = 82 | ATTR1_TINY;
    shadowOAM[40].attr2 = ATTR2_TILEID(panda.stemsCollected + 8, 0);

    shadowOAM[41].attr0 = 150 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[41].attr1 = 87 | ATTR1_TINY;
    shadowOAM[41].attr2 = ATTR2_TILEID(panda.leavesCollected + 8, 0);


    
}

void drawBaskets() {
    for (int i = 0; i < BASKETCOUNT; i++) 
    {
            shadowOAM[i+32].attr0 = baskets[i].row | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i+32].attr1 = baskets[i].col | ATTR1_TINY;
            shadowOAM[i+32].attr2 = ATTR2_TILEID(baskets[i].aniState, 0);
        
    }
}

void drawFriendlyPandas() {
    for (int i = 0; i < PANDACOUNT; i++) 
    {
        shadowOAM[i+36].attr0 = pandas[i].row | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[i+36].attr1 = pandas[i].col | ATTR1_TINY;
        shadowOAM[i+36].attr2 = ATTR2_TILEID(pandas[i].aniState, pandas[i].curFrame);
        
    }
    
}

void updateGame() {

    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(screenBlock) | BG_SIZE_WIDE;

    if (hOff > 256) {
        screenBlock++;
        hOff -= 256;
        REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(screenBlock) | BG_SIZE_WIDE;
    }
    if (hOff == 0) {
        screenBlock--;
        hOff = 256;
        REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(screenBlock) | BG_SIZE_WIDE;
    }

    if (playerHOff > 512) {
        playerHOff -= 512;
    }
    if (cheatGame) {
        clearFood();
        clearEnemies();
        panda.stemsCollected = 15;
        panda.leavesCollected = 0;
    } else {
        drawEnemies();
        drawFood();
        checkFoodCollected();

    }
    updatePanda();
    drawPanda();

    drawScore();
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);

}

void resetAnimationFriendly() {
    pandas[0].curFrame = 0;
    pandas[1].curFrame = 0;
    pandas[2].curFrame = 0;
    
}

void updateGame2() {
    
    updatePanda2();
    drawPanda();
    drawBaskets();
    drawScore();
    checkFoodDelivered();
    drawFriendlyPandas();
    //pandas[0].aniCounter++;

    if (pandas[0].aniCounter % 200) {
        resetAnimationFriendly();
    }
    
    if ((pandas[0].leavesCollected == 5 || pandas[0].stemsCollected == 3) && (pandas[1].leavesCollected == 5 || pandas[1].stemsCollected == 3) && (pandas[2].leavesCollected == 5 || pandas[2].stemsCollected == 3) && (panda.leavesCollected == 0) && (panda.stemsCollected == 0))
    {
        hasWon = 1;
    }
    if ((pandas[0].leavesCollected == 5 || pandas[0].stemsCollected == 3) && (pandas[1].leavesCollected == 5 || pandas[1].stemsCollected == 3) && (pandas[2].leavesCollected == 5 || pandas[2].stemsCollected == 3))
    {
        if (panda.leavesCollected != 0 || panda.stemsCollected != 0)
        {
            hasLost = 1;
        }
        
    }
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;
    
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    resetAnimationFriendly();
}



