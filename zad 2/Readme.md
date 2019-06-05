# Zadanie 2

Program korzysta z biblioteki fftw, wymaga pliku 'fftw3.f03', który znajduje się w katalogu src, oraz zainstalowanej biblioteki fftw. Dodatkowo program korzysta też z gnuplot, który także musi być zainstalowany, aby narysować wykresy.

Wykresy mogą nie otwierać się w przeglądatce Mozilla Firefox w systemie Windows.



# Sprawozdanie
# Zamień sygnał na sumę sygnałów 

x=sin(2∗π∗t∗200) + 2∗sin(2∗π∗t∗400)

Dla powyższego sygnału wykres prezentuje się następująco:

![](https://github.com/Wicz3k/Fortran/blob/master/zad%202/res/sum_signal.pdf)

Wynik po Transformacie Fouriera

![](https://github.com/Wicz3k/Fortran/blob/master/zad%202/res/sum_signal_fftw.pdf)

Obserwując wyniki można spostrzec, że dla każdej z częstotliwości na wykresie jest wybrzuszenie, a także że jest ono proporcjonalne do amplitudy sygnału o danej częstotliwości.
Te częstotliwości to 200 Hz i 400Hz.

# Usuwanie szumów

Wykres zwykłego cosinusa, bez szumów.

![](https://github.com/Wicz3k/Fortran/blob/master/zad%202/res/cosinus.pdf)


Cosinus wraz z naniesionym szumem

![](https://github.com/Wicz3k/Fortran/blob/master/zad%202/res/cosinus_with_noise.pdf)


Wynik transformaty fouriera na zaszumionym sygnale

![](https://github.com/Wicz3k/Fortran/blob/master/zad%202/res/cosinus_with_noise_fftw.pdf)


Usunięcie szumów z zaszumionej transformaty Fouriera

![](https://github.com/Wicz3k/Fortran/blob/master/zad%202/res/cosinus_after_filter_fftw.pdf)


Po otrzymaniu jednego sygnału - jednej wybijającej się częstotliwości, odtwarzam sygnał w funkcji czasu odszumionego cosinusa

![](https://github.com/Wicz3k/Fortran/blob/master/zad%202/res/cosinus_after_filter.pdf)


Można zauważyć, ze sygnał jest niemal identyczny, co świadczy o poprawności Transformaty Fouriera oraz jej użyciu w powyższym zadaniu.
