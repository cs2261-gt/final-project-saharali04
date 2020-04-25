
//{{BLOCK(loseScreen)

//======================================================================
//
//	loseScreen, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 176 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 5632 + 2048 = 7712
//
//	Time-stamp: 2020-04-25, 14:29:39
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LOSESCREEN_H
#define GRIT_LOSESCREEN_H

#define loseScreenTilesLen 5632
extern const unsigned short loseScreenTiles[2816];

#define loseScreenMapLen 2048
extern const unsigned short loseScreenMap[1024];

#define loseScreenPalLen 32
extern const unsigned short loseScreenPal[16];

#endif // GRIT_LOSESCREEN_H

//}}BLOCK(loseScreen)
