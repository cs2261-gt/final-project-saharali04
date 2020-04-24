
//{{BLOCK(loseScreen)

//======================================================================
//
//	loseScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 173 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 5536 + 2048 = 8096
//
//	Time-stamp: 2020-04-23, 23:34:23
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LOSESCREEN_H
#define GRIT_LOSESCREEN_H

#define loseScreenTilesLen 5536
extern const unsigned short loseScreenTiles[2768];

#define loseScreenMapLen 2048
extern const unsigned short loseScreenMap[1024];

#define loseScreenPalLen 512
extern const unsigned short loseScreenPal[256];

#endif // GRIT_LOSESCREEN_H

//}}BLOCK(loseScreen)
