TITLE 'Dyfuzja'
	COORDINATES cartesian1
	VARIABLES
		C
	DEFINITIONS
		D=0.5
        C0=1.0
	EQUATIONS
		C: D*dxx(C) = dt(C)
	BOUNDARIES
	REGION 1
		START(0.0) point value(C)=C0 line to (5.0)
		TIME 0.0 TO 5.0
	PLOTS        
    FOR t=0.0
        elevation(C) from(0.0) to (5.0)
    FOR t=5.0
        elevation(C) from(0.0) to (5.0)
    HISTORIES
    	history(C) at (0.1)(0.5)(1.0)(5.0)
	END
