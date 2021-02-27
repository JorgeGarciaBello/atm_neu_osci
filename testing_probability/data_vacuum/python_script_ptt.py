n=30
x_f = 3.0
jump = 0.1

l1 = []
for i in range(0,n+1):
	l1.append(str(x_f-jump*i))

f = open("gp_script_ptt.sh", "w")
for i in range(0,n+1):	
	f.write("\ngnuplot <<EOF\n" +
	"# Set the output to a png file\n"+
	"set terminal png size 700,500\n" +
	"# The file we'll write to\n" +
	"set output 'ptt_diff_cp_minus_"+l1[i]+"_vacuum.png'\n"   +
	"# The settings\n"            +
	"set title '{/Symbol D}P_{{/Symbol tt}} ({/Symbol d}_{CP}=-"+l1[i]+")'\n" +
	"set logscale y\n"            +
	"set ylabel 'L/E [Km/GeV]'\n" +
	"set xlabel '{/Symbol q_{13}} [rad]'\n" +
	"set pm3d map\n"              +
	"set pm3d interpolate 0,0\n" +
	"set rmargin at screen 0.78\n"+
	"set lmargin at screen 0.15\n"+
	"#plot the graphic\n"         +
	"# The data\n"                +
	"splot 'Ptt_dif_CP_t13_nh.dat' index "+str(i)+" u 2:3:4;\n" +
	"EOF\n")
f.close()