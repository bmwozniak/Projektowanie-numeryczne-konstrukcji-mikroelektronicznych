TITLE 'Rez ele'
	COORDINATES Cartesian3
	VARIABLES
		V
	DEFINITIONS
		r=10e-3/2
        l=0.2
        DV=10
        ro=1
		E=-grad(V)
		j=ro*E
	EQUATIONS
		V: Div(-ro*grad(V)) = 0
    EXTRUSION
    	surface 'bottom' z=0
        surface 'top' z=l
	BOUNDARIES
		region "domain"
		surface "bottom" value(V)=0
		surface "top" value(V)=DV
		START(r,0)
       	!natural(V)=0 arc(center=0,0) angle 360
        !to close
 		START(0.5*r, 0.5*r ) natural(V) = 0
        line to (0.5*r, -0.5*r)  natural(V) = 0
        line to(-0.5*r, -0.5*r)  natural(V) = 0
        line to(-0.5*r, 0.5*r)  natural(V) = 0
        line to close


	PLOTS        
    	contour(normal(j)) ON z=0.5*l
	SUMMARY
		report (DV/surf_integral(normal(j), 'bottom')) as 'R-num. R [ohm]'
		report (1/ro*l/(r*r)) as 'R-analityczne'      
	


	END
