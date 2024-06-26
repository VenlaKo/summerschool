program hello
  use mpi_f08

  implicit none 
  integer :: rc,rank,ntasks,node_id
  CHARACTER(LEN=MPI_MAX_PROCESSOR_NAME) :: name
  INTEGER :: resultlen
  INTEGER :: ierror

  call mpi_init(rc)
  call mpi_comm_size(MPI_COMM_WORLD,ntasks,rc)
  call mpi_comm_rank(MPI_COMM_WORLD,rank,rc)
  call MPI_Get_processor_name(name, resultlen, ierror)
	
  ! TODO: say hello! in parallel
  if (rank==0) then 

    write(*,*) 'Hello!',rank,ntasks,name
	
  else
   write(*,*) 'Hello!',rank
  end if  
  call mpi_finalize(rc)

end program hello
