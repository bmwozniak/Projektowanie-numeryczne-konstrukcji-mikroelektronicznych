TITLE 'Laplacea'
	COORDINATES Cartesian3
	VARIABLES
		V
	DEFINITIONS
		r=10e-3/2
        l=2*r
        DV=10.
        ro=1
	EQUATIONS
		V: Div(-ro*grad(V)) = 0
    EXTRUSION
    	surface 'bottom' z=0
        surface 'top' z=l
	BOUNDARIES
		surface "bottom" value(V)=0
		surface "top" value(V)=DV
        region "domain"
		START(r,r ) value(V) = 10
        line to (r, -r)  natural(V) = 0
        line to(-r, -r)  value(V) = 0
        line to(-r, r)  natural(V) = 0
        line to close
 
	PLOTS        
    	contour(V) ON x=0
        elevation(V) from (0,0,0) to (0,0,l)
    	contour(V) ON y=0
		contour(V) ON z=0.5*l
	


	END
