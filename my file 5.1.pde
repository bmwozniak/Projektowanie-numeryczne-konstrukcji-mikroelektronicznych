title "Temperatura i strumen ciepla"
VARIABLES
Temp

DEFINITIONS
lambda=0
Tg=373
Tc=273
k=0.1


EQUATIONS
Temp: Div(-lambda*grad(Temp)) = 0

BOUNDARIES
region 1
	lambda = 3
	start(0,1) natural(Temp) =0
	line to(1,1) natural(Temp) =  0
	line to(1,2) natural(Temp) =  0
	line to(0,2) value(Temp) = Tg
	line to close

region 2
	lambda =  1
	start(0,0) value(Temp) = Tc
	line to(3,0) value(Temp) = Tc
	line to(3,3) value(Temp) = Tc
	line to(0,3) natural(Temp) = 0
	line to(0,2) natural(Temp) = 0
	line to(1,2) natural(Temp) = 0
	line to(1,1) natural(Temp) = 0
	line to(0,1) natural(Temp) = 0
	line to close

region 3
	lambda = 4
	start(1,1) natural(Temp) =0
	line to(1.1,1) natural(Temp) = 0
	line to(1.1,2) natural(Temp) =  0
	line to(1,2) natural(Temp) = 0
	line to close

region 4
	lambda = 5
	start(1.1, 1) value(Temp) =k* (Temp^4-Tc^4) + k* (Temp-Tc)
	line to(1.5, 1) value(Temp) = k* (Temp^4-Tc^4)+ k* (Temp-Tc)
	line to(1.5, 2) value(Temp) =  k* (Temp^4-Tc^4) + k* (Temp-Tc)
	line to(1.1, 2) natural(Temp) = 0
	line to close


PLOTS
contour(Temp)
vector(-lambda*grad(Temp))

END

	