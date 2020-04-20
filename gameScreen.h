
//{{BLOCK(gameScreen)

//======================================================================
//
//	gameScreen, 768x256@4, 
//	+ palette 16 entries, not compressed
//	+ 918 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 96x32 
//	Total size: 32 + 29376 + 6144 = 35552
//
//	Time-stamp: 2020-04-20, 13:51:54
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMESCREEN_H
#define GRIT_GAMESCREEN_H

#define gameScreenTilesLen 29376
extern const unsigned short gameScreenTiles[14688];

#define gameScreenMapLen 6144
extern const unsigned short gameScreenMap[3072];

#define gameScreenPalLen 32
extern const unsigned short gameScreenPal[16];

#endif // GRIT_GAMESCREEN_H

//}}BLOCK(gameScreen)
