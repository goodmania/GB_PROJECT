/*

 DOUKUTSU.H

 Include File.

 Info:
  Form                 : All tiles as one unit.
  Format               : Gameboy 4 color.
  Compression          : None.
  Counter              : None.
  Tile size            : 16 x 16
  Tiles                : 0 to 12

  Palette colors       : Included.
  SGB Palette          : None.
  CGB Palette          : 4 Bits per entry.

  Convert to metatiles : No.

 This file was generated by GBTD v2.2

*/

#ifndef __doukutsu_h_INCLUDE
#define __doukutsu_h_INCLUDE

/* Bank of tiles. */
#define doukutsuTileBank 0

/* CGBpalette entries. */
extern const unsigned char doukutsuTileCGB[];
/* Start of tile array. */
extern const unsigned char doukutsuTile[];

extern const unsigned char doukutsu[];

extern const unsigned char douketsuColor[];

#endif

/* End of DOUKUTSU.H */
