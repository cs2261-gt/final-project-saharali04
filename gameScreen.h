
//{{BLOCK(gameScreen)

//======================================================================
//
//	gameScreen, 1024x256@4, 
//	+ palette 16 entries, not compressed
//	+ 1248 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 128x32 
//	Total size: 32 + 39936 + 8192 = 48160
//
//	Time-stamp: 2020-04-20, 13:04:59
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMESCREEN_H
#define GRIT_GAMESCREEN_H

#define gameScreenTilesLen 39936
extern const unsigned short gameScreenTiles[19968];

#define gameScreenMapLen 8192
extern const unsigned short gameScreenMap[4096];

#define gameScreenPalLen 32
extern const unsigned short gameScreenPal[16];

#endif // GRIT_GAMESCREEN_H

//}}BLOCK(gameScreen)
