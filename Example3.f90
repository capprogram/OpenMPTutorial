! ***************************************************
! OpenMP tutorial
! J. E. Drut
! University of North Carolina
! Chapel Hill
!
! CAP-REU program, July 2015
! 
! Example 3: Exercise: Use OpenMP to implement
!		       Matrix-matrix multiplication
! ***************************************************

PROGRAM Example3
USE defs
USE omp_lib

IMPLICIT NONE

INTEGER :: i,j,k
REAL(DP), DIMENSION(200) :: x,y
REAL(DP), DIMENSION(200,200) :: A

x = 1._dp	! set vector to ones
A = 1._dp

!$OMP PARALLEL DO PRIVATE()
!DO i = 1, 200


   	
!END DO
!$OMP END PARALLEL


END PROGRAM



