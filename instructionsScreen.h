
//{{BLOCK(instructionsScreen)

//======================================================================
//
//	instructionsScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 402 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 12864 + 2048 = 15424
//
//	Time-stamp: 2020-04-04, 10:25:47
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTIONSSCREEN_H
#define GRIT_INSTRUCTIONSSCREEN_H

#define instructionsScreenTilesLen 12864
extern const unsigned short instructionsScreenTiles[6432];

#define instructionsScreenMapLen 2048
extern const unsigned short instructionsScreenMap[1024];

#define instructionsScreenPalLen 512
extern const unsigned short instructionsScreenPal[256];

#endif // GRIT_INSTRUCTIONSSCREEN_H

//}}BLOCK(instructionsScreen)
