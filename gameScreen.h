
//{{BLOCK(gameScreen)

//======================================================================
//
//	gameScreen, 1024x256@4, 
<<<<<<< HEAD
//	+ palette 256 entries, not compressed
//	+ 1600 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 128x32 
//	Total size: 512 + 51200 + 8192 = 59904
//
//	Time-stamp: 2020-04-19, 12:03:39
=======
//	+ palette 16 entries, not compressed
//	+ 1600 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 128x32 
//	Total size: 32 + 51200 + 8192 = 59424
//
//	Time-stamp: 2020-04-16, 22:43:19
>>>>>>> f196141c75a3c20fbe809f6fa35823e632504fab
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMESCREEN_H
#define GRIT_GAMESCREEN_H

#define gameScreenTilesLen 51200
extern const unsigned short gameScreenTiles[25600];

#define gameScreenMapLen 8192
extern const unsigned short gameScreenMap[4096];

#define gameScreenPalLen 32
extern const unsigned short gameScreenPal[16];

#endif // GRIT_GAMESCREEN_H

//}}BLOCK(gameScreen)
