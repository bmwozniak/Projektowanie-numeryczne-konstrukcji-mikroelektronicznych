TITLE 'Rez ele'
	COORDINATES Cartesian3
	VARIABLES
		V1, V2
	DEFINITIONS
		r=10e-3/2
        l=0.1
        DV=10
        ro1=1
		ro2=2
		E1=-grad(V1)
		E2=-grad(V2)
		j1=ro1*E1
		j2=ro2*E2
	EQUATIONS
		V1: Div(-ro1*grad(V1)) = 0
		V2: Div(-ro2*grad(V2)) = 0
    EXTRUSION
    	surface 'bottom' z=0
        surface 'top' z=2l
	BOUNDARIES
		region "domain"
		surface "bottom" value(V)=0
		!surface "middle" value(V)=
		surface "top" value(V)=DV
		START(r,0)
       	!natural(V)=0 arc(center=0,0) angle 360
        !to close
 		START(r, r ) natural(V) = 0
        line to (r, -r)  natural(V) = 0
        line to(-r, -r)  natural(V) = 0
        line to(-r, r)  natural(V) = 0
        line to close

		


	PLOTS        
    	contour(normal(j)) ON z=2*l
	SUMMARY
		report (DV/surf_integral(normal(j1), 'bottom')) as 'R-num. R [ohm]'
		report (DV/surf_integral(normal(j2), 'bottom')) as 'R-num. R [ohm]'
		report (1/ro*l/(4*r*r)) as 'R-analityczne'      
	


	END
