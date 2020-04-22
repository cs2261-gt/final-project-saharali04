#include "game.h"
#include "myLib.h"
#include <stdlib.h>
#include "chew.h"
#include "collisionmap.h"
#include "collisionmap2.h"
#include "sound.h"

// VARIABLES

// keeps track if won/lost
int hasLost;
int hasWon;

// keeps track of total stems/leaves delivered
int totalStemsDelivered;
int totalLeavesDelivered;

// XL background
int hOff = 0;   
int vOff = 0;
int screenBlock;
int playerHOff;
int totalHOff;

// allows state transitions
int goToMaze;
int goToChina;

// cheat mode variables
int cheatMode;
int randomIndex;

// misc
int count;

// INIT FUNCTIONS

// initializes panda, food, enemies, friendly pandas, baskets, and door
void initGame() 
{
    vOff = 0;
    hOff = 0;
    playerHOff = 0;
    screenBlock = 28;
    cheatMode = 0;
    initPanda();
    initFood();
    initEnemies();
    initPandas();
    initBaskets();
    initDoor();
}

// initialize panda
void initPanda() 
{
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

// initialize food
void initFood() 
{
    for (int i = 0; i < FOODCOUNT; i++) 
    {
        food[i].active = 1;
        food[i].width = 8;
        food[i].height = 8;
        food[i].cdel = 2;
        food[i].rdel = 2;
        if (i < 4) 
        {
            food[i].col = 31;
            food[i].row = (i*30) + 15;
        }
        if (i >= 4 && i < 9) 
        {
            food[i].col = 64;
            food[i].row = ((i-4)*30);
        }

        if (i >= 9 && i < 14) 
        {
            food[i].col = 101;
            food[i].row = (i-9)*25 + 12;
        } 
        if (i >= 14 && i < 20) 
        {
            food[i].col = 141;
            food[i].row = ((i-14)*25);
        }
        if (i >= 20 && i < 27) 
        {
            food[i].col = 181;
            food[i].row = (i-20)*20 + 10;
        }
        if (i >= 27 && i < 35) 
        {
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
    food[26].row = food[26].row - 1;
}

// initialize enemies
void initEnemies() 
{
    for (int i = 0; i < ENEMYCOUNT; i++) 
    {
        enemies[i].active = 1;
        enemies[i].width = 9;
        enemies[i].height = 9;
        enemies[i].cdel = 2;
        enemies[i].rdel = 2;
        enemies[i].aniState = 7;

        if (i < 5) 
        {
            enemies[i].col = 26;
            enemies[i].row = i*30;
        }
        if (i >= 5 && i < 9) 
        {
            enemies[i].col = 58;
            enemies[i].row = 16 + (i-5)*30;
        }

        if (i >= 9 && i < 15) 
        {
            enemies[i].col = 97;
            enemies[i].row = (i-9)*25;
        } 
        if (i >= 15 && i < 20) 
        {
            enemies[i].col = 137;
            enemies[i].row = 13 + (i-15)*25;
        }
        if (i >= 20 && i < 27) 
        {
            enemies[i].col = 177;
            enemies[i].row = (i-20)*20;
        }
        if (i >= 27 && i < 34) 
        {
            enemies[i].col = 209;
            enemies[i].row = 10 + (i-27)*18;
        }        
    }
}

// initialize baskets
void initBaskets() 
{
    for (int i = 0; i < BASKETCOUNT; i++) 
    {
        baskets[i].active = 1;
        baskets[i].width = 16;
        baskets[i].height = 16;
        baskets[i].worldRow = 75;
        baskets[i].worldCol = 150 + 20*i;
        baskets[i].aniState = 4;
        
    }
}

// initialize friendly pandas
void initPandas() 
{
    for (int i = 0; i < PANDACOUNT; i++) 
    {
        pandas[i].width = 16;
        pandas[i].height = 16;
        pandas[i].worldCol = 150 + 20*i;
        pandas[i].worldRow = 97;
        pandas[i].aniState = 6;
        pandas[i].leavesCollected = 0;
        pandas[i].stemsCollected = 0;
        pandas[i].curFrame = 6;
        pandas[i].numFrames = 2;
        
    }
}

// initialize door
void initDoor() 
{
    door.active = 1;
    door.width = 16;
    door.height = 16;
    door.worldRow = 0;
    door.worldCol = 225;

}

// UPDATE PANDA FUNCTIONS

// updates position of panda in GAME state and changes animation states
void updatePanda() 
{
    if (panda.aniState != PANDAIDLE) 
    {
        panda.prevAniState = panda.aniState;
        panda.aniState = PANDANEUTRAL;
    } 

    if (panda.aniCounter % 25 == 0) 
    {
        panda.curFrame = (panda.curFrame + 1) % panda.numFrames;
	} else 
    {
        panda.aniCounter++;
    }

    if (!cheatMode) 
    {
        if (BUTTON_HELD(BUTTON_UP)) 
        {
            if (collisionmapBitmap[OFFSET(panda.worldCol, panda.worldRow - panda.rdel, WORLDWIDTH1)]
                && collisionmapBitmap[OFFSET(panda.worldCol + panda.width - panda.cdel, panda.worldRow - panda.rdel, WORLDWIDTH1)]) 
            {
                if (panda.worldRow > 0) 
                {
                    panda.aniState = PANDAHAPPY;
                    panda.worldRow-=panda.rdel;

                    if (vOff > 0 && panda.row + panda.height/2 == SCREENHEIGHT/2) 
                    {
                        vOff--;
                    }
                }
            } else 
            {
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
                        vOff++;
                    }

                } else 
                {
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
            if (panda.worldCol + panda.width < WORLDWIDTH1 - 20) 
            {
                if ((collisionmapBitmap[OFFSET((panda.worldCol + panda.width),panda.worldRow,WORLDWIDTH1)] == 0x7FFF)
                    && (collisionmapBitmap[OFFSET((panda.worldCol + panda.width),(panda.worldRow + panda.height - panda.rdel),WORLDWIDTH1)] == 0x7FFF)) 
                {
                    panda.worldCol++;
                    panda.aniState = PANDASAD;

                    if (screenBlock < 30 && hOff < (WORLDWIDTH1 - SCREENWIDTH -1) && panda.col > SCREENWIDTH / 2) 
                    {
                        hOff++;
                        playerHOff++;
                        totalHOff++;
                    } 

                } else 
                {
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
    } else 
    {
        if (BUTTON_HELD(BUTTON_UP) && collisionmapBitmap[OFFSET(panda.worldCol, panda.worldRow - panda.rdel, WORLDWIDTH1)]
            && collisionmapBitmap[OFFSET(panda.worldCol + panda.width - panda.cdel, panda.worldRow - panda.rdel, WORLDWIDTH1)])
        {
            if (panda.worldRow > 0) 
            {
                panda.aniState = PANDAHAPPY;
                panda.worldRow-=panda.rdel;

                if (vOff > 0 && panda.row + panda.height/2 == SCREENHEIGHT/2) 
                {
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

                if (screenBlock < 30 && hOff < (WORLDWIDTH1 - SCREENWIDTH -1) && panda.col > SCREENWIDTH / 2) 
                {
                    hOff++;
                    playerHOff++;
                    totalHOff++;
                } 
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

    panda.col = panda.worldCol - playerHOff;
    panda.row = panda.worldRow - vOff;
}

// updates position of panda in GAME2 state and changes animation states
void updatePanda2() 
{
    if (panda.aniState != PANDAIDLE) 
    {
        panda.prevAniState = panda.aniState;
        panda.aniState = PANDANEUTRAL;
    } 

    if(panda.aniCounter % 25 == 0) 
    {
        panda.curFrame = (panda.curFrame + 1) % panda.numFrames;
	} else 
    {
        panda.aniCounter++;
    }

    if (BUTTON_HELD(BUTTON_UP)) 
    {
        if (panda.worldRow > 0 && collisionmap2Bitmap[OFFSET(panda.worldCol, panda.worldRow - panda.rdel, WORLDWIDTH2)]
            && collisionmap2Bitmap[OFFSET(panda.worldCol + panda.width - panda.cdel, panda.worldRow - panda.rdel, WORLDWIDTH2)]) 
        {
                panda.aniState = PANDAHAPPY;
                panda.worldRow-=panda.rdel; 
        }
        
    }

    if (BUTTON_HELD(BUTTON_DOWN) && panda.row < 128) 
    {
        if (panda.worldRow + panda.height < WORLDHEIGHT && collisionmap2Bitmap[OFFSET(panda.worldCol, panda.worldRow + panda.height, WORLDWIDTH2)]
            && collisionmap2Bitmap[OFFSET(panda.worldCol + panda.width - panda.cdel, panda.worldRow + panda.height, WORLDWIDTH2)]) 
        {
                panda.aniState = PANDAHAPPY;
                panda.worldRow+=panda.rdel;
        }
    }

    if (BUTTON_HELD(BUTTON_LEFT)) 
    {
        if (panda.worldCol > 0 && (collisionmap2Bitmap[OFFSET((panda.worldCol - panda.cdel),panda.worldRow, WORLDWIDTH2)])
            && (collisionmap2Bitmap[OFFSET((panda.worldCol - panda.cdel), (panda.worldRow + panda.height - panda.rdel) , WORLDWIDTH2)]))
        {
            panda.worldCol-=panda.cdel;
            panda.aniState = PANDASAD; 
        }
    }

    if (BUTTON_HELD(BUTTON_RIGHT)) 
    {
        if (panda.worldCol + panda.width < 240 && (collisionmap2Bitmap[OFFSET((panda.worldCol + panda.width),panda.worldRow,WORLDWIDTH2)] == 0x7FFF)
            && (collisionmap2Bitmap[OFFSET((panda.worldCol + panda.width),(panda.worldRow + panda.height - panda.rdel),WORLDWIDTH2)] == 0x7FFF)) 
        {
            panda.worldCol+=panda.cdel;
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

    panda.col = panda.worldCol;
    panda.row = panda.worldRow;
}

// COLLISION CHECKS

// checks panda and food collision - food collected
void checkFoodCollected() 
{
    for (int i = 0; i < FOODCOUNT; i++) 
    {
        if (food[i].active && collision(panda.col, panda.row, panda.width, panda.height, food[i].col, food[i].row, food[i].width, food[i].height)) 
        {
            food[i].active = 0;
            shadowOAM[i+1].attr0 = food[i].row | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i+1].attr1 = food[i].col | ATTR1_TINY;
            shadowOAM[i+1].attr2 = ATTR2_TILEID(BLACKBACKGROUND, 0);
            DMANow(3, shadowOAM, OAM, 128 * 4);

            if (food[i].aniState == LEAF) {
                panda.leavesCollected++;
            } else 
            {
                panda.stemsCollected++;
            }
        }
    }
}

// checks panda and basket collision - how many stems and leaves are delivered
void checkFoodDelivered() 
{
    for (int i = 0; i < BASKETCOUNT; i++) 
    {
        if (BUTTON_PRESSED(BUTTON_A) && collision(panda.worldCol - totalHOff, panda.row, panda.width, panda.height, baskets[i].col, baskets[i].row, baskets[i].width, baskets[i].height) && panda.leavesCollected > 0) 
        {
            pandas[i].leavesCollected++;
            panda.leavesCollected--;
            pandas[i].curFrame = 8;
            playSoundB(chewSound, CHEWSOUNDLEN, 0);
        }
            
        if (BUTTON_PRESSED(BUTTON_B) && collision(panda.worldCol - totalHOff, panda.row, panda.width, panda.height, baskets[i].col, baskets[i].row, baskets[i].width, baskets[i].height) && panda.stemsCollected > 0) 
        {
            pandas[i].stemsCollected++;
            panda.stemsCollected--;
            pandas[i].curFrame = 8;
            playSoundB(chewSound, CHEWSOUNDLEN, 0);
        }
    }
}

// checks panda and enemy collision - if player lost
void checkEnemyCollision() 
{
     for (int i = 0; i < ENEMYCOUNT; i++) 
     {
        if (enemies[i].active && collision(panda.col, panda.row, panda.width, panda.height, enemies[i].col, enemies[i].row, enemies[i].width, enemies[i].height) && !enemies[i].isSpecial) 
        {
            hasLost = 1;
        }
    }
}

// DRAW FUNCTIONS

// draws panda
void drawPanda() 
{
    shadowOAM[0].attr0 = (ROWMASK & panda.row) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[0].attr1 = (COLMASK & panda.col) | ATTR1_TINY;
    shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(panda.aniState, panda.curFrame);
}

// draws food
void drawFood() 
{
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

// draws enemies in the middle
void drawEnemies() 
{
    for (int i = 0; i < ENEMYCOUNT; i++) 
    {
        enemies[i].col+=4;

        if (enemies[i].active) 
        {
            shadowOAM[i+45].attr0 = enemies[i].row | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i+45].attr1 = enemies[i].col | ATTR1_TINY;
            shadowOAM[i+45].attr2 = ATTR2_TILEID(enemies[i].aniState, 2);
        } 
    }
}

// draws enemies to the left
void drawEnemiesLeft() 
{
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

// draws enemies to the right
void drawEnemiesRight() 
{
    for (int i = 0; i < ENEMYCOUNT; i++) 
    {
        enemies[i].col+=4;

        if (enemies[i].active) 
        {
            shadowOAM[i+45].attr0 = (enemies[i].row) | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i+45].attr1 = (enemies[i].col) | ATTR1_TINY;
            shadowOAM[i+45].attr2 = ATTR2_TILEID(enemies[i].aniState, 4);
        } 
    }
}

// draws score for how much food is delivered
void drawFoodDelivered() 
{
    totalStemsDelivered = pandas[0].stemsCollected + pandas[1].stemsCollected + pandas[2].stemsCollected;
    totalLeavesDelivered = pandas[0].leavesCollected + pandas[1].leavesCollected + pandas[2].leavesCollected;
    
    shadowOAM[40].attr0 = 142 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[40].attr1 = 110 | ATTR1_TINY;
    shadowOAM[40].attr2 = ATTR2_TILEID(totalStemsDelivered + 8, 0);

    shadowOAM[41].attr0 = 142 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[41].attr1 = 216 | ATTR1_TINY;
    shadowOAM[41].attr2 = ATTR2_TILEID(totalLeavesDelivered + 8, 0);
}

// draws score for how much food is collected
void drawFoodCollected() 
{
    shadowOAM[40].attr0 = 142 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[40].attr1 = 105 | ATTR1_TINY;
    shadowOAM[40].attr2 = ATTR2_TILEID(panda.stemsCollected + 8, 0);

    shadowOAM[41].attr0 = 142 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[41].attr1 = 210 | ATTR1_TINY;
    shadowOAM[41].attr2 = ATTR2_TILEID(panda.leavesCollected + 8, 0);
}

// draws the baskets 
void drawBaskets() 
{
    for (int i = 0; i < BASKETCOUNT; i++) 
    {
            baskets[i].row = baskets[i].worldRow - vOff;
            baskets[i].col = baskets[i].worldCol - hOff;
            shadowOAM[i+32].attr0 = baskets[i].row | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i+32].attr1 = baskets[i].col | ATTR1_SMALL;
            shadowOAM[i+32].attr2 = ATTR2_TILEID(baskets[i].aniState, 6);
    }
}

// draws the friendly pandas
void drawFriendlyPandas() 
{
    for (int i = 0; i < PANDACOUNT; i++) 
    {
        pandas[i].row = pandas[i].worldRow - vOff;
        pandas[i].col = pandas[i].worldCol - hOff;

        shadowOAM[i+36].attr0 =  pandas[i].row | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[i+36].attr1 =  pandas[i].col | ATTR1_SMALL;
        shadowOAM[i+36].attr2 = ATTR2_TILEID(pandas[i].aniState, pandas[i].curFrame);
    }
}

// draws door
void drawDoor() 
{
    shadowOAM[100].attr0 = door.worldRow | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[100].attr1 = door.worldCol | ATTR1_SMALL;
    shadowOAM[100].attr2 = ATTR2_TILEID(0, 3);
}

void drawPandaScore()
{
    // stems
    shadowOAM[101].attr0 = pandas[0].row + 20 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[101].attr1 = pandas[0].col + 2 | ATTR1_TINY;
    shadowOAM[101].attr2 = ATTR2_TILEID(pandas[0].stemsCollected + 8, 0);

    shadowOAM[102].attr0 = pandas[1].row + 20 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[102].attr1 = pandas[1].col + 2 | ATTR1_TINY;
    shadowOAM[102].attr2 = ATTR2_TILEID(pandas[1].stemsCollected + 8, 0);

    shadowOAM[103].attr0 = pandas[2].row + 20 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[103].attr1 = pandas[2].col + 2 | ATTR1_TINY;
    shadowOAM[103].attr2 = ATTR2_TILEID(pandas[2].stemsCollected + 8, 0);

    //leaves 
    shadowOAM[104].attr0 = pandas[0].row + 30 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[104].attr1 = pandas[0].col + 2 | ATTR1_TINY;
    shadowOAM[104].attr2 = ATTR2_TILEID(pandas[0].leavesCollected + 8, 0);

    shadowOAM[105].attr0 = pandas[1].row + 30 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[105].attr1 = pandas[1].col + 2 | ATTR1_TINY;
    shadowOAM[105].attr2 = ATTR2_TILEID(pandas[1].leavesCollected + 8, 0);

    shadowOAM[106].attr0 = pandas[2].row + 30 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[106].attr1 = pandas[2].col + 2 | ATTR1_TINY;
    shadowOAM[106].attr2 = ATTR2_TILEID(pandas[2].leavesCollected + 8, 0);
}

// erases the baskets
void hideBaskets()
{
    for (int i = 0; i < BASKETCOUNT; i++) 
    {
            baskets[i].row = baskets[i].worldRow - vOff;
            baskets[i].col = baskets[i].worldCol - hOff;
            shadowOAM[i+32].attr0 = baskets[i].row | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i+32].attr1 = baskets[i].col | ATTR1_SMALL;
            shadowOAM[i+32].attr2 = ATTR2_TILEID(12, 12);
    }

}

// erases the pandas
void hidePandas()
{
    for (int i = 0; i < BASKETCOUNT; i++) 
    {
            pandas[i].row = pandas[i].worldRow - vOff;
            pandas[i].col = pandas[i].worldCol - hOff;
            shadowOAM[i+36].attr0 = pandas[i].row | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i+36].attr1 = pandas[i].col | ATTR1_SMALL;
            shadowOAM[i+36].attr2 = ATTR2_TILEID(12, 12);
    }
}

// erases the door
void hideDoor() {
    shadowOAM[100].attr0 = door.worldRow | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[100].attr1 = door.worldCol | ATTR1_SMALL;
    shadowOAM[100].attr2 = ATTR2_TILEID(12, 12);
}

// erases the food
void hideFood() 
{
    for (int i = 0; i < FOODCOUNT; i++) 
    {
        if (food[i].active) 
        {
            shadowOAM[i+1].attr0 = food[i].row | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i+1].attr1 = food[i].col | ATTR1_TINY;
            shadowOAM[i+1].attr2 = ATTR2_TILEID(12, 12);
        } 
    }
}

// erases the score
void hidePandaScore()
{
    // stems
    shadowOAM[101].attr0 = pandas[0].row + 20 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[101].attr1 = pandas[0].col + 2 | ATTR1_TINY;
    shadowOAM[101].attr2 = ATTR2_TILEID(12, 12);

    shadowOAM[102].attr0 = pandas[1].row + 20 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[102].attr1 = pandas[1].col + 2 | ATTR1_TINY;
    shadowOAM[102].attr2 = ATTR2_TILEID(12, 12);

    shadowOAM[103].attr0 = pandas[2].row + 20 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[103].attr1 = pandas[2].col + 2 | ATTR1_TINY;
    shadowOAM[103].attr2 = ATTR2_TILEID(12, 12);

    //leaves 
    shadowOAM[104].attr0 = pandas[0].row + 30 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[104].attr1 = pandas[0].col + 2 | ATTR1_TINY;
    shadowOAM[104].attr2 = ATTR2_TILEID(12, 12);

    shadowOAM[105].attr0 = pandas[1].row + 30 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[105].attr1 = pandas[1].col + 2 | ATTR1_TINY;
    shadowOAM[105].attr2 = ATTR2_TILEID(12, 12);

    shadowOAM[106].attr0 = pandas[2].row + 30 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[106].attr1 = pandas[2].col + 2 | ATTR1_TINY;
    shadowOAM[106].attr2 = ATTR2_TILEID(12, 12);
}

// UPDATE GAME FUNCTIONS

// update GAME state (maze screen)
void updateGame() { 
    checkFoodDelivered();
    //drawFoodDelivered();
    updatePanda();
    drawPanda();

    if (screenBlock == 28) 
    {
        REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(screenBlock) | BG_SIZE_WIDE;
    }   
    
    if (hOff > 256) 
    {
        screenBlock++;
        hOff -= 256;
        REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(screenBlock) | BG_SIZE_WIDE;
    }

    if (playerHOff > 512) 
    {
        playerHOff -= 512;
    }

    if (collision(panda.worldCol - totalHOff, panda.worldRow, panda.width, panda.height, door.worldCol, door.worldRow, door.width, door.height) && !cheatMode) 
    {
        goToChina = 1;
    }

    if (collision(panda.worldCol - totalHOff, panda.worldRow, panda.width, panda.height, door.worldCol, door.worldRow, door.width, door.height) && cheatMode) 
    {
        panda.col = 73;
        panda.row = 64;
        panda.worldCol = 73;
        panda.worldRow = 64;
        hOff = 0;
        vOff = 0;
        playerHOff = 0;
        totalHOff = 0;
        screenBlock = 28;
        hideBaskets();
        hidePandas();
        hideDoor();  
        hidePandaScore();
    }

    if (screenBlock == 30 || (screenBlock == 29 && hOff > 256)) 
    {
        drawFriendlyPandas();
        drawBaskets();
        drawDoor();
        drawPandaScore();
    }

    for (int i = 0; i < PANDACOUNT; i++) 
    {
        if (pandas[i].curFrame == 8) 
        {
            pandas[i].aniCounter++;
        }
        if (pandas[i].aniCounter == 15)
        {
            pandas[i].aniCounter = 0;
            pandas[i].curFrame = 6;
        }
    }
    
    for (int i = 0; i < PANDACOUNT; i++) 
    {
        if (pandas[i].leavesCollected == 5 || pandas[i].stemsCollected == 5) {
            pandas[i].aniState = 8;
            pandas[i].curFrame = 6;
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

// update GAME2 state (food/enemy screen)
void updateGame2() 
{
    if (collision(panda.worldCol, panda.worldRow, panda.width, panda.height, door.worldCol, door.worldRow, door.width, door.height)) 
    {
        goToMaze = 1;
    }

    if (cheatMode) 
    {
        hideFood();
        checkEnemyCollision();

        if (collision(panda.col, panda.row, panda.width, panda.height, enemies[randomIndex].col, enemies[randomIndex].row, enemies[randomIndex].width, enemies[randomIndex].height)) 
        {
            panda.stemsCollected = 15;
            panda.leavesCollected = 15;
        }
       
        if (count < 33) 
        {
            drawEnemiesLeft();  
        } else if (count == 66) 
        {
            drawEnemies();
        } else if (count == 100) 
        {
            drawEnemiesRight();
        }

    } else {
        drawFood();
        checkFoodCollected();
        checkEnemyCollision();
        if (count < 33) 
        {
            drawEnemiesLeft();  
        } else if (count == 67) 
        {
            drawEnemies();
        } else if (count == 100) 
        {
            drawEnemiesRight();
        }  
    }

    count++;
    checkCheatActivation();
    drawPanda();
    drawDoor();
    drawFoodCollected();
    updatePanda2(); 

    if (count == 133) 
    {
        count = 0;
        for (int i = 0; i < ENEMYCOUNT; i++) 
        {
            enemies[i].col-=8;
        }
    }

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    resetAnimationFriendly();
}

// MISC FUNCTIONS

// checks for cheat activation
void checkCheatActivation() 
{
    if (BUTTON_PRESSED(BUTTON_A)) 
    {
        cheatMode = 1;
        for (int i = 0; i < ENEMYCOUNT; i++) 
        {
            enemies[i].isSpecial = 0;
            enemies[i].aniState = 7;
        }

        panda.leavesCollected = 0;
        panda.stemsCollected = 0;
        randomIndex = rand() % 33;
        enemies[randomIndex].isSpecial = 1;
        enemies[randomIndex].aniState = 8;
    }
}

// resets animation for friendly pandas
void resetAnimationFriendly() 
{
    pandas[0].curFrame = 6;
    pandas[1].curFrame = 6;
    pandas[2].curFrame = 6;
}
