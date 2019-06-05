unset grid
set terminal png
set output "../res/sum_signal.pdf"
set key box top left
set key opaque
set key box
set key width 0.5 height 0.4 font "Arial, 12"
set style data lines
set termopt enhanced
set xlabel "time" font "Arial, 14"
set ylabel "value" font "Arial, 14"
set xtics font "Arial, 14"
set ytics font "Arial, 14"
set termoption dashed
plot "../res/sum_signal" title "function sin(2.0*pi*t*200.0)+2*sin(2.0*pi*t*400.0)" lt rgb "blue"

unset grid
set terminal png
set output "../res/sum_signal_fftw.pdf"
set key box top left
set key opaque
set key box
set key width 1 height 0.5 font "Arial, 12"
set style data lines
set termopt enhanced
set xlabel "frequency" font "Arial, 14"
set ylabel "value" font "Arial, 14"
set xtics font "Arial, 14"
set ytics font "Arial, 14"
set termoption dashed
plot "../res/sum_signal_fftw" title "function sin(2.0*pi*t*200.0)+2*sin(2.0*pi*t*400.0)" lt rgb "blue"
