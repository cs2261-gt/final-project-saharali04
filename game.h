// Constants
#define WORLDWIDTH1 768
#define WORLDWIDTH2 256
#define WORLDHEIGHT 256

// Structs
    // panda struct
    typedef struct {
        int row;
        int col;
        int worldRow;
        int worldCol;
        int rdel;
        int cdel;
        int width; 
        int height;
        int aniCounter;
        int aniState;
        int prevAniState;
        int leavesCollected;
        int stemsCollected;
        int leavesDelivered;
        int stemsDelivered;
        int curFrame;
        int numFrames;

    } PANDASPRITE;

    // sprite struct
    typedef struct {
        int row;
        int col;
        int worldRow;
        int worldCol;
        int rdel;
        int cdel;
        int width; 
        int height;
        int aniState;
        int active;
        int isSpecial;
    } SPRITE;
// Variables
    // panda variable
    PANDASPRITE panda;

    // food array
    SPRITE food[35];
    #define FOODCOUNT 35

    // enemy array
    SPRITE enemies[34];
    #define ENEMYCOUNT 34

    // basket aray
    SPRITE baskets[3];
    #define BASKETCOUNT 3

    // friendly panda array
    PANDASPRITE pandas[3];
    #define PANDACOUNT 3

    // door variable
    SPRITE door;

    // aniState enums
    enum { PANDANEUTRAL, PANDASAD, PANDAHAPPY, STEM, LEAF, BLACKBACKGROUND, PANDAIDLE};
    enum { BASKET = 6, FRIENDLYPANDA};

    // if player has won/lost
    extern int hasLost;
    extern int hasWon;

    // XL background variables
    extern int hOff;
    extern int vOff;
    extern int screenBlock;
    extern int playerHOff;
    extern int totalHOff;

    // allows state transitions
    extern int goToMaze;
    extern int goToChina;

// Function prototypes

// INIT FUNCTIONS
void initGame();
void initPanda();
void initFood();
void initEnemies();
void initBaskets();
void initPandas();
void initDoor();

// UPDATE PANDA FUNCTIONS
void updatePanda();
void updatePanda2();

// COLLISION CHECKS
void checkFoodCollected();
void checkFoodDelivered();
void checkEnemyCollision();

// DRAW FUNCTIONS
void drawPanda();
void drawFood();
void drawEnemies();
void drawEnemiesLeft();
void drawEnemiesRight();
void drawFoodDelivered();
void drawFoodCollected();
void drawBaskets();
void drawFriendlyPandas();
void drawDoor();

// UPDATE GAME FUNCTIONS
void updateGame();
void updateGame2();

// MISC FUNCTIONS
void checkCheatActivation();
void resetAnimationFriendly();
