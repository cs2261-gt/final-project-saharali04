#define WORLDWIDTH1 768
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
        int isSpecial;
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
