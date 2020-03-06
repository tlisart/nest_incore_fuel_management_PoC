class Assembly{

public:

    // This could be made into a more sensible structure

  // Identification variables
  int x_pos;
  int y_pos;
  int aCycle;
  string name;

  // Physical indications
  double k_inf;
  double burnup;
  double enrich;

  // Constructor function ------------------------------------------------------
  Assembly(string init_name, int x, int y, double init_burnup, double init_inf, double init_enrich, double init_aCycle){

    //id
    name = init_name;
    x_pos = x;
    y_pos = y;

    // Physical inf
    aCycle = init_aCycle;
    k_inf = init_inf;
    burnup = init_burnup;
    enrich = init_enrich;
  }
};
