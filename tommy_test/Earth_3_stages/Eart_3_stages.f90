subroutine Eart_3_stages()
    use types
    use constants
    implicit none    
    real(dp) :: ro_a(3)         ! [ g/cm^{3} ]
    real(dp) :: L_a(3)          ! [ Km ]    
    real(dp) :: resutls
    real(dp) :: h_i, h_f, h
    real(dp) :: E_i, E_f, jump_E, E
    real(dp) :: theta_z_i, theta_z_f, jump_z
    integer  :: n=250,i,j,u,dim

    real(dp) :: iterativeProbabilityOfTransitionAB
    integer  :: flvr1              ! flvr1 is the flavour with which the neutrino is generated
    integer  :: flvr2              ! flvr2 is the flavour that is transited 
    real(dp) :: t12,t23,t13,delta  ! Are the three mixing angles and the CP-violation phase of the mixing matrix
    real(dp) :: sm,aM              ! sm,aM are the squared mass difference m=m_21 y M=m_32    
    integer  :: nu                 ! nu is 1 for neutrinos an 2 for antineutrino        
    integer  :: Z                  ! Z
    integer  :: A                  ! A
    
    flvr1=1
    flvr2=1

    t12=PI/4.0d0         ! equiv to 45 degrees Theta_1
    t23=PI/4.0d0         ! equiv to 45 degrees Theta_3 
    t13=PI*0.027777778d0 ! equiv to 5 degrees  Theta_2 
    delta=0.0d0    
    aM=3.2E-3                 ! [eV^{2}]
    sm=aM/10.0_dp            ! [eV^{2}]

    nu=1; Z=1; A=2;    
    theta_z_i = PI
    theta_z_f = PI/2._dp
    jump_z    = (theta_z_f - theta_z_i)/real(n)
!    h_i =  0.0_dp
!    h_f = PI/real(2)
!    jump = (h_f - h_i)/real(n)
!    h = 180 - z
    E_i =   0.1_dp ! [GeV]
    E_f = 100.0_dp ! [GeV]
    jump_E = (E_f - E_i)/real(n)
    
    open(newunit=u, file='tommy_test/Earth_3_stages/pruebas_zenith.dat')
    do i=1,n
        h=PI-(theta_z_i + jump_z*(i-1))
        call set_number_of_slices(dim,h)
        call total_length_array(h,L_a)
        call ro_as_a_function_of_length(h,ro_a)
        do j=1,n
            call logarithmic_partition(n,j,-1._dp,2._dp,E)
            !E = E_i + jump_E*(j-1)
            resutls=iterativeProbabilityOfTransitionAB(dim,flvr1,flvr2,L_a,ro_a,t12,t23,t13,delta,sm,aM,E,nu,Z,A)
            write(u,*) h*180._dp/PI,E,resutls
        enddo
        write(u,*) ' '
        print*, 'i:', i
    enddo
    close(u)
    return
end subroutine Eart_3_stages