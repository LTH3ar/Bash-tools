#include <stdio.h>
#include<stdlib.h>
//#include <iostream> for whatever reason this could have been easier but this is c not c++
#include <math.h>
#ifndef M_PI
    #define M_PI 3.14159265358979323846
#endif

int main(){
    printf("list of options: \n");
    printf("Please choose an option\n");
    printf("0: exit\n");
    printf("1: Horizontal range\n");
    int choice;
    scanf("%i", &choice);
    while (choice <= 1 & choice >= 0) {
        switch (choice){
            case 0:
                printf("Quitting");
                return 0;
            
            case 1:
                printf("System is on\n");
                printf("Calculator start\n");

                float V0;
                printf("Initial velocity: ");
                scanf("%f", &V0);

                float Theta;
                printf("Angle: ");
                scanf("%f", &Theta);

                float g;
                g = 10;

                float h;
                printf("Initial height: ");
                scanf("%f", &h);

                float d;
                d = (V0 * cos(Theta * M_PI *pow(180,-1)) / g) * (V0 * sin(Theta* M_PI *pow(180,-1)) + sqrtf(pow(V0, 2)*(pow(sin(Theta * M_PI * pow(180,-1)), 2)) + (2 * g * h)));

                float t;
                t = 2 * V0 * sin(Theta* M_PI * pow(180,-1));

                printf("Horizontal range: %f\n", d);
                printf("Time: %f\n", t);

                printf("Do you want to do it again?\n");
                printf("'1' for yes or '0' for no\n");
                
                char choice1;
                scanf("%i", &choice1);

                if (choice1 == 1){
                    continue;
                }
                else if (choice1 == 0){
                    choice = 0;
                }


        }
    }
    return 0;
}