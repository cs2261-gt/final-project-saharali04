
//{{BLOCK(gameScreen)

//======================================================================
//
//	gameScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 2 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 64 + 2048 = 2624
//
//	Time-stamp: 2020-04-04, 15:53:04
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMESCREEN_H
#define GRIT_GAMESCREEN_H

#define gameScreenTilesLen 64
extern const unsigned short gameScreenTiles[32];

#define gameScreenMapLen 2048
extern const unsigned short gameScreenMap[1024];

#define gameScreenPalLen 512
extern const unsigned short gameScreenPal[256];

#endif // GRIT_GAMESCREEN_H

//}}BLOCK(gameScreen)
