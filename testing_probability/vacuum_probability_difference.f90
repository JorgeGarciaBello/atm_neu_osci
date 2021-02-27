subroutine vacuum_probability_difference()
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
    real(dp) :: L_E
    integer  :: nu                 ! nu is 1 for neutrinos an 2 for antineutrino    
    real(dp) :: Ne                 ! Ne is the electron density
    real(dp) :: ro                 ! ro [g/cm^3]
    integer  :: Z                  ! Z
    integer  :: A                  ! A
    real(dp) :: d_i,d_f,d_jump    
    real(dp) :: theta_z_i, theta_z_f, jump_z
    integer  :: i,j,k,u

    ! Setting neutrino oscillations parameters
    flvr1=2
    flvr2=3
    t12=0.5872523687_dp      ! Value from DATAGROUP
    t23=0.8304591359_dp      ! Value from DATAGROUP - Normal order)
    !t23=0.8324676554_dp      ! Value from DATAGROUP - Inverted order)
    sm=7.53D-5               ! [eV^{2}]
    aM= 2.453D-3                ! [eV^{2}] Normal order
    !aM=-2.543E-3                ! [eV^{2}] Inverted order
    nu=1; Z=1; A=2;
    ro=0.0_dp

    ! Setting the CP-violation parameter
    d_i = -3.0_dp
    d_f = 0.0_dp
    d_jump = ( d_f - d_i )/real(n)

    ! Setting the mixing angle range
    theta_z_i = 0_dp
    theta_z_f = 0.29964_dp
    jump_z    = (theta_z_f - theta_z_i)/real(m)

    !open(newunit=u, file='testing_probability/data_vacuum/Pee_dif_CP_t13_nh.dat')
    !open(newunit=u, file='testing_probability/data_vacuum/Pmm_dif_CP_t13_nh.dat')
    !open(newunit=u, file='testing_probability/data_vacuum/Ptt_dif_CP_t13_nh.dat')
    !open(newunit=u, file='testing_probability/data_vacuum/Pet_dif_CP_t13_nh.dat')
    !open(newunit=u, file='testing_probability/data_vacuum/Pmt_dif_CP_t13_nh.dat')
    do i=1,n+1
        delta = d_i + d_jump*(i-1)
        do j=1,m+1
            t13= theta_z_i + jump_z*(j-1)
            do k=1,o+1
                call logarithmic_partition(o,(k-1),-1._dp,4._dp,L_E)
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
end subroutine vacuum_probability_difference
