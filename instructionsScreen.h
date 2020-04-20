
//{{BLOCK(instructionsScreen)

//======================================================================
//
//	instructionsScreen, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 352 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 11264 + 2048 = 13344
//
//	Time-stamp: 2020-04-20, 17:20:48
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTIONSSCREEN_H
#define GRIT_INSTRUCTIONSSCREEN_H

#define instructionsScreenTilesLen 11264
extern const unsigned short instructionsScreenTiles[5632];

#define instructionsScreenMapLen 2048
extern const unsigned short instructionsScreenMap[1024];

#define instructionsScreenPalLen 32
extern const unsigned short instructionsScreenPal[16];

#endif // GRIT_INSTRUCTIONSSCREEN_H

//}}BLOCK(instructionsScreen)
