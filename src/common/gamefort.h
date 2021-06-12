/*  
*   GAMEFORT
*   GameFort is a new conceptweb-based anti-hacking.
*
*   Developed by: Paulo César Botelho Barbosa, Vinícius Felipe Botelho Barbosa
*
*   Copyright (c) 2008-2009 GameFort, http://www.gamefort.com.br
*/

#ifndef uint8_t
#define uint8_t  unsigned char
#endif

#ifdef __cplusplus
extern "C" { 
#endif
    
    typedef struct {
        uint8_t key[32]; 
        uint8_t enckey[32]; 
        uint8_t deckey[32];
    } gamefort_context;

    void gamefortinit(uint8_t *);
    void gamefortdone();
    void decrypt(uint8_t *, uint8_t *, int);
    void decryptstr(unsigned int, int, int, unsigned char *, unsigned char *, int);


#ifdef __cplusplus
}
#endif
