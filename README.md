# Lower_Upper_Algorithm
This Matlab code solves equations of the type Ax=b, where A is a tridiagonal matrix, using the Lower-Upper (LU) decomposition.

  To carry it out, first of all the **LU_tridiag_init** obtains the Lower and Upper matrix from A (here we use a Doolittle decomposition). Since A is a tridiagonal matrix, it is simple to obtain them [1]. When it finishes, the **LU_tridiag** code solves the expression *Ax=b* splitting the process into two: a forward substitution of *Lg=f* and a backward substitution of *Ux=g*.
  
# References
  [1] Vasileska, D.; Goodnick, S. M. & Klimeck, G. Computational Electronics, Semiclassical and Quantum Device Modeling and Simulation Taylor & Francis Group, 2010
