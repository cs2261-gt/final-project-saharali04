// Structs
    // Panda struct
    typedef struct {
        int row;
        int col;
        int rdel;
        int cdel;
        int width; 
        int height;
        int aniCounter;
        int aniState;
        int prevAniState;
        int leavesCollected;
        int stemsCollected;
        int curFrame;
        int numFrames;
    } PANDASPRITE;

    // Food struct
    typedef struct {
        int row;
        int col;
        int rdel;
        int cdel;
        int width; 
        int height;
        int aniState;
        int active;
    } FOODSPRITE;
// Variables
    // Panda variables
    PANDASPRITE panda;

    // Food variables
    FOODSPRITE food[30];
    #define FOODCOUNT 30

    // If player has lost
    extern int hasLost;

    // aniState enums
    enum { PANDANEUTRAL, PANDASAD, PANDAHAPPY, STEM, LEAF, BLACKBACKGROUND, PANDAIDLE};

// Function prototypes
void initPanda();
void drawPanda();
void updatePanda();
void drawFood();
void updateGame();
void initGame();
void initFood();