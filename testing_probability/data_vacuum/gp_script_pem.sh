
gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_3.0_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-3.0)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 0 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_2.9_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-2.9)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 1 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_2.8_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-2.8)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 2 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_2.7_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-2.7)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 3 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_2.6_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-2.6)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 4 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_2.5_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-2.5)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 5 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_2.4_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-2.4)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 6 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_2.3_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-2.3)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 7 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_2.2_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-2.2)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 8 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_2.1_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-2.1)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 9 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_2.0_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-2.0)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 10 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_1.9_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-1.9)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 11 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_1.8_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-1.8)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 12 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_1.7_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-1.7)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 13 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_1.6_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-1.6)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 14 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_1.5_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-1.5)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 15 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_1.4_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-1.4)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 16 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_1.3_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-1.3)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 17 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_1.2_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-1.2)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 18 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_1.1_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-1.1)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 19 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_1.0_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-1.0)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 20 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_0.9_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-0.9)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 21 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_0.8_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-0.8)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 22 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_0.7_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-0.7)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 23 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_0.6_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-0.6)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 24 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_0.5_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-0.5)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 25 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_0.4_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-0.4)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 26 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_0.3_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-0.3)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 27 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_0.2_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-0.2)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 28 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_0.1_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-0.1)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 29 u 2:3:4;
EOF

gnuplot <<EOF
# Set the output to a png file
set terminal png size 700,500
# The file we'll write to
set output 'pem_diff_cp_minus_0.0_vacuum.png'
# The settings
set title '{/Symbol D}P_{e{/Symbol m}} ({/Symbol d}_{CP}=-0.0)'
set logscale y
set ylabel 'L/E [Km/GeV]'
set xlabel '{/Symbol q_{13}} [rad]'
set pm3d map
set pm3d interpolate 0,0
set rmargin at screen 0.78
set lmargin at screen 0.15
#plot the graphic
# The data
splot 'Pem_dif_CP_t13_nh.dat' index 30 u 2:3:4;
EOF
