subroutine sk_earth_model()
    use types
    use constants
    use atm_flux_module, only: PREM, zenith_bins
    use neu_osc_params_matter
    implicit none
    real(dp) :: probability_of_transition_in_matter_a_b
    real(dp) :: position_vector(3)
    real(dp) :: r,theta,phi


    t12=PI/4.0d0         ! equiv to 45 degrees
    t23=PI/4.0d0         ! equiv to 45 degrees
    t13=PI*0.027777778d0 ! equiv to 5 degrees
    delta=0.0d0
    sm=1E-4
    aM=1E-3
    P=10.0d0             ! Energía en [GeV]
    eta=5.0d0
    rEarth=6378.d0       ! Longitud en [Km]
    L=2.0d0*eta*rEarth
    nu=1
    Z=1
    A=2

    position_vector(1)=r
    position_vector(2)=theta
    position_vector(3)=phi




    print*, probability_of_transition_in_matter_a_b(1,2,L,t12,t23,t13,delta,sm,aM,P,nu,ro_1,Z,A)






    return
end subroutine