/*
This software was written in the context of the 'Projet d'entreprise', for
the first year master degree physics engineering.

################################################################################

Titular : Prof. Labeau
Mentor : Florence Dandoy
Student : Théo Lisart

################################################################################
*/

#include "main.h"

int main(int argc, char** argv)  // Asking possible input as arg, for piping input commands
{
   for (int i = 0; i < argc; ++i){
     cout << argv[i] << "\n";
   }
    return 0;
}

int loadGeometry(){
  return 1;
}

int loadPattern(){
}
