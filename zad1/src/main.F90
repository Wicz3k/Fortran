program main
    use naive_matrix
    use better_matrix
    use dot_math
    implicit none

    ! zmienne
    integer :: i,j,k
    integer :: matrixSize (8)
    real :: t1,t2,t3,t4,t5 !czasy
    !deklaracje macierzy
    real (kind =4), allocatable, dimension (:,:) :: A_4,B_4,C_4
    real (kind =8), allocatable, dimension (:,:) :: A_8,B_8,C_8
    real (kind =16), allocatable, dimension (:,:) :: A_16,B_16,C_16
    matrixSize=[10,20,40,80,160,320,640,1280]
    !zapis do pliku
    open (unit=11,file = "./res/naive_4", action="write")
    open (unit=12,file = "./res/naive_8", action="write")
    open (unit=13,file = "./res/naive_16", action="write")
    open (unit=21,file = "./res/better_4", action="write")
    open (unit=22,file = "./res/better_8", action="write")
    open (unit=23,file = "./res/better_16", action="write")
    open (unit=31,file = "./res/dot_4", action="write")
    open (unit=32,file = "./res/dot_8", action="write")
    open (unit=33,file = "./res/dot_16", action="write")    
    open (unit=41,file = "./res/math_4", action="write")
    open (unit=42,file = "./res/math_8", action="write")
    open (unit=43,file = "./res/math_16", action="write")

    do i=1,8
        !alokacja
        write (*,*) matrixSize(i)
        allocate(A_4(matrixSize(i),matrixSize(i)))
        allocate(B_4(matrixSize(i),matrixSize(i)))
        allocate(C_4(matrixSize(i),matrixSize(i)))

        allocate(A_8(matrixSize(i),matrixSize(i)))
        allocate(B_8(matrixSize(i),matrixSize(i)))
        allocate(C_8(matrixSize(i),matrixSize(i)))

        allocate(A_16(matrixSize(i),matrixSize(i)))
        allocate(B_16(matrixSize(i),matrixSize(i)))
        allocate(C_16(matrixSize(i),matrixSize(i)))

        !wypełnianie macierzy
        call random_number(A_4)
        call random_number(B_4)
        call random_number(A_8)
        call random_number(B_8)
        call random_number(A_16)
        call random_number(B_16)

        CALL cpu_time(t1)
            C_4=naivmull(A_4,B_4)
        CALL cpu_time(t2)
            C_4=bettmull(A_4,B_4)
        CALL cpu_time(t3)
            C_4=dotmull(A_4,B_4)
        CALL cpu_time(t4)
            C_4=matmul(A_4,B_4)
        CALL cpu_time(t5)
        write(11,*) matrixSize(i),t2-t1
        write(21,*) matrixSize(i),t3-t2
        write(31,*) matrixSize(i),t4-t3
        write(41,*) matrixSize(i),t5-t4

        CALL cpu_time(t1)
            C_8=naivmull(A_8,B_8)
        CALL cpu_time(t2)
            C_8=bettmull(A_8,B_8)
        CALL cpu_time(t3)
            C_8=dotmull(A_8,B_8)
        CALL cpu_time(t4)
            C_8=matmul(A_8,B_8)
        CALL cpu_time(t5)
        write(12,*) matrixSize(i),t2-t1
        write(22,*) matrixSize(i),t3-t2
        write(32,*) matrixSize(i),t4-t3
        write(42,*) matrixSize(i),t5-t4

        CALL cpu_time(t1)
            C_16=naivmull(A_16,B_16)
        CALL cpu_time(t2)
            C_16=bettmull(A_16,B_16)
        CALL cpu_time(t3)
            C_16=dotmull(A_16,B_16)
        CALL cpu_time(t4)
            C_16=matmul(A_16,B_16)
        CALL cpu_time(t5)
        write(13,*) matrixSize(i),t2-t1
        write(23,*) matrixSize(i),t3-t2
        write(33,*) matrixSize(i),t4-t3
        write(43,*) matrixSize(i),t5-t4
        
        if(allocated(A_4))deallocate (A_4)
        if(allocated(B_4))deallocate (B_4)
        if(allocated(C_4))deallocate (C_4)
        if(allocated(A_8))deallocate (A_8)
        if(allocated(B_8))deallocate (B_8)
        if(allocated(C_8))deallocate (C_8)
        if(allocated(A_16))deallocate (A_16)
        if(allocated(B_16))deallocate (B_16)
        if(allocated(C_16))deallocate (C_16)
    end do
    close (11)
    close (21)
    close (31)
    close (41)
    close (12)
    close (22)
    close (32)
    close (42)    
    close (13)
    close (23)
    close (33)
    close (43)
    CALL SYSTEM('gnuplot -c ./src/data_plot.gp 4')
end program
