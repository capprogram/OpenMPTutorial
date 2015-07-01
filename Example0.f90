! ***************************************************
! OpenMP tutorial
! J. E. Drut
! University of North Carolina
! Chapel Hill
!
! CAP-REU program, July 2015
! 
! Example 0: Basic syntax and tools of Fortran 90;
!	     First foray into OpenMP.
! ***************************************************

PROGRAM Example0

! Some libraries that we will use are declared next
USE defs
USE omp_lib

! Always use the following line to avoid implicit declarations!
IMPLICIT NONE

! Here are some variable declarations
INTEGER :: i,j,k
REAL(DP) :: x,y,z

CHARACTER(50) :: filename
LOGICAL(LGT) :: TrueFalse


! Printing stuff out to the screen
PRINT*, 'This will appear on the screen' 


! A most basic loop
DO i = 1, 100
	print*, 'I should not be doing this so many times', i
END DO

! First steps into OpenMP…

! Get the maximum possible number of threads
print*, OMP_GET_MAX_THREADS()

! Set the number of available threads by hand
!CALL OMP_SET_NUM_THREADS(N_thread)


END PROGRAM



