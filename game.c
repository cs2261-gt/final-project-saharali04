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
int goToChina;

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
    initPandas();
    initBaskets();
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
        if (i < 4) {
            food[i].col = 31;
            food[i].row = (i*30) + 15;
        }
        if (i >= 4 && i < 9) {
            food[i].col = 64;
            food[i].row = ((i-4)*30);
        }

        if (i >= 9 && i < 14) {
            food[i].col = 101;
            food[i].row = (i-9)*25 + 12;
        } 
        if (i >= 14 && i < 20) {
            food[i].col = 141;
            food[i].row = ((i-14)*25);
        }
        if (i >= 20 && i < 27) {
            food[i].col = 181;
            food[i].row = (i-20)*20 + 10;
        }
        if (i >= 27 && i < 35) {
            food[i].col = 214;
            food[i].row = 1 + ((i-27)*18);
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
        enemies[i].aniState = 7;

        

        if (i < 5) {
            enemies[i].col = 30;
            enemies[i].row = i*30;
        }
        if (i >= 5 && i < 9) {
            enemies[i].col = 63;
            enemies[i].row = 16 + (i-5)*30;
        }

        if (i >= 9 && i < 15) {
            enemies[i].col = 100;
            enemies[i].row = (i-9)*25;
        } 
        if (i >= 15 && i < 20) {
            enemies[i].col = 140;
            enemies[i].row = 13 + (i-15)*25;
        }
        if (i >= 20 && i < 27) {
            enemies[i].col = 180;
            enemies[i].row = (i-20)*20;
        }
        if (i >= 27 && i < 34) {
            enemies[i].col = 213;
            enemies[i].row = 10 + (i-27)*18;
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
    door.worldRow = 5;
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
                panda.col = 73;
                panda.row = 64;
                panda.worldCol = 73;
                panda.worldRow = 64;
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
                    panda.col = 73;
                    panda.row = 64;
                    panda.worldCol = 73;
                    panda.worldRow = 64;
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
                        panda.col = 73;
                        panda.row = 64;
                        panda.worldCol = 73;
                        panda.worldRow = 64;
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

    if (BUTTON_HELD(BUTTON_DOWN) && panda.row < 126) 
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
    shadowOAM[100].attr0 = door.worldRow | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[100].attr1 = door.worldCol | ATTR1_SMALL;
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
        enemies[i].col+=1;
        if (enemies[i].active) 
        {
            shadowOAM[i+45].attr0 = enemies[i].row | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i+45].attr1 = enemies[i].col | ATTR1_TINY;
            shadowOAM[i+45].attr2 = ATTR2_TILEID(enemies[i].aniState, 2);
        } 
    }
    
}
void drawEnemiesLeft() {
    for (int i = 0; i < ENEMYCOUNT; i++) 
    {

        if (enemies[i].active) 
        {
            shadowOAM[i+45].attr0 = (enemies[i].row) | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i+45].attr1 = (enemies[i].col) | ATTR1_TINY;
            shadowOAM[i+45].attr2 = ATTR2_TILEID(enemies[i].aniState, 3);
        } 
    }
}

void drawEnemiesRight() {
    
    for (int i = 0; i < ENEMYCOUNT; i++) 
    {
        enemies[i].col+=1;
        if (enemies[i].active) 
        {
            shadowOAM[i+45].attr0 = (enemies[i].row) | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i+45].attr1 = (enemies[i].col) | ATTR1_TINY;
            shadowOAM[i+45].attr2 = ATTR2_TILEID(enemies[i].aniState, 4);
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
    shadowOAM[40].attr0 = 137 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[40].attr1 = 164 | ATTR1_TINY;
    shadowOAM[40].attr2 = ATTR2_TILEID(totalStemsDelivered + 8, 0);

    shadowOAM[41].attr0 = 147 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[41].attr1 = 164 | ATTR1_TINY;
    shadowOAM[41].attr2 = ATTR2_TILEID(totalLeavesDelivered + 8, 0);


}

void drawFoodCollected() {
    shadowOAM[40].attr0 = 142 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[40].attr1 = 105 | ATTR1_TINY;
    shadowOAM[40].attr2 = ATTR2_TILEID(panda.stemsCollected + 8, 0);

    shadowOAM[41].attr0 = 142 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[41].attr1 = 210 | ATTR1_TINY;
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
        shadowOAM[i+36].attr2 = ATTR2_TILEID(pandas[i].aniState, pandas[i].curFrame);
        
    }
    
}

void updateGame() { 
    if (screenBlock == 28) {
        REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(screenBlock) | BG_SIZE_WIDE;
    }   
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
        drawDoor();
    }

    if (collision(panda.worldCol - totalHOff, panda.worldRow, panda.width, panda.height, door.worldCol, door.worldRow, door.width, door.height)) {
        goToChina = 1;
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
    
    drawFoodDelivered();
    updatePanda();
    drawPanda();
    checkFoodDelivered();
   
    
    for (int i = 0; i < PANDACOUNT; i++) {
        if (pandas[i].leavesCollected == 5 || pandas[i].stemsCollected == 5) {
            pandas[i].aniState = 8;
            pandas[i].curFrame = 1;
        }
    }
    if ((pandas[0].leavesCollected == 5 || pandas[0].stemsCollected == 5) && (pandas[1].leavesCollected == 5 || pandas[1].stemsCollected == 5) && (pandas[2].leavesCollected == 5 || pandas[2].stemsCollected == 5))
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
       
    }
    drawPanda();
    drawDoor();
    drawFoodCollected();
    
    
    if (hasShield) {
        drawShield();
        drawFood();
        checkFoodCollected();
        
        if (count < 33) {
            drawEnemiesLeft();  
        } else if (count == 66) {
            drawEnemies();
        } else if (count == 100) {
            drawEnemiesRight();
        }

    } else {
        
        if (count < 33) {
            drawEnemiesLeft();  
        } else if (count == 67) {
            drawEnemies();
        } else if (count == 100) {
            drawEnemiesRight();
        }  
        drawFood();
        checkFoodCollected();
        checkEnemyCollision();

    }
    if (count == 133) {
        count = 0;
        for (int i = 0; i < ENEMYCOUNT; i++) {
            enemies[i].col-=2;
        }
    }

    

    
    
    
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    resetAnimationFriendly();
}



