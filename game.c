#include "game.h"
#include "myLib.h"
#include <stdlib.h>

// keeps track if player has lost
int hasLost;
int hasWon;

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
        
    }

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
        shadowOAM[i+36].attr2 = ATTR2_TILEID(pandas[i].aniState, 0);
        
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
    
    if ((panda.row > 152) | (panda.row < 0) | (panda.col < 0) | (panda.col > 232)) {
        hasLost = 1;
    }
    
    
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
            if (panda.aniState == PANDAIDLE) 
            {
            panda.curFrame = 0;
            panda.aniState = panda.prevAniState;
            } else 
            {
            panda.aniCounter++;
            }
        
        }
    }
}

void checkFoodDelivered() {
    for (int i = 0; i < BASKETCOUNT; i++) {
        if (BUTTON_PRESSED(BUTTON_A) && collision(panda.col, panda.row, panda.width, panda.height, baskets[i].col, baskets[i].row, baskets[i].width, baskets[i].height) && panda.leavesCollected > 0) 
        {
            pandas[i].leavesCollected++;
            panda.leavesCollected--;
        }
        if (BUTTON_PRESSED(BUTTON_B) && collision(panda.col, panda.row, panda.width, panda.height, baskets[i].col, baskets[i].row, baskets[i].width, baskets[i].height) && panda.stemsCollected > 0) 
        {
            pandas[i].stemsCollected++;
            panda.stemsCollected--;
        
        }

        
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

void drawScore() {
    shadowOAM[40].attr0 = 141 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[40].attr1 = 82 | ATTR1_TINY;
    shadowOAM[40].attr2 = ATTR2_TILEID(panda.stemsCollected + 8, 0);

    shadowOAM[41].attr0 = 150 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[41].attr1 = 87 | ATTR1_TINY;
    shadowOAM[41].attr2 = ATTR2_TILEID(panda.leavesCollected + 8, 0);


    
}

void updateGame() {
    updatePanda();
    drawPanda();
    checkFoodCollected();
    drawFood();
    drawScore();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
}

void updateGame2() {

    checkFoodDelivered();
    updatePanda();
    drawPanda();
    drawBaskets();
    drawScore();
    drawFriendlyPandas();

    
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
    

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
}



