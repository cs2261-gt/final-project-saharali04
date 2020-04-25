
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

const unsigned short gameScreen2Tiles[416] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,
	0xE4EE,0xEEEE,0xE4EE,0xEEEE,0xE4EE,0xEEEE,0xE4EE,0xEEEE,
	0x4444,0x4444,0xE4EE,0xEEEE,0x4444,0x4444,0xE4EE,0xEEEE,
	0x4444,0x4444,0xEEEE,0x4EEE,0xEEEE,0x4EEE,0xEEEE,0x4EEE,
	0x4444,0x4444,0xE4EE,0xEEEE,0xE4EE,0xEEEE,0xE4EE,0xEEEE,

	0xE4EE,0xEEEE,0xE4EE,0xEEEE,0xE4EE,0xEEEE,0xE4EE,0xEEEE,
	0xE4EE,0xEEEE,0xE4EE,0xEEEE,0xE4EE,0xEEEE,0x4444,0x4444,
	0xEEEE,0x4EEE,0xEEEE,0x4EEE,0xEEEE,0x4EEE,0x4444,0x4444,
	0xE4EE,0xEEEE,0xE4EE,0xEEEE,0xE4EE,0xEEEE,0xE4EE,0xEEEE,
	0xE4EE,0xEEEE,0xE4EE,0xEEEE,0xE4EE,0xEEEE,0x4444,0x4444,
	0x4444,0x4444,0xEEEE,0x4EEE,0xEEEE,0x4EEE,0xEEEE,0x4EEE,
	0xE4EE,0xEEEE,0x4444,0x4444,0xEEEE,0xE4EE,0xEEEE,0xE4EE,
	0x4444,0x4444,0x4EEE,0xEEEE,0x4EEE,0xEEEE,0x4EEE,0xEEEE,

	0xE4EE,0xEEEE,0x4444,0x4444,0xEEEE,0xE4EE,0xEEEE,0xE4EE,
	0x4444,0x4444,0x4444,0x4444,0xEEEE,0x4EEE,0xEEEE,0x4EEE,
	0x4444,0x4444,0xEEEE,0xE4EE,0xEEEE,0xE4EE,0x4444,0x4444,
	0x4EEE,0xEEEE,0x4EEE,0xEEEE,0x4EEE,0xEEEE,0x4444,0x4444,
	0xEEEE,0x4EEE,0x4444,0x4444,0xE4EE,0xEEEE,0xE4EE,0xEEEE,
	0xE4EE,0xEEEE,0xE4EE,0xEEEE,0x4444,0x4444,0xEEEE,0xE4EE,
	0xEEEE,0xE4EE,0x4444,0x4444,0x4EEE,0xEEEE,0x4EEE,0xEEEE,
	0x4EEE,0xEEEE,0x4444,0x4444,0xEEEE,0x4EEE,0xEEEE,0x4EEE,

	0x4444,0x4444,0xEEEE,0x4EEE,0xEEEE,0x4EEE,0xEEEE,0x4EEE,
	0x4444,0x4444,0xEEEE,0x4EEE,0xEEEE,0x4EEE,0xEEEE,0x4EEE,
	0x4444,0x4444,0xE4EE,0xEEEE,0xE4EE,0xEEEE,0x4444,0x4444,
	0xEEEE,0x4EEE,0xEEEE,0x4EEE,0xEEEE,0x4EEE,0x4444,0x4444,
	0xE4EE,0xEEEE,0xE4EE,0xEEEE,0x4444,0x4444,0xEEEE,0x4EEE,
	0xEEEE,0x4EEE,0x4444,0x4444,0xEEEE,0x4EEE,0xEEEE,0x4EEE,
	0x4444,0x4444,0xE4EE,0xEEEE,0xE4EE,0xEEEE,0xDDDD,0xDDDD,
	0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,0xDDDD,

	0xE4EE,0xEEEE,0xE4EE,0xEEEE,0xE4EE,0xEEEE,0xE4EE,0xEEEE,
	0x4444,0x4444,0x4444,0x4444,0xEEEE,0x4EEE,0xEEEE,0x4EEE,
	0xEEEE,0x4EEE,0x4444,0x4444,0xEEEE,0x4EEE,0xEEEE,0x4EEE,
	0xEEEE,0x4EEE,0x4444,0x4444,0xE4EE,0xEEEE,0xE4EE,0xEEEE,
	0xE4EE,0xEEEE,0xE4EE,0xEEEE,0xE4EE,0xEEEE,0xE4EE,0xEEEE,
	0x4444,0x4444,0xEEEE,0xE4EE,0xEEEE,0xE4EE,0x4444,0x4444,
	0x4EEE,0xEEEE,0x4EEE,0xEEEE,0x4EEE,0xEEEE,0x4444,0x4444,
	0xEEEE,0x4EEE,0xEEEE,0x4EEE,0xEEEE,0x4EEE,0x4444,0x4444,

	0x4EEE,0xEEEE,0x4EEE,0xEEEE,0x4EEE,0xEEEE,0x4444,0x4444,
	0xEEEE,0x4EEE,0x4444,0x4444,0xEEEE,0x4EEE,0xEEEE,0x4EEE,
	0xE4EE,0xEEEE,0xE4EE,0xEEEE,0xE4EE,0xEEEE,0xE4EE,0xEEEE,
	0x4444,0x4444,0xEEEE,0xE4EE,0x4444,0x4444,0xEEEE,0x4EEE,
	0x4444,0x4444,0xEEEE,0x4EEE,0xEEEE,0x4EEE,0xEEEE,0x4EEE,
	0x4444,0x4444,0x4444,0x4444,0xEEEE,0x4EEE,0xEEEE,0x4EEE,
	0xEEEE,0x4EEE,0xEEEE,0x4EEE,0x4444,0x4444,0xE4EE,0xEEEE,
	0xE4EE,0xEEEE,0xE4EE,0xEEEE,0xE4EE,0xEEEE,0x4444,0x4444,

	0xEEEE,0xE4EE,0xEEEE,0xE4EE,0x4444,0x4444,0x4EEE,0xEEEE,
	0x4EEE,0xEEEE,0x4EEE,0xEEEE,0x4444,0x4444,0xEEEE,0x4EEE,
	0xEEEE,0x4EEE,0xEEEE,0x4EEE,0x4444,0x4444,0xEEEE,0x4EEE,
	0xEEEE,0x4EEE,0xEEEE,0x4EEE,0x4444,0x4444,0xE4EE,0xEEEE,
};

