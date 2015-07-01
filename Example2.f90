! ***************************************************
! OpenMP tutorial
! J. E. Drut
! University of North Carolina
! Chapel Hill
!
! CAP-REU program, July 2015
! 
! Example 2: Parallelizing matrix-vector with OpenMP;
!	     Understanding threads and private variables.
! ***************************************************

PROGRAM Example2
USE defs
USE omp_lib

IMPLICIT NONE

INTEGER :: i,j,k
REAL(DP), DIMENSION(200) :: x,y
REAL(DP), DIMENSION(200,200) :: A

x = 1._dp	! set vector to ones
A = 1._dp

! Matrix-vector multiplication, now parallelized
!$OMP PARALLEL DO ! PRIVATE(j)
DO i = 1, 200
	y(i) = 0._dp
	DO j = 1, 200
		y(i) = y(i) + A(i,j)*x(j)
	END DO
END DO
!$OMP END PARALLEL DO


END PROGRAM



