TITLE 'Dyfuzja'
	COORDINATES cartesian2
	VARIABLES
		C
	DEFINITIONS
		D=3
        C0=1.0
        L=-1
        O=-0.3
    INITIAL VALUES
    	C=0
	EQUATIONS
		C: D*(dxx(C)+dyy(C) )= dt(C)
	BOUNDARIES
	REGION 1
		START(0,0)  natural(C)=0
        line to (0.49, 0) value(C)=C0
        line to(0.51, 0) natural(C)=0
        line to(1, 0) natural(C)=0
        line to(1, 1) value(C)=O
        line to(0, 1) natural(C)=0
        line to (0,0)

	REGION 2
		START(0.49, 0.49)  value(C)=L
        line to (0.49, 0.51)  value(C)=L
        line to(0.51, 0.51)  value(C)=L
        line to(0.51, 0.49)  value(C)=L
        line to close
        

        
    TIME 0.0 TO 1.0
        
	PLOTS        
    FOR t=0.0
		contour(C)
        surface(C)

    FOR t=1.0
        contour(C)
        surface(C)

	END
