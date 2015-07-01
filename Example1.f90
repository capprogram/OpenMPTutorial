! ***************************************************
! OpenMP tutorial
! J. E. Drut
! University of North Carolina
! Chapel Hill
!
! CAP-REU program, July 2015
! 
! Example 1: Parallelizing a loop with OpenMP;
!	     Basic understanding of threads.
! ***************************************************

PROGRAM Example1
USE defs
USE omp_lib

IMPLICIT NONE

INTEGER :: i,j,k
REAL(DP) :: x,y,z

! Get the maximum possible number of threads
print*, OMP_GET_MAX_THREADS()

! Set the number of available threads by hand
!CALL OMP_SET_NUM_THREADS(N_thread)

! Our most basic loop, now parallelized
!$OMP PARALLEL DO
DO i = 1, 100
	print*, 'I should not be doing this so many times', i
END DO
!$OMP END PARALLEL DO

! Run this code and notice the order in which the values of
! i are printed to the screen.

END PROGRAM



