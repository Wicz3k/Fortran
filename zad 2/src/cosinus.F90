program sumsignal

    use, intrinsic :: iso_c_binding
    implicit none
    include "fftw3.f03"
    integer :: N=1024, i
    type(c_ptr) :: plan, rev
    real :: pi=3.141

    real(C_DOUBLE), allocatable :: in(:)
    complex(C_DOUBLE_COMPLEX), allocatable :: out(:)

    real(16) :: t, dt
    
    open (11, file = "../res/cosinus")
    open (21, file = "../res/cosinus_with_noise")
    open (12, file = "../res/cosinus_with_noise_fftw")
    open (22, file = "../res/cosinus_after_filter_fftw") 
    open (13, file = "../res/cosinus_after_filter")   
    
    allocate(in(N))
    allocate(out(N))
    
    call srand(1234)
    
    write(*,*) "Cosinus"
    
    
    dt=1.0/(N-1.0)

    t=-dt

    do i=1, N
       t=t+dt
        in(i)=cos(2.0*pi*t)
        write(11,*) t, in(i)
        in(i)=in(i)+rand()*0.2-rand()*0.2
        write(21,*) t, in(i)
    end do
        
    plan = fftw_plan_dft_r2c_1d(N,in,out,FFTW_ESTIMATE+FFTW_UNALIGNED)
    call fftw_execute_dft_r2c(plan, in, out)

    do i=1, N
        write(12,*) i, abs(out(i))
    end do

    do i=1, N
        if( abs(out(i))<50) out(i)=complex(0.0,0.0)
    end do


    do i=1, N
        write(22,*) i, abs(out(i))
    end do

    rev= fftw_plan_dft_c2r_1d(N,out,in,FFTW_ESTIMATE+FFTW_UNALIGNED)
    call fftw_execute_dft_c2r(rev, out, in)

    t=-dt
    do i=1, N
        t=t+dt
        write(13,*) t, in(i)/N
    end do
    
    close (11)
    close (21)
    close (12)
    close (22)
    close (13)
    if(allocated(in))deallocate (in)
    if(allocated(out))deallocate (out)
    CALL SYSTEM('gnuplot -c ./data_plot_2.gp 4')
    write(*,*) "Bye"

end program

