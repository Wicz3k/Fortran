module dot_math
    implicit none
    private
    public :: dotmull
    interface dotmull
        procedure dotmull_4, dotmull_8, dotmull_16
    end interface
    contains
    function dotmull_4 (A,B) result (C)
        implicit none
        real (kind=4), intent(in), dimension(:,:) :: A, B
        real(kind = 4)  :: C (size(A,1),size(B,2))
        integer :: i,j
        C=0
        do i=1 , size(A,1)
            do j=1, size(B,2)
                C(i,j) = dot_product(A(i,:),B(:,j))
            end do
        end do        
    end function
    function dotmull_8 (A,B) result (C)
        implicit none
        real (kind=8), intent(in), dimension(:,:) :: A, B
        real(kind = 8)  :: C (size(A,1),size(B,2))
        integer :: i,j
        C=0
        do i=1 , size(A,1)
            do j=1, size(B,2)
                C(i,j) = dot_product(A(i,:),B(:,j))
            end do
        end do        
    end function
    function dotmull_16 (A,B) result (C)
        implicit none
        real (kind=16), intent(in), dimension(:,:) :: A, B
        real(kind = 16)  :: C (size(A,1),size(B,2))
        integer :: i,j
        C=0
        do i=1 , size(A,1)
            do j=1, size(B,2)
                C(i,j) = dot_product(A(i,:),B(:,j))
            end do
        end do        
    end function

end module
