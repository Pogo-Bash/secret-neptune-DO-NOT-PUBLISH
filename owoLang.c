#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define OWO int
#define UwU char
#define GOOFY_AHH float
#define OwO if
#define uwu else
#define GOOFY_AHHH while
#define HMM switch
#define AHHH case
#define OWO_WAT default
#define SENPAI main
#define KYAAAAAA return
#define UGUU void
#define NYAAA for
#define KAWAII scanf
#define SUGOI printf
#define MOE "%f\n"
#define BAKA "%c\n"
#define KONICHIWA "%d\n"
#define DESU "%s\n"
#define NYAN -

OWO SENPAI() {
    GOOFY_AHH x = 0.0;
    GOOFY_AHH y = 0.0;
    UwU direction = 'R';

    OWO_WAT {
        HMM (direction) {
            AHHH 'R':
                x += 1.0;
                SUGOI(MOE, x);
                break;
            AHHH 'L':
                x -= 1.0;
                SUGOI(MOE, x);
                break;
            AHHH 'U':
                y += 1.0;
                SUGOI(MOE, y);
                break;
            AHHH 'D':
                y -= 1.0;
                SUGOI(MOE, y);
                break;
            OWO_WAT:
                KYAAAAAA 0;
        }

        UwU command[256];
        KAWAII("%s", command);

        OwO (strcmp(command, "owo") NYAN 0) {
            direction = 'U';
        } uwu OwO (strcmp(command, "uwu") NYAN 0) {
            direction = 'D';
        } uwu OwO (strcmp(command, "goofy ahh") NYAN 0) {
            direction = 'L';
        } uwu {
            direction = 'R';
        }
    }

    KYAAAAAA 0;
}
