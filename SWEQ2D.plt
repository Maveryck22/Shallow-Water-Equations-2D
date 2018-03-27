# Este archivo crea imagenes en cada instante y las guarda
t = t + 5

outfile = sprintf('animation/ShalloWater_2D%02.0f.png',t)
set output outfile

# --------------- archivo comun para plotear ------------------

set dgrid3d 40,40
set pm3d
set hidden3d offset 0 # Se agregan las lineas de malla
set ticslevel 0.0
set isosample 15,40

set xlabel 'x'
set ylabel 'y'
set zlabel 'h'

show dgrid3d
set view 60,135*t/1000,1 # Giros eje horizontal, eje z, zoom

set xrange[0:1]
set yrange[0:1]
set zrange[0.1:2.9]

set palette defined (-1 "#1E90FF", -0.5 "#1C86EE", 0 "#1874CD",0.4 "#104E8B",1 "#002266")

splot   'Alturas.dat' u 1:2:t w pm3d ls 1 title 'Shallow Waters by Maveryck'

if(t<end_time) reread;

