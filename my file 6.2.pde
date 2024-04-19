title 'Odkształcenie-naprezenie'
VARIABLES 
ux, uy
DEFINITIONS
v = 0.3
E
F0=1E9
G = E/((1+v)*(1-2*v))
C11 = G*(1-v)
C12 = G*v
C21 = G*v
C22 = G*(1-v)
C33 = G*(1-2*v)/2
EQUATIONS
ux: dx(C11*dx(ux)+C12*dy(uy))+dy(C33*(dy(ux)+dx(uy))) = 0
uy: dx(C33*(dy(ux)+dx(uy))) + dy(C21*dx(ux)+C22*dy(uy)) = 0
BOUNDARIES
region 1 !prostokat
E = 100E9
start (0,0) load (ux)=0 load(uy) = 0
line to(3,0) load(ux)=0 load(uy) = -F0
line to(3,1) load (ux)=0 load(uy) = 0
line to(0,1) value(ux)=0 value(uy) = 0
line to close
!region 2 !kolo
!E = 10E9
!start(1.5, 0.25)
!arc(center=1.5, 0.5) angle=360
PLOTS
grid(x+1*ux, y+1*uy)
contour (ux) as 'x-przemieszczenie'
END