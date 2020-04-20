#define WORLDWIDTH1 1024
#define WORLDWIDTH2 256
#define WORLDHEIGHT 256
extern int hOff;
extern int vOff;
extern int screenBlock;
extern int hasShield;
extern int goToMaze;
extern int goToChina;
extern int count;
extern int playerHOff;
extern int totalHOff;
// Structs
    // Panda struct
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

    // Food struct
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
    } SPRITE;
// Variables
    // Panda variables
    PANDASPRITE panda;
    SPRITE door;


    // Food variables
    SPRITE food[35];
    #define FOODCOUNT 35

    SPRITE enemies[34];
    #define ENEMYCOUNT 34

    // Basket variables
    SPRITE baskets[3];
    #define BASKETCOUNT 3

    PANDASPRITE pandas[3];
    #define PANDACOUNT 3

    // If player has lost
    extern int hasLost;
    extern int hasWon;

    // aniState enums
    enum { PANDANEUTRAL, PANDASAD, PANDAHAPPY, STEM, LEAF, BLACKBACKGROUND, PANDAIDLE};
    enum { BASKET = 6, FRIENDLYPANDA};

    

// Function prototypes
void initPanda();
void drawPanda();
void updatePanda();
void drawFood();
void drawEnemies();
void drawDoor();
void drawEnemiesRight();
void drawEnemiesLeft();
void updateGame();
void updateGame2();
void initGame();
void initFood();
void initDoor();
void initEnemies();
void drawBaskets();
void initBaskets();
void initPandas();
void drawFriendlyPandas();
void checkFoodCollected();
void checkFoodDelivered();
void drawFoodDelivered();
void drawScoreCollected();
void resetAnimationFriendly();
void updatePanda2();
void cheat();
void clearEnemies();
void checkEnemyCollision();
void drawShield();
