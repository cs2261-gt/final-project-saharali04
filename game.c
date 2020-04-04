#include "game.h"
#include "myLib.h"
#include <stdlib.h>

// keeps track if player has lost
int hasLost;

// initializes PANDA and food[i]s
void initGame() {
    initPanda();
    initFood();
}

// initialize PANDA
void initPanda() {
    
    // initialize teleporting panda
    panda.width = 8;
    panda.height = 8;
    panda.col = SCREENWIDTH/2 - (panda.width/2) - 40;
    panda.row = SCREENHEIGHT/2 - (panda.height/2) - 10;
    panda.cdel = 2;
    panda.rdel = 2;
    panda.aniCounter = 0;
    panda.aniState = PANDANEUTRAL;
    panda.leavesCollected = 0;
    panda.stemsCollected = 0;
    panda.curFrame = 0;
    panda.numFrames = 2;  

}

void initFood() {
    for (int i = 0; i < FOODCOUNT; i++) 
    {
        food[i].active = 1;
        food[i].width = 8;
        food[i].height = 8;
        food[i].col = (rand() % 232);
        food[i].row = (rand() % 152);
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

void initBaskets() {
    for (int i = 0; i < BASKETCOUNT; i++) 
    {
        baskets[i].active = 1;
        baskets[i].width = 8;
        baskets[i].height = 8;
        baskets[i].col = 60 + i*60;
        baskets[i].row = 80;
        baskets[i].aniState = PANDANEUTRAL;
        
    }
}

void drawBaskets() {
    for (int i = 0; i < BASKETCOUNT; i++) 
    {
        if (baskets[i].active) 
        {
            shadowOAM[i+32].attr0 = baskets[i].row | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i+32].attr1 = baskets[i].col | ATTR1_TINY;
            shadowOAM[i+32].attr2 = ATTR2_TILEID(baskets[i].aniState, 0);
        } 
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
        panda.aniState = PANDAHAPPY;
        panda.row-=panda.rdel;
    }

    if (BUTTON_HELD(BUTTON_DOWN)) 
    {
        panda.aniState = PANDAHAPPY;
        panda.row+=panda.rdel;
    }
    if (BUTTON_HELD(BUTTON_LEFT)) 
    {
        panda.aniState = PANDASAD;
        panda.col-=panda.cdel;
    }

    if (BUTTON_HELD(BUTTON_RIGHT)) 
    {
        panda.aniState = PANDASAD;
        panda.col+=panda.cdel;
    
    }
    
    if (panda.aniState == PANDAIDLE) 
    {
            panda.curFrame = 0;
            panda.aniState = panda.prevAniState;
    } else 
    {
        panda.aniCounter++;
    }
    
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

    if ((panda.row > 152) | (panda.row < 0) | (panda.col < 0) | (panda.col > 232)) {
        hasLost = 1;
    }
    
    
}

void drawPanda() {
    shadowOAM[0].attr0 = panda.row | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[0].attr1 = panda.col | ATTR1_TINY;
    shadowOAM[0].attr2 = ATTR2_TILEID(panda.aniState, panda.curFrame);
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

void updateGame() {
    updatePanda();
    drawPanda();
    drawFood();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
}



