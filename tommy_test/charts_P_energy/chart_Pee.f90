subroutine chart_Pee()
    use types
    use constants
    implicit none
    real(dp) :: A_pot(2)          ! [ eV ]
    real(dp) :: ro_a(3)         ! [ g/cm^{3} ]
    real(dp) :: L,L1,L2       ! [ Km ]
    real(dp) :: results
    real(dp) :: E_i, E_f, jump, E, h
    real(dp) :: iterativeProbabilityOfTransitionAB    
    integer  :: n=10000,i,u

    integer  :: flvr1              ! flvr1 is the flavour with which the neutrino is generated
    integer  :: flvr2              ! flvr2 is the flavour that is transited 
    real(dp) :: t12,t23,t13,delta  ! Are the three mixing angles and the CP-violation phase of the mixing matrix
    real(dp) :: sm,aM              ! sm,aM are the squared mass difference m=m_21 y M=m_32
    real(dp) :: P                  ! P es el momento del neutrino [GeV]
    integer  :: nu                 ! nu is 1 for neutrinos an 2 for antineutrino    
    real(dp) :: Ne                 ! Ne is the electron density
    integer  :: Z                  ! Z
    integer  :: A                  ! A
    integer  :: dim
    real(dp) :: L_a(3)

    flvr1=2
    flvr2=3

    t12=PI/4.0d0         ! equiv to 45 degrees Theta_1
    t23=PI/4.0d0         ! equiv to 45 degrees Theta_3 
    t13=PI*0.027777778d0 ! equiv to 5 degrees  Theta_2 
    delta=0.0d0    
    aM=3.2E-3                 ! [eV^{2}]
    sm=aM/10.0_dp            ! [eV^{2}]
    !sm=0.0_dp*aM/10.0_dp            ! [eV^{2}]
    
    nu=1
    Z=1
    A=2
    
    E_i =   1.0_dp ! [GeV]
    E_f = 100.0_dp ! [GeV]
    jump = (E_f - E_i)/real(n)
    h=0.0*(33.13151_dp)*PI/180.0_dp

    call set_number_of_slices(dim,h)
    call total_length_array(h,L_a)
    call ro_as_a_function_of_length(h,ro_a)
    print*, dim, h
    print*, L_a
    print*, ro_a
    !open(newunit=u,file='tommy_test/charts_P_energy/Pee.dat')
    !open(newunit=u,file='tommy_test/charts_P_energy/Pemu.dat')
    open(newunit=u,file='tommy_test/charts_P_energy/Pmutau.dat')
    do i=1,n
        E = E_i + jump*(i-1)
        results=iterativeProbabilityOfTransitionAB(dim,flvr1,flvr2,L_a,ro_a,t12,t23,t13,delta,sm,aM,E,nu,Z,A)
       write(u,*) E,results
       print*,i
    enddo
    close(u)
    return
end subroutine chart_Pee