#include "game.h"
#include "myLib.h"
#include <stdlib.h>
#include "chew.h"
#include "collisionmap.h"
#include "collisionmap2.h"
// keeps track if player has lost
int hasLost;
int hasWon;
int hasShield;
int count;
int totalStemsDelivered;
int totalLeavesDelivered;

int hOff = 0;   
int vOff = 0;
int playerHOff;
int screenBlock;
int totalHOff;
int goToMaze;

// initializes PANDA and food
void initGame() {
    vOff = 0;
    hOff = 0;
    playerHOff = 0;
    screenBlock = 28;
    hasShield = 0;
    initPanda();
    initFood();
    initEnemies();
    initDoor();
   
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
            food[i].col = 32;
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
            enemies[i].col = 32;
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

void initDoor() {
    door.active = 1;
    door.width = 12;
    door.height = 12;
    door.worldRow = 75;
    door.worldCol = 225;

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
    if ( !hasShield) {
        if (BUTTON_HELD(BUTTON_UP)) 
        {
            if (collisionmapBitmap[OFFSET(panda.worldCol, panda.worldRow - panda.rdel, WORLDWIDTH1)]
                && collisionmapBitmap[OFFSET(panda.worldCol + panda.width - panda.cdel, panda.worldRow - panda.rdel, WORLDWIDTH1)]) {
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
                if (collisionmapBitmap[OFFSET(panda.worldCol, panda.worldRow + panda.height, WORLDWIDTH1)]
                    && collisionmapBitmap[OFFSET(panda.worldCol + panda.width - panda.cdel, panda.worldRow + panda.height, WORLDWIDTH1)]) 
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
                if ((collisionmapBitmap[OFFSET((panda.worldCol + panda.width),panda.worldRow,WORLDWIDTH1)] == 0x7FFF)
                    && (collisionmapBitmap[OFFSET((panda.worldCol + panda.width),(panda.worldRow + panda.height - panda.rdel),WORLDWIDTH1)] == 0x7FFF)) 
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

    } else {
        if (BUTTON_HELD(BUTTON_UP) && collisionmapBitmap[OFFSET(panda.worldCol, panda.worldRow - panda.rdel, WORLDWIDTH1)]
            && collisionmapBitmap[OFFSET(panda.worldCol + panda.width - panda.cdel, panda.worldRow - panda.rdel, WORLDWIDTH1)])
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
            if (panda.worldRow + panda.height < WORLDHEIGHT - 20 && collisionmapBitmap[OFFSET(panda.worldCol, panda.worldRow + panda.height, WORLDWIDTH1)]
                    && collisionmapBitmap[OFFSET(panda.worldCol + panda.width - panda.cdel, panda.worldRow + panda.height, WORLDWIDTH1)]) 
            {
                
                panda.aniState = PANDAHAPPY;
                panda.worldRow+=panda.rdel;

                if (vOff + SCREENHEIGHT < WORLDHEIGHT && panda.row + panda.height/2 == SCREENHEIGHT/2) 
                {
                    // Update background offset variable if the above is true
                    vOff++;
                }
            }
    
        }

        if (BUTTON_HELD(BUTTON_RIGHT)) 
        {
            if (panda.worldCol + panda.width < WORLDWIDTH1 - 20 && (collisionmapBitmap[OFFSET((panda.worldCol + panda.width),panda.worldRow,WORLDWIDTH1)] == 0x7FFF)
                    && (collisionmapBitmap[OFFSET((panda.worldCol + panda.width),(panda.worldRow + panda.height - panda.rdel),WORLDWIDTH1)] == 0x7FFF))     
            {
                panda.worldCol++;
                panda.aniState = PANDASAD;

                if (screenBlock < 31 && hOff < (WORLDWIDTH1 - SCREENWIDTH -1) && panda.col > SCREENWIDTH / 2) {
                    hOff++;
                    playerHOff++;
                    totalHOff++;
                } 

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
        if (panda.worldRow > 4 && collisionmap2Bitmap[OFFSET(panda.worldCol, panda.worldRow - panda.rdel, WORLDWIDTH2)]
            && collisionmap2Bitmap[OFFSET(panda.worldCol + panda.width - panda.cdel, panda.worldRow - panda.rdel, WORLDWIDTH2)]) {
                panda.aniState = PANDAHAPPY;
                panda.worldRow-=panda.rdel;

             
        }
        
    }

    if (BUTTON_HELD(BUTTON_DOWN) && panda.row < 132) 
    {
        if (panda.worldRow + panda.height < WORLDHEIGHT && collisionmap2Bitmap[OFFSET(panda.worldCol, panda.worldRow + panda.height, WORLDWIDTH2)]
            && collisionmap2Bitmap[OFFSET(panda.worldCol + panda.width - panda.cdel, panda.worldRow + panda.height, WORLDWIDTH2)]) {
                panda.aniState = PANDAHAPPY;
                panda.worldRow+=panda.rdel;

            
        }
       
        
    
    }
    if (BUTTON_HELD(BUTTON_LEFT)) 
    {
         if (panda.worldCol > 0 && (collisionmap2Bitmap[OFFSET((panda.worldCol - panda.cdel),panda.worldRow, WORLDWIDTH2)])
            && (collisionmap2Bitmap[OFFSET((panda.worldCol - panda.cdel), (panda.worldRow + panda.height - panda.rdel) , WORLDWIDTH2)]
            )) {
                panda.worldCol--;
                panda.aniState = PANDASAD;

            
        }
        
    }

    if (BUTTON_HELD(BUTTON_RIGHT)) 
    {
        if (panda.worldCol + panda.width < WORLDWIDTH2 && (collisionmap2Bitmap[OFFSET((panda.worldCol + panda.width),panda.worldRow,WORLDWIDTH2)] == 0x7FFF)
            && (collisionmap2Bitmap[OFFSET((panda.worldCol + panda.width),(panda.worldRow + panda.height - panda.rdel),WORLDWIDTH2)] == 0x7FFF)) {
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
        hasShield = 1;
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
            
    
        }
            
            
        if (BUTTON_PRESSED(BUTTON_B) && collision(panda.worldCol - totalHOff, panda.row, panda.width, panda.height, baskets[i].col, baskets[i].row, baskets[i].width, baskets[i].height) && panda.stemsCollected > 0) 
        {
            playSoundB(chewSound, CHEWSOUNDLEN, 0);
            pandas[i].stemsCollected++;
            panda.stemsCollected--;
            pandas[i].curFrame = 1;
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
void drawDoor() {
    shadowOAM[100].attr0 = 75 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[100].attr1 = 225 | ATTR1_SMALL;
    shadowOAM[100].attr2 = ATTR2_TILEID(0, 3);
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

void drawFoodDelivered() {
    totalStemsDelivered = pandas[0].stemsCollected + pandas[1].stemsCollected + pandas[2].stemsCollected;
    totalLeavesDelivered = pandas[0].leavesCollected + pandas[1].leavesCollected + pandas[2].leavesCollected;
    shadowOAM[40].attr0 = 139 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[40].attr1 = 159 | ATTR1_TINY;
    shadowOAM[40].attr2 = ATTR2_TILEID(totalStemsDelivered + 8, 0);

    shadowOAM[41].attr0 = 149 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[41].attr1 = 159 | ATTR1_TINY;
    shadowOAM[41].attr2 = ATTR2_TILEID(totalLeavesDelivered + 8, 0);


}

void drawFoodCollected() {
    shadowOAM[40].attr0 = 139 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[40].attr1 = 159 | ATTR1_TINY;
    shadowOAM[40].attr2 = ATTR2_TILEID(panda.stemsCollected + 8, 0);

    shadowOAM[41].attr0 = 149 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[41].attr1 = 159 | ATTR1_TINY;
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

void drawShield() {
    shadowOAM[101].attr0 = (panda.row - 4) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[101].attr1 = (panda.col - 4) | ATTR1_SMALL;
    shadowOAM[101].attr2 = ATTR2_TILEID(0, 5);

}

void drawFriendlyPandas() {
    
    for (int i = 0; i < PANDACOUNT; i++) 
    {
        pandas[i].row = pandas[i].worldRow - vOff;
        pandas[i].col = pandas[i].worldCol - hOff;

        shadowOAM[i+36].attr0 =  pandas[i].row | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[i+36].attr1 =  pandas[i].col | ATTR1_TINY;
        shadowOAM[i+36].attr2 = ATTR2_TILEID(7, pandas[i].curFrame);
        
    }
    
}

void updateGame() {
    REG_BG1CNT = 0; 
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(screenBlock) | BG_SIZE_WIDE;
    
    if (hasShield) {
        drawShield();
    }
    if (hOff > 256) {
        screenBlock++;
        hOff -= 256;
        REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(screenBlock) | BG_SIZE_WIDE;
    }

    if (screenBlock == 31 || (screenBlock == 30 && hOff > 256)) {
        drawFriendlyPandas();
        drawBaskets();
        drawFoodDelivered();
    }

    if (playerHOff > 512) {
        playerHOff -= 512;
    }
    for (int i = 0; i < PANDACOUNT; i++) {
        if (pandas[i].curFrame == 1) 
        {
            pandas[i].aniCounter++;
        }
        if (pandas[i].aniCounter == 15)
        {
            pandas[i].aniCounter = 0;
            pandas[i].curFrame = 0;

        }
    }
    
    
    updatePanda();
    drawPanda();
    checkFoodDelivered();
   
    if ((pandas[0].leavesCollected == 5 || pandas[0].stemsCollected == 3) && (pandas[1].leavesCollected == 5 || pandas[1].stemsCollected == 3) && (pandas[2].leavesCollected == 5 || pandas[2].stemsCollected == 3))
    {
        hasWon = 1;
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
    if (collision(panda.worldCol, panda.worldRow, panda.width, panda.height, door.worldCol, door.worldRow, door.width, door.height)) {
        goToMaze = 1;
        pandas[0].stemsCollected++;
    }
    drawPanda();
    drawDoor();
    drawFoodCollected();

    
    
    
    
    if (hasShield) {
        drawShield();
        checkFoodCollected();
        
        if (count < 50) {
            moveEnemies();  
        } else {
            drawEnemies();
        }

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

    

    
    
    
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    resetAnimationFriendly();
}