const unsigned short gameScreen2Map[1024] __attribute__((aligned(4)))=
{
	0x0001,0x0001,0x0002,0x0001,0x0001,0x0001,0x0003,0x0001,
	0x0001,0x0001,0x0004,0x0001,0x0001,0x0001,0x0001,0x0003,
	0x0001,0x0001,0x0001,0x0001,0x0005,0x0001,0x0001,0x0001,
	0x0001,0x0003,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0006,0x0001,0x0001,0x0001,0x0007,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0008,
	0x0001,0x0001,0x0001,0x0001,0x0009,0x0001,0x0001,0x0001,
	0x0001,0x0007,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0003,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x000A,
	0x0001,0x0001,0x0001,0x0001,0x0005,0x0001,0x0001,0x0001,
	0x0001,0x0003,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0007,0x0001,
	0x0001,0x0001,0x0003,0x0001,0x0001,0x0001,0x0001,0x000B,
	0x0001,0x0001,0x0001,0x0001,0x0009,0x0001,0x0001,0x0001,
	0x0001,0x0007,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

	0x0001,0x0001,0x0003,0x0001,0x0001,0x0001,0x000C,0x0001,
	0x0001,0x0001,0x0007,0x0001,0x0001,0x0001,0x0001,0x000A,
	0x0001,0x0001,0x0001,0x0001,0x080C,0x0001,0x0001,0x0001,
	0x0001,0x000C,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0007,0x0001,0x0001,0x0001,0x000D,0x0001,
	0x0001,0x0001,0x0003,0x0001,0x0001,0x0001,0x0001,0x000B,
	0x0001,0x0001,0x0001,0x0001,0x000E,0x0001,0x0001,0x0001,
	0x0001,0x000F,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

	0x0001,0x0001,0x0003,0x0001,0x0001,0x0001,0x0010,0x0001,
	0x0001,0x0001,0x0007,0x0001,0x0001,0x0001,0x0001,0x0011,
	0x0001,0x0001,0x0001,0x0001,0x000A,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0007,0x0001,0x0001,0x0001,0x000A,0x0001,
	0x0001,0x0001,0x000C,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x000B,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

	0x0001,0x0001,0x000C,0x0001,0x0001,0x0001,0x000B,0x0001,
	0x0001,0x0001,0x000D,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x000A,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x000D,0x0001,0x0001,0x0001,0x000A,0x0001,
	0x0001,0x0001,0x0012,0x0001,0x0001,0x0001,0x0001,0x0003,
	0x0001,0x0001,0x0001,0x0001,0x000B,0x0001,0x0001,0x0001,
	0x0001,0x0003,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

	0x0001,0x0001,0x0012,0x0001,0x0001,0x0001,0x000B,0x0001,
	0x0001,0x0001,0x0013,0x0001,0x0001,0x0001,0x0001,0x0007,
	0x0001,0x0001,0x0001,0x0001,0x0011,0x0001,0x0001,0x0001,
	0x0001,0x0007,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0014,0x0001,0x0001,0x0001,0x0011,0x0001,
	0x0001,0x0001,0x0015,0x0001,0x0001,0x0001,0x0001,0x0016,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0016,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

	0x0001,0x0001,0x000A,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0017,0x0001,0x0001,0x0001,0x0001,0x000A,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x000A,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x000B,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0018,0x0001,0x0001,0x0001,0x0001,0x000B,
	0x0001,0x0001,0x0001,0x0001,0x0003,0x0001,0x0001,0x0001,
	0x0001,0x000B,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

	0x0001,0x0001,0x000A,0x0001,0x0001,0x0001,0x0003,0x0001,
	0x0001,0x0001,0x0017,0x0001,0x0001,0x0001,0x0001,0x000A,
	0x0001,0x0001,0x0001,0x0001,0x0007,0x0001,0x0001,0x0001,
	0x0001,0x000A,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x000B,0x0001,0x0001,0x0001,0x0007,0x0001,
	0x0001,0x0001,0x0018,0x0001,0x0001,0x0001,0x0001,0x000B,
	0x0001,0x0001,0x0001,0x0001,0x0003,0x0001,0x0001,0x0001,
	0x0001,0x000B,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

	0x0001,0x0001,0x0011,0x0001,0x0001,0x0001,0x0003,0x0001,
	0x0001,0x0001,0x0019,0x0001,0x0001,0x0001,0x0001,0x0011,
	0x0001,0x0001,0x0001,0x0001,0x0007,0x0001,0x0001,0x0001,
	0x0001,0x0011,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
};

const unsigned short gameScreen2Pal[16] __attribute__((aligned(4)))=
{
	0x7FE0,0x31CF,0x296C,0x1D09,0x2D01,0x0000,0x260C,0x14E3,
	0x1D87,0x21EB,0x1530,0x0CED,0x7FFF,0x7F0D,0x4211,0x5FA0,
};

//}}BLOCK(gameScreen2)
