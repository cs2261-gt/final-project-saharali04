#include "game.h"
#include "myLib.h"
#include <stdlib.h>
#include "chew.h"
#include "collisionmap.h"
#include "collisionmap2.h"
// keeps track if player has lost
int hasLost;
int hasWon;
int cheatGame;
int count;

int hOff = 0;   
int vOff = 0;
int playerHOff;
int screenBlock;
int totalHOff;

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
        if (i < 5) {
            food[i].col = 25;
            food[i].row = (i*30) + 15;
        }
        if (i >= 5 && i < 10) {
            food[i].col = 65;
            food[i].row = ((i-5)*30);
        }

        if (i >= 10 && i < 16) {
            food[i].col = 105;
            food[i].row = (i-10)*25 + 15;
        } 
        if (i >= 16 && i < 22) {
            food[i].col = 145;
            food[i].row = ((i-16)*25);
        }
        if (i >= 22 && i < 29) {
            food[i].col = 185;
            food[i].row = (i-22)*20 + 10;
        }
        if (i >= 29 && i < 37) {
            food[i].col = 215;
            food[i].row = ((i-29)*17) + 2;
        }
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
        enemies[i].cdel = 2;
        enemies[i].rdel = 2;
        enemies[i].aniState = 8;
        

        if (i < 5) {
            enemies[i].col = 25;
            enemies[i].row = i*30;
        }
        if (i >= 5 && i < 10) {
            enemies[i].col = 65;
            enemies[i].row = 9 + (i-5)*30;
        }

        if (i >= 10 && i < 16) {
            enemies[i].col = 105;
            enemies[i].row = (i-10)*25;
        } 
        if (i >= 16 && i < 22) {
            enemies[i].col = 145;
            enemies[i].row = 9 + (i-16)*25;
        }
        if (i >= 22 && i < 29) {
            enemies[i].col = 185;
            enemies[i].row = (i-22)*20;
        }
        if (i >= 29 && i < 37) {
            enemies[i].col = 215;
            enemies[i].row = 9 + (i-29)*17;
        }

               
    }
}

void initBaskets() {
    for (int i = 0; i < BASKETCOUNT; i++) 
    {
        baskets[i].active = 1;
        baskets[i].width = 8;
        baskets[i].height = 8;
        baskets[i].worldRow = 47 + 20*i;
        baskets[i].worldCol = 210;
        baskets[i].aniState = BASKET;
        
    }
}

