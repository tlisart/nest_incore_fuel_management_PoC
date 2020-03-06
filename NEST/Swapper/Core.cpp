#include "Core.h"

using namespace std;
class Core{

private:
  vector<Assembly> allAssemblies;
  // Vector data structure is useful for swapping, which we are going to do a lot,
  // If needed we will switch to a custom Cpp struct.

public:

  /*When in training, we will automate this process for a large amount of cores
    Here  : getting info from file, related to the selected core and init assembly

    In training you would load and pipe into training mode into all known databases,
    thus it is useful for any assembly to write

      1) Loading any assembly into an assembly object
      2) Loading any core data structure. (You load and save only one entire core)
  */


  Core(string coreName, int sizeDataSet){
    /*
      STRATEGY ONE : QUALITY HIERARCHY

      Core constructor function for the first emprovement strategy. LPO gives
      500 cores, so this one will load all of them one by one, and call the
      ML algorithm to get the quality score. Then will give a hierachy.
    */
  }


  Core(string coreName){
    /*
      STRATEGY TWO : HEURISTICALLY EMPROVED SWAPPING

      Core constructor function with a name is the improvement function, which
      core structure has to be improved or compaired ? The given input will be
      either swapped and improved, or given a quality score, depending on what
      asked by the user.
    */
  }


  Core(int sizeDataSet){
    /*
      TRAINING :

      Training session of the algorithm logical structure.
    */
  }



private:
  int loadFromFile(string fileName, Assembly *givenAssembly){
  }
};
