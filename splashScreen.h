
//{{BLOCK(splashScreen)

//======================================================================
//
//	splashScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 131 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 4192 + 2048 = 6752
//
//	Time-stamp: 2020-04-16, 12:22:17
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SPLASHSCREEN_H
#define GRIT_SPLASHSCREEN_H

#define splashScreenTilesLen 4192
extern const unsigned short splashScreenTiles[2096];

#define splashScreenMapLen 2048
extern const unsigned short splashScreenMap[1024];

#define splashScreenPalLen 512
extern const unsigned short splashScreenPal[256];

#endif // GRIT_SPLASHSCREEN_H

//}}BLOCK(splashScreen)