void initPandas() {
    for (int i = 0; i < PANDACOUNT; i++) 
    {
        pandas[i].width = 8;
        pandas[i].height = 8;
        pandas[i].worldCol = 220;
        pandas[i].worldRow = (47 + i*20);
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

    if (panda.aniCounter % 25 == 0) 
    {
        panda.curFrame = (panda.curFrame + 1) % panda.numFrames;
	} else {
        panda.aniCounter++;
    }

    if (BUTTON_HELD(BUTTON_UP)) 
    {
        if (collisionmap2Bitmap[OFFSET(panda.worldCol, panda.worldRow - panda.rdel, WORLDWIDTH1)]
            && collisionmap2Bitmap[OFFSET(panda.worldCol + panda.width - panda.cdel, panda.worldRow - panda.rdel, WORLDWIDTH1)]) {
                if (panda.worldRow > 0) {
            
                    panda.aniState = PANDAHAPPY;
                    panda.worldRow-=panda.rdel;

                    if (vOff > 0 && panda.row + panda.height/2 == SCREENHEIGHT/2) {
                        // Update background offset variable if the above is true
                        vOff--;
                    }

                }
        } else {
            panda.col = 120;
            panda.row = 70;
            panda.worldCol = 120;
            panda.worldRow = 70;
            hOff = 0;
            vOff = 0;
            playerHOff = 0;
            totalHOff = 0;
            screenBlock = 28;
        }
        
    
    }

    if (BUTTON_HELD(BUTTON_DOWN)) 
    {
        if (panda.worldRow + panda.height < WORLDHEIGHT - 20) 
        {
            if (collisionmap2Bitmap[OFFSET(panda.worldCol, panda.worldRow + panda.height, WORLDWIDTH1)]
                && collisionmap2Bitmap[OFFSET(panda.worldCol + panda.width - panda.cdel, panda.worldRow + panda.height, WORLDWIDTH1)]) 
            {
                panda.aniState = PANDAHAPPY;
                panda.worldRow+=panda.rdel;

                if (vOff + SCREENHEIGHT < WORLDHEIGHT && panda.row + panda.height/2 == SCREENHEIGHT/2) 
                {
                    // Update background offset variable if the above is true
                    vOff++;
                }

            } else {
                panda.col = 120;
                panda.row = 70;
                panda.worldCol = 120;
                panda.worldRow = 70;
                hOff = 0;
                vOff = 0;
                playerHOff = 0;
                totalHOff = 0;
                screenBlock = 28;
            }
            
        }
    
    }

    if (BUTTON_HELD(BUTTON_RIGHT)) 
    {
        if (panda.worldCol + panda.width < WORLDWIDTH1 - 20) {
            if ((collisionmap2Bitmap[OFFSET((panda.worldCol + panda.width),panda.worldRow,WORLDWIDTH1)] == 0x7FFF)
            && (collisionmap2Bitmap[OFFSET((panda.worldCol + panda.width),(panda.worldRow + panda.height - panda.rdel),WORLDWIDTH1)] == 0x7FFF)) 
            {
                panda.worldCol++;
                panda.aniState = PANDASAD;

                if (screenBlock < 31 && hOff < (WORLDWIDTH1 - SCREENWIDTH -1) && panda.col > SCREENWIDTH / 2) {
                    hOff++;
                    playerHOff++;
                    totalHOff++;
                } 

            } else {
                panda.col = 120;
                panda.row = 70;
                panda.worldCol = 120;
                panda.worldRow = 70;
                hOff = 0;
                vOff = 0;
                playerHOff = 0;
                totalHOff = 0;
                screenBlock = 28;
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

    panda.col = panda.worldCol - playerHOff;
    panda.row = panda.worldRow - vOff;
    
    
    
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
        if (panda.worldRow > 0 && collisionmapBitmap[OFFSET(panda.worldCol, panda.worldRow - panda.rdel, WORLDWIDTH2)]
            && collisionmapBitmap[OFFSET(panda.worldCol + panda.width - panda.cdel, panda.worldRow - panda.rdel, WORLDWIDTH2)]) {
                panda.aniState = PANDAHAPPY;
                panda.worldRow-=panda.rdel;

             
        }
        
    }

    if (BUTTON_HELD(BUTTON_DOWN) && panda.row < 132) 
    {
        if (panda.worldRow + panda.height < WORLDHEIGHT && collisionmapBitmap[OFFSET(panda.worldCol, panda.worldRow + panda.height, WORLDWIDTH2)]
            && collisionmapBitmap[OFFSET(panda.worldCol + panda.width - panda.cdel, panda.worldRow + panda.height, WORLDWIDTH2)]) {
                panda.aniState = PANDAHAPPY;
                panda.worldRow+=panda.rdel;

            
        }
       
        
    
    }
    if (BUTTON_HELD(BUTTON_LEFT)) 
    {
         if (panda.worldCol > 0 && (collisionmapBitmap[OFFSET((panda.worldCol - panda.cdel),panda.worldRow, WORLDWIDTH2)])
            && (collisionmapBitmap[OFFSET((panda.worldCol - panda.cdel), (panda.worldRow + panda.height - panda.rdel) , WORLDWIDTH2)]
            )) {
                panda.worldCol--;
                panda.aniState = PANDASAD;

            
        }
        
    }

    if (BUTTON_HELD(BUTTON_RIGHT)) 
    {
        if (panda.worldCol + panda.width < WORLDWIDTH2 && (collisionmapBitmap[OFFSET((panda.worldCol + panda.width),panda.worldRow,WORLDWIDTH2)] == 0x7FFF)
            && (collisionmapBitmap[OFFSET((panda.worldCol + panda.width),(panda.worldRow + panda.height - panda.rdel),WORLDWIDTH2)] == 0x7FFF)) {
                panda.worldCol++;
                panda.aniState = PANDASAD;

        

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

    if (BUTTON_PRESSED(BUTTON_A)) {
        cheatGame = 1;
    }
    

    panda.col = panda.worldCol;
    panda.row = panda.worldRow;
 
    
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

void checkEnemyCollision() {
     for (int i = 0; i < ENEMYCOUNT; i++) {
        if (enemies[i].active && collision(panda.col, panda.row, panda.width, panda.height, enemies[i].col, enemies[i].row, enemies[i].width, enemies[i].height)) {
            hasLost = 1;
            
	    
        }
    }
}

void checkFoodDelivered() {
    for (int i = 0; i < BASKETCOUNT; i++) {
        if (BUTTON_PRESSED(BUTTON_A) && collision(panda.worldCol - totalHOff, panda.row, panda.width, panda.height, baskets[i].col, baskets[i].row, baskets[i].width, baskets[i].height) && panda.leavesCollected > 0) 
        {
            playSoundB(chewSound, CHEWSOUNDLEN, 0);
            pandas[i].leavesCollected++;
            panda.leavesCollected--;
            pandas[i].curFrame = 1;
            pandas[0].aniCounter++;
            
            
    
        } else {
            pandas[0].aniCounter++;
        }
            
            
        if (BUTTON_PRESSED(BUTTON_B) && collision(panda.worldCol - totalHOff, panda.row, panda.width, panda.height, baskets[i].col, baskets[i].row, baskets[i].width, baskets[i].height) && panda.stemsCollected > 0) 
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
    if (count == 100) {
        count = 0;
    }
}
void moveEnemies() {
    for (int i = 0; i < ENEMYCOUNT; i++) 
    {
        if (enemies[i].active) 
        {
            shadowOAM[i+45].attr0 = (enemies[i].row + 3) | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i+45].attr1 = (enemies[i].col) | ATTR1_TINY;
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
            baskets[i].row = baskets[i].worldRow - vOff;
            baskets[i].col = baskets[i].worldCol - hOff;
            shadowOAM[i+32].attr0 = baskets[i].row | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i+32].attr1 = baskets[i].col | ATTR1_TINY;
            shadowOAM[i+32].attr2 = ATTR2_TILEID(baskets[i].aniState, 0);
        
    }
}

void drawFriendlyPandas() {
    
    for (int i = 0; i < PANDACOUNT; i++) 
    {
        pandas[i].row = pandas[i].worldRow - vOff;
        pandas[i].col = pandas[i].worldCol - hOff;

        shadowOAM[i+36].attr0 =  pandas[i].row | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[i+36].attr1 =  pandas[i].col | ATTR1_TINY;
        shadowOAM[i+36].attr2 = ATTR2_TILEID(pandas[i].aniState, pandas[i].curFrame);
        
    }
    
}

void updateGame() {
    REG_BG1CNT = 0; 
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(screenBlock) | BG_SIZE_WIDE;

    if (hOff > 256) {
        screenBlock++;
        hOff -= 256;
        REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(screenBlock) | BG_SIZE_WIDE;
    }

    if (screenBlock == 31 || (screenBlock == 30 && hOff > 255)) {
        drawFriendlyPandas();
        drawBaskets();
    }

    if (playerHOff > 512) {
        playerHOff -= 512;
    }
    
    updatePanda();
    drawPanda();
    checkFoodDelivered();
    drawScore();
    if ((pandas[0].leavesCollected == 5 || pandas[0].stemsCollected == 3) && (pandas[1].leavesCollected == 5 || pandas[1].stemsCollected == 3) && (pandas[2].leavesCollected == 5 || pandas[2].stemsCollected == 3))// && (panda.leavesCollected == 0) && (panda.stemsCollected == 0))
    {
        hasWon = 1;
    }
    if ((pandas[0].leavesCollected == 5 || pandas[0].stemsCollected == 3) && (pandas[1].leavesCollected == 5 || pandas[1].stemsCollected == 3) && (pandas[2].leavesCollected == 5 || pandas[2].stemsCollected == 3))
    {
        if (panda.leavesCollected != 0 || panda.stemsCollected != 0)
        {
            //hasLost = 1;
        }
        
    }
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
    count++;
    updatePanda2();
    drawPanda();
    
    drawScore();
    
    
    if (cheatGame) {
        clearFood();
        clearEnemies();
        panda.stemsCollected = 15;
        panda.leavesCollected = 15;
    } else {
        
        if (count < 50) {
            moveEnemies();  
        } else {
            drawEnemies();
        }
        
        drawFood();
        checkFoodCollected();
        checkEnemyCollision();

    }

    if (pandas[0].aniCounter % 200) {
        resetAnimationFriendly();
    }
    
    
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    resetAnimationFriendly();
}



