//We do the same thing for p=5, caculating the smallest genus Artin-Schreier-Witt curve, which is contained in the curve of our actual interest.

F0<x> := FunctionField(GF(5));
R0<Y> := PolynomialRing(F0);
F1<y> := ext<F0|Y^5-Y-1/x>;
R1<Z> := PolynomialRing(F1);
F2<z> := ext<F1|Z^5-Z+(x^4*y + 2*x^3*y^2 + 2*x^2*y^3 + x*y^4)>;
Genus(F2);

//Unfortunately, calculating point counts up to counting points on F_{5^n} for n up to 44. 
//One can at least count points over some of these (the function is NumberOfPlacesOfDegreeOneECF), I have yet to implement this, and keep this code here to finish it.

//The actual curve we are interested in is the following: 

F0<x> := FunctionField(GF(5));
R0<Y> := PolynomialRing(F0);
F1<y> := ext<F0|Y^5-Y-1/x^4>;
R1<Z> := PolynomialRing(F1);
F2<z> := ext<F1|Z^5-Z+(x^16*y + 2*x^12*y^2 + 2*x^8*y^3 + x^4*y^4)>;
Genus(F2);
