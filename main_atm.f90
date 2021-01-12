program main_atm
    use constants
    implicit none
    integer :: zenith_bin=1
    integer :: energy_bin=1
    real(8) :: zenith_energy_box(4)     
    real(8) :: t12,t23,t13,delta
    real(8) :: sm,aM              ! sm,aM are the squared mass difference m=m_21 y M=m_32
    real(8) :: P    
    real(8) :: eta
    real(8) :: L                  ! L is the length between the source of neutrinos an the position
    integer :: nu                 ! nu is 1 for neutrinos an 2 for antineutrino
    real(8) :: Ne                 ! Ne is the electron density
    real(8) :: Ne1,Ne2            ! Ne1, Ne2 is the electron density intervals
    real(8) :: ro_1,ro_2            ! Ne1, Ne2 is the electron density intervals
    real(8) :: A_1,A_2            ! Ne1, Ne2 is the electron density intervals
    integer :: u,i
    integer :: Z,A
    real(8) :: probabilityOfTransitionAB,probability_of_transition_in_matter_a_b
    real(8) :: matterDensity
    real(8) :: jump, rV(2), gamma
    integer :: k
    
    call read_atm_data()
    call Eart_3_stages()
!    open(newunit=u, file='atm_data/result.dat')
!    do i=1,100
!        gamma = (PI/100.0_dp)*i
!        call sk_get_position_density_vector(rV,0.0_dp,gamma)
!        write(u,*) rV(1), rV(2), sqrt(rV(1)**2 + rV(2)**2)
!    enddo
!    close(u)
!    stop    

    
!    t12=PI/4.0d0         ! equiv to 45 degrees
!    t23=PI/4.0d0         ! equiv to 45 degrees
!    t13=PI*0.027777778d0 ! equiv to 5 degrees
!    delta=0.0d0
!    sm=1E-4
!    aM=1E-3
!    P=10.0d0             ! Energía en [GeV]
!    eta=5.0d0    
!    L=2.0d0*eta*rEarth
!    nu=1
!    Z=1
!    A=2
!
!    A_1=1.0d-15
!    A_2=1.0d-12
!    ro_1=A_1*(real(A)/real(Z))/(sqrt(2.0d0)*GF*N_A)
!    ro_2=A_2*(real(A)/real(Z))/(sqrt(2.0d0)*GF*N_A)    
!    jump=(ro_2 -ro_1)/(10000.0d0)
    !
!    print*,'Pruebas.2020.'
!    open(newunit=u,file='atm_results/pruebas.2020.dat')
!    do k=1,10000
!        ro_1 = ro_1 + jump        
!        write(u,*) matterDensity(nu,N_A*ro_1*REAL(Z)/REAL(A)), &
!        probability_of_transition_in_matter_a_b(1,2,L,t12,t23,t13,delta,sm,aM,P,nu,ro_1,Z,A)
!    enddo
!    close(u)
!    call zenith_flux_chart()
!    print*,'Fin del programa'
    return
end program main_atm