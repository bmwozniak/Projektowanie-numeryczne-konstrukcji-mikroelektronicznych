TITLE 'Pojemnosc'
	!COORDINATES Cartesian3
	VARIABLES
		V
	DEFINITIONS
		eps
        d1=1
		d2=2
        V1=100
        V2=0
		w=dot(-eps*grad(V), -grad(V))/2
		wsw=1                                       !wysów   !0-1 (gdzie 1=100%)
		p=0                                    !przemiesczenie
	EQUATIONS
		V: Div(-eps*grad(V))=0
	BOUNDARIES
		region 1 
		eps = 1
        START(0, 1 ) value(V) = V2
        line to (5, 1) natural(V) = 0
        line to(5-wsw, 3-p)  value(V) = V1
        line to(1+wsw, 3-p)  value(V) = V1
		line to(1+wsw, 4+p)  value(V) = V1
		line to(5-wsw, 4+p)  natural(V) = 0
		line to(5, 6)  value(V) = V2
		line to(0, 6)  value(V) = V2
		line to(0, 1)  value(V) = V1
        line to close
        
	!	region 2
	!	eps = 1
    !   START(0, 0) value(V) = V2
     !   line to (5, 0)  value(V) = V2
      !  line to(5, 1)  value(V) = V2
       ! line to(0, 1)  value(V) = V2
        !line to close


	PLOTS        
    	contour(V)
        contour(w)
	SUMMARY
		report integral(w) as 'Energia'
		report 2*integral(w)/((V1-V2)^2) as 'Pojemnosc'

	END