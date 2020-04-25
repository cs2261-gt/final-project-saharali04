
//{{BLOCK(winScreen)

//======================================================================
//
//	winScreen, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 175 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 5600 + 2048 = 7680
//
//	Time-stamp: 2020-04-25, 14:31:38
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WINSCREEN_H
#define GRIT_WINSCREEN_H

#define winScreenTilesLen 5600
extern const unsigned short winScreenTiles[2800];

#define winScreenMapLen 2048
extern const unsigned short winScreenMap[1024];

#define winScreenPalLen 32
extern const unsigned short winScreenPal[16];

#endif // GRIT_WINSCREEN_H

//}}BLOCK(winScreen)
