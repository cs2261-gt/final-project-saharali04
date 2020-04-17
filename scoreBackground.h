
//{{BLOCK(scoreBackground)

//======================================================================
//
//	scoreBackground, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 34 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 1088 + 2048 = 3648
//
//	Time-stamp: 2020-04-16, 18:13:12
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SCOREBACKGROUND_H
#define GRIT_SCOREBACKGROUND_H

#define scoreBackgroundTilesLen 1088
extern const unsigned short scoreBackgroundTiles[544];

#define scoreBackgroundMapLen 2048
extern const unsigned short scoreBackgroundMap[1024];

#define scoreBackgroundPalLen 512
extern const unsigned short scoreBackgroundPal[256];

#endif // GRIT_SCOREBACKGROUND_H

//}}BLOCK(scoreBackground)
