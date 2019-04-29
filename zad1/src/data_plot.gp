unset grid
set terminal png
set output "./res/wykres4.pdf"
set key box top left
set multiplot
set logscale x
set logscale y
set key opaque
set key box
set key width 1 height 0.5 font "Arial, 14"
set style data lines
set termopt enhanced
set xlabel "N" font "Arial, 14"
set ylabel "multiplication time" font "Arial, 14"
set xtics font "Arial, 14"
set ytics font "Arial, 14"
set termoption dashed
plot "./res/naive_4" title "naive" lt rgb "black"
replot "./res/better_4" title "better" lt rgb "red"
replot "./res/dot_4" title "dot" lt rgb "green"
replot "./res/math_4" title "math" lt rgb "blue"
unset multiplot

unset grid
set terminal png
set output "./res/wykres8.pdf"
set key box top left
set multiplot
set logscale x
set logscale y
set key opaque
set key box
set key width 1 height 0.5 font "Arial, 14"
set style data lines
set termopt enhanced
set xlabel "N" font "Arial, 14"
set ylabel "multiplication time" font "Arial, 14"
set xtics font "Arial, 14"
set ytics font "Arial, 14"
set termoption dashed
plot "./res/naive_8" title "naive" lt rgb "black"
replot "./res/better_8" title "better" lt rgb "red"
replot "./res/dot_8" title "dot" lt rgb "green"
replot "./res/math_8" title "math" lt rgb "blue"
unset multiplot

unset grid
set terminal png
set output "./res/wykres16.pdf"
set key box top left
set multiplot
set logscale x
set logscale y
set key opaque
set key box
set key width 1 height 0.5 font "Arial, 14"
set style data lines
set termopt enhanced
set xlabel "N" font "Arial, 14"
set ylabel "multiplication time" font "Arial, 14"
set xtics font "Arial, 14"
set ytics font "Arial, 14"
set termoption dashed
plot "./res/naive_16" title "naive" lt rgb "black"
replot "./res/better_16" title "better" lt rgb "red"
replot "./res/dot_16" title "dot" lt rgb "green"
replot "./res/math_16" title "math" lt rgb "blue"
unset multiplot
