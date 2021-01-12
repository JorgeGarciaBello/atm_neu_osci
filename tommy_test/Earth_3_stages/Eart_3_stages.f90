subroutine Eart_3_stages()
    use types
    use constants
    implicit none
    real(dp) :: A(2)          ! [ eV ]
    real(dp) :: ro(2)         ! [ g/cm^{3} ]
    real(dp) :: L,L1,L2       ! [ Km ]
    real(dp) :: total_length  ! [ Km ]
    real(dp) :: resutls
    real(dp) :: h_i, h_f, jump, h
    integer  :: n=100,i,u
    A(1)=1.70d-13   ! [ eV ]
    A(2)=4.35d-13   ! [ eV ]

    ro(1)=  4.5_dp  ! [ g/cm^{3} ]
    ro(2)= 11.5_dp  ! [ g/cm^{3} ]

    h_i =  0.0_dp
    h_f = PI/real(2)

    jump = (h_f - h_i)/real(n)
    open(newunit=u, file='tommy_test/Earth_3_stages/pruebas.dat')
    do i=1,n
        resutls=total_length(h_i + jump*(i-1))
        write(u,*) h_i + jump*i,resutls
    enddo
    close(u)
    return
end subroutine Eart_3_stages