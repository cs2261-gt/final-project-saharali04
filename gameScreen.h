
//{{BLOCK(gameScreen)

//======================================================================
//
//	gameScreen, 1024x256@4, 
//	+ palette 16 entries, not compressed
//	+ 1600 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 128x32 
//	Total size: 32 + 51200 + 8192 = 59424
//
//	Time-stamp: 2020-04-20, 13:33:45
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
