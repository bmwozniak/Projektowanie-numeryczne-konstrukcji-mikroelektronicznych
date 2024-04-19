TITLE 'Laplacea'
	COORDINATES Cartesian3
	VARIABLES
		V
	DEFINITIONS
		r=10e-3/2
        l=0.1
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
		START(r,0) 
        natural(V)=0 arc(center=0,0) angle=360
        to close
	PLOTS        
    	contour(V) ON x=0
        elevation(V) from (0,0,0) to (0,0,l)
	END
