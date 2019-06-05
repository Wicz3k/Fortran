all: sum_signal cosinuss	help

sum_signal: 
	gfortran sum_signal.F90 -Ldirectory -lfftw3 -o sum_signal.out

cosinuss: 
	gfortran cosinus.F90 -Ldirectory -lfftw3 -o cosinus.out

clear: 
	rm *.out

ex1:
	./sum_signal.out

ex2:
	./cosinus.out

help:

	@echo "\n	Type 'make ex1' to start ex1(sum of signals)\n	Type 'make ex2' to start ex2(cosinus)"

