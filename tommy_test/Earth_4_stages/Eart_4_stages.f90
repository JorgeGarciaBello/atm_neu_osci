subroutine Eart_4_stages()
    use types
    use constants
    implicit none
    real(dp) :: ro_a(7)         ! [ g/cm^{3} ]
    real(dp) :: L_a(7)          ! [ Km ]    
    real(dp) :: resutls
    real(dp) :: h_i, h_f, h
    real(dp) :: E_i, E_f, jump_E, E
    real(dp) :: theta_z_i, theta_z_f, jump_z, zenith
    integer  :: n=500,i,j,u,dim

    real(dp) :: iterativeProbabilityOfTransitionAB
    real(dp) :: length_of_atm_nu
    integer  :: flvr1              ! flvr1 is the flavour with which the neutrino is generated
    integer  :: flvr2              ! flvr2 is the flavour that is transited 
    real(dp) :: t12,t23,t13,delta  ! Are the three mixing angles and the CP-violation phase of the mixing matrix
    real(dp) :: sm,aM              ! sm,aM are the squared mass difference m=m_21 y M=m_32    
    integer  :: nu                 ! nu is 1 for neutrinos an 2 for antineutrino        
    integer  :: Z                  ! Z
    integer  :: A                  ! A
    
    flvr1=2
    flvr2=2

    t12=PI/4.0d0         ! equiv to 45 degrees Theta_1
    t23=PI/4.0d0         ! equiv to 45 degrees Theta_3 
    t13=PI*0.027777778d0 ! equiv to 5 degrees  Theta_2 
    delta=0.0d0    
    aM=3.2E-3            ! [eV^{2}]
    sm=aM/10.0_dp        ! [eV^{2}]

    nu=1; Z=1; A=2;   
    theta_z_i = PI
    theta_z_f = 0.0_dp!PI/2._dp !165.0*PI/180.0_dp  !PI/2._dp
    jump_z    = (theta_z_f - theta_z_i)/real(n)

    E_i =   0.0_dp   ! [GeV]
    E_f =   120.0_dp !100.0_dp ! [GeV] !120
    jump_E = (E_f - E_i)/real(n)    

    
    !########################################################################
    !
    !       Cósigo para gráficos de Tommy O.
    !
    !########################################################################
    open(newunit=u, file='tommy_test/Earth_4_stages/sk_zenith_mu_mu_a.dat')
    do i=1,n
        h=PI-(theta_z_i + jump_z*(i-1))        
        call set_settings_for_4S(h,dim,L_a,ro_a)
        do j=1,n
            call logarithmic_partition(n,j,-1._dp,2.477121255_dp,E)
            resutls=iterativeProbabilityOfTransitionAB(dim,flvr1,flvr2,L_a,ro_a,t12,t23,t13,delta,sm,aM,E,nu,Z,A)
            write(u,*) E,-cos(h),resutls
        enddo
        write(u,*) ' '
    enddo
    close(u)
    return
end subroutine Eart_4_stages