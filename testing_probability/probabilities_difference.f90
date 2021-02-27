subroutine probabilities_difference()
    use types
    use constants
    implicit none
    integer, parameter :: n=30     ! Partition in CP
    integer, parameter :: m=30     ! Partition in t13
    integer, parameter :: o=300     ! Partition in L_E
    real(dp) :: r(n+1,m+1,o+1)
    real(dp) :: probability_of_transition_in_matter_a_b
    real(dp) :: difference_of_probabilities
    integer  :: flvr1,flvr2    
    real(dp) :: t12,t23,t13,delta  ! Are the three mixing angles and the CP-violation phase of the mixing matrix
    real(dp) :: sm,aM              ! sm,aM are the squared mass difference m=m_21 y M=m_32
    real(dp) :: L
    real(dp) :: P             
    real(dp) :: L_E                ! P es el momento del neutrino [GeV]
    integer  :: nu                 ! nu is 1 for neutrinos an 2 for antineutrino    
    real(dp) :: Ne                 ! Ne is the electron density
    real(dp) :: ro                 ! ro [g/cm^3]
    integer  :: Z                  ! Z
    integer  :: A                  ! A
    real(dp) :: d_i,d_f,d_jump
    real(dp) :: E_i, E_f, jump_E, E
    real(dp) :: theta_z_i, theta_z_f, jump_z
    integer  :: i,j,k,u

    flvr1=1
    flvr2=2
    t12=0.5872523687_dp      ! Value from DATAGROUP
    t23=0.8304591359_dp      ! Value from DATAGROUP - Normal order)    
    sm=7.53D-5               ! [eV^{2}]
    aM=2.453D-3              ! [eV^{2}] Normal order
    nu=1; Z=1; A=2;
    ro=4.5_dp                ! Matter density of the Erth for MINOS experiment [g/cm^3]
    L=735._dp                ! Length [Km]
    
    ! Setting the CP-violation phase
    d_i = -PI
    d_f =  PI
    d_jump = (d_f-d_i)/real(n)
    ! Setting the mixing angle t13
    theta_z_i = 0.0_dp
    theta_z_f = 0.3_dp
    jump_z    = (theta_z_f - theta_z_i)/real(n)
    ! Setting the neutrino energy (in a linear way)
    E_i =   0.1_dp ! [GeV]
    E_f =  50.0_dp ! [GeV]
    jump_E = (E_f - E_i)/real(n)    
    open(newunit=u, file='testing_probability/data_matter_MINOS/Pem_CP_matter_4.5.dat')
    do i=1,n
        delta = d_i + d_jump*(i-1)
        do j=1,n
            t13= theta_z_i + jump_z*(j-1)
            do k=1,n
                P = E_i + jump_E*k
                !call logarithmic_partition(n,k,-1._dp,log10(50._dp),P)
                L_E=L/P
                r(i,j,k)=difference_of_probabilities(flvr1,flvr2,t12,t23,t13,sm,aM,delta,L_E,nu,ro,Z,A)
             write(u,*) delta, t13, L_E, r(i,j,k)
            enddo
            write(u,*)  ' '
        enddo
        write(u,*)  ' '
        write(u,*)  ' '
    enddo
    close(u)
    return
end subroutine probabilities_difference
