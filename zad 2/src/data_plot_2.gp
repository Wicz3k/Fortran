unset grid
set terminal png
set output "../res/cosinus.pdf"
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
plot "../res/cosinus" title "cosinus" lt rgb "blue"

unset grid
set terminal png
set output "../res/cosinus_with_noise.pdf"
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
plot "../res/cosinus_with_noise" title "cosinus with noise" lt rgb "blue"

unset grid
set terminal png
set output "../res/cosinus_with_noise_fftw.pdf"
set key box top left
set key opaque
set key box
set key width 1 height 0.5 font "Arial, 12"
set style data lines
set termopt enhanced
set xlabel " " font "Arial, 14"
set ylabel "value" font "Arial, 14"
set xtics font "Arial, 14"
set ytics font "Arial, 14"
set termoption dashed
plot "../res/cosinus_with_noise_fftw" title "cosinus with noise" lt rgb "blue"

unset grid
set terminal png
set output "../res/cosinus_after_filter_fftw.pdf"
set key box top left
set key opaque
set key box
set key width 1 height 0.5 font "Arial, 12"
set style data lines
set termopt enhanced
set xlabel " " font "Arial, 14"
set ylabel "value" font "Arial, 14"
set xtics font "Arial, 14"
set ytics font "Arial, 14"
set termoption dashed
plot "../res/cosinus_after_filter_fftw" title "cosinus after filter" lt rgb "blue"

unset grid
set terminal png
set output "../res/cosinus_after_filter.pdf"
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
plot "../res/cosinus_after_filter" title "cosinus after filter" lt rgb "blue"
