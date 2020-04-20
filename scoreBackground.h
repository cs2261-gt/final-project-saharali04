
//{{BLOCK(scoreBackground)

//======================================================================
//
//	scoreBackground, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 30 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 960 + 2048 = 3040
//
//	Time-stamp: 2020-04-20, 13:35:53
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SCOREBACKGROUND_H
#define GRIT_SCOREBACKGROUND_H

#define scoreBackgroundTilesLen 960
extern const unsigned short scoreBackgroundTiles[480];

#define scoreBackgroundMapLen 2048
extern const unsigned short scoreBackgroundMap[1024];

#define scoreBackgroundPalLen 32
extern const unsigned short scoreBackgroundPal[16];

#endif // GRIT_SCOREBACKGROUND_H

//}}BLOCK(scoreBackground)
