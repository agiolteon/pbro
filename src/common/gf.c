/*  
*   GAMEFORT
*   GameFort is a new conceptweb-based anti-hacking.
*
*   Developed by: Paulo César Botelho Barbosa, Vinícius Felipe Botelho Barbosa
*
*   Copyright (c) 2008-2009 GameFort, http://www.gamefort.com.br
*/

#include "../common/showmsg.h"
#include "../common/gamefort.h"

uint8_t Key[32];

/* -------------------------------------------------------------------------- */
void setkey(uint8_t* Key)
{
     Key[0] = 0x89;
     Key[1] = 0xA9;
     Key[2] = 0xB1;
     Key[3] = 0xB9;
     Key[4] = 0xC1;
     Key[5] = 0xC1;
     Key[6] = 0xC9;
     Key[7] = 0xD1;
     Key[8] = 0xD1;
     Key[9] = 0xD9;
     Key[10] = 0xE1;
     Key[11] = 0xE1;
     Key[12] = 0xE9;
     Key[13] = 0xF1;
     Key[14] = 0xF1;
     Key[15] = 0xF9;
     Key[16] = 0x02;
     Key[17] = 0x02;
     Key[18] = 0x0A;
     Key[19] = 0x12;
     Key[20] = 0x12;
     Key[21] = 0x1A;
     Key[22] = 0x22;
     Key[23] = 0x22;
     Key[24] = 0x2A;
     Key[25] = 0x32;
     Key[26] = 0x32;
     Key[27] = 0x3A;
     Key[28] = 0x42;
     Key[29] = 0x42;
     Key[30] = 0x4A;
     Key[31] = 0x52;
} /* setkey */
/* -------------------------------------------------------------------------- */

/* -------------------------------------------------------------------------- */
void do_init_gamefort()
{
    setkey(Key);
    gamefortinit(Key);
    ShowStatus("GameFort started");
    return;
} /* do_init_gamefort */

/* -------------------------------------------------------------------------- */

/* -------------------------------------------------------------------------- */
void decstr(unsigned char *In, unsigned char *Out, int len)
{
	unsigned int Key = 96783;
	long int C1 = 30643;
	long int C2 = 20583;
	decryptstr(Key, C1, C2, In, Out, len);
        return;
} /* decstr */
/* -------------------------------------------------------------------------- */
