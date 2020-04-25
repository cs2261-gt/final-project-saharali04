
//{{BLOCK(gameScreen2)

//======================================================================
//
//	gameScreen2, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 26 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 832 + 2048 = 2912
//
//	Time-stamp: 2020-04-25, 15:15:51
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMESCREEN2_H
#define GRIT_GAMESCREEN2_H

#define gameScreen2TilesLen 832
extern const unsigned short gameScreen2Tiles[416];

#define gameScreen2MapLen 2048
extern const unsigned short gameScreen2Map[1024];

#define gameScreen2PalLen 32
extern const unsigned short gameScreen2Pal[16];

#endif // GRIT_GAMESCREEN2_H

//}}BLOCK(gameScreen2)
