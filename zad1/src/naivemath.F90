module naive_matrix
    implicit none
    private
    public :: naivmull
    interface naivmull
        procedure naivmull_4, naivmull_8, naivmull_16
    end interface
    contains
    function naivmull_4 (A,B) result (C)
        implicit  none
        real(kind = 4), intent(in), dimension(:,:) :: A, B
        real(kind = 4)  :: C (size(A,1),size(B,2))
        integer :: i,j,k
        C=0
        do i=1 , size(A,1)
            do j=1, size(B,2)
                do k=1, size(A,2)
                    C (i,j) = C(i,j) + A(i,k) * B(k,j)
                end do
            end do
        end do
    end function
    function naivmull_8 (A,B) result (C)
        implicit  none
        real(kind = 8), intent(in), dimension(:,:) :: A, B
        real(kind = 8)  :: C (size(A,1),size(B,2))
        integer :: i,j,k
        C=0
        do i=1 , size(A,1)
            do j=1, size(B,2)
                do k=1, size(A,2)
                    C (i,j) = C(i,j) + A(i,k) * B(k,j)
                end do
            end do
        end do
    end function
    function naivmull_16 (A,B) result (C)
        implicit  none
        real(kind = 16), intent(in), dimension(:,:) :: A, B
        real(kind = 16)  :: C (size(A,1),size(B,2))
        integer :: i,j,k
        C=0
        do i=1 , size(A,1)
            do j=1, size(B,2)
                do k=1, size(A,2)
                    C (i,j) = C(i,j) + A(i,k) * B(k,j)
                end do
            end do
        end do
    end function
end module
