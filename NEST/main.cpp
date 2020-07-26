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
int main(int argc, const char * argv[])  // Asking possible input as arg, for piping input commands
{

  // Those are char pointers and cannot be printf(), can be directly compaired to strings
  string reactor = argv[1];
  string init_LP = argv[2];
  string visuOn  = argv[3];

  Core *coreToLoad;
  coreToLoad = new Core(reactor);
}

int loadGeometry(){
  return 1;
}

int loadCore(){
  return 1;
}
