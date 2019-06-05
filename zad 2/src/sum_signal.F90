program sumsignal

    use, intrinsic :: iso_c_binding
    implicit none
    include "fftw3.f03"
    integer :: N=1024, i
    type(c_ptr) :: plan
    real :: pi=3.141

    real(C_DOUBLE), allocatable :: in(:)
    complex(C_DOUBLE_COMPLEX), allocatable :: out(:)

    real(16) :: t, dt
    
    open (11, file = "../res/sum_signal")
    open (12, file = "../res/sum_signal_fftw")    
    
    allocate(in(N))
    allocate(out(N))
    
    
    write(*,*) "sin(2.0*pi*t*200.0)+2*sin(2.0*pi*t*400.0)"
    
    
    dt=1.0/(N-1.0)

    t=-dt

    do i=1, N
       t=t+dt
        in(i)=sin(2.0*pi*t*200.0)+2*sin(2.0*pi*t*400.0)
        write(11,*) t, in(i)
    end do
        
    plan = fftw_plan_dft_r2c_1d(N,in,out,FFTW_ESTIMATE+FFTW_UNALIGNED)
    call fftw_execute_dft_r2c(plan, in, out)

    do i=1, N
        write(12,*) i, abs(out(i))
    end do
    close (11)
    close (12)
    if(allocated(in))deallocate (in)
    if(allocated(out))deallocate (out)
    CALL SYSTEM('gnuplot -c ./data_plot.gp 4')
    write(*,*) "Bye"

end program

