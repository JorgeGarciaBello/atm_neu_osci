!######################################################################################
!   
!   difference_of_probabilities: is a function that return the difference 
!       Pij_plus - Pij_minus, where
!       Pij_plus  is the probability of transition in matter Pij with theta_13 >= 0 and
!       Pij_minus is the probability of transition in matter Pij with theta_13 < 0.
!
!       Inputs:
!           flvr1 - initial neutrino flavor  [#]
!           flvr2 - final  neutrino flavor   [#]
!           t12   - solar mixing angle       [rad]
!           t23   - atmospheric mixing angle [rad]
!           t13   - reactpr mixing angle     [rad]
!           sm    - solar mass squared difference       [eV^2]
!           aM    - atmospheric mass squared difference [eV^2]
!           delta - CP violation phase       [rad]
!           L_E   - parameter that takes into acout of length over neutrino energy [Km/GeV]
!           nu    - 1 for neutrinos and 2 for antineutrinos [#]
!           ro    - matter density           [g/cm^3]
!           Z     - atomic number (proton number)
!           A     - mass number
!
!######################################################################################
function difference_of_probabilities(flvr1,flvr2,t12,t23,t13,sm,aM,delta,L_E,nu,ro,Z,A)
    use types
    implicit none
    real(dp) :: difference_of_probabilities
    integer  :: flvr1,flvr2
    real(dp) :: t12,t23,t13,delta  ! Are the three mixing angles and the CP-violation phase of the mixing matrix
    real(dp) :: sm,aM              ! sm,aM are the squared mass difference m=m_21 y M=m_32
    real(dp) :: L_E                ! L_E es la razón entre la longitud [Km] sobre la energía del neutrino [GeV] 
    real(dp) :: E                  ! E es el momento del neutrino [GeV]
    real(dp) :: L                  ! L es la longitud en [Km]
    integer  :: nu                 ! nu is 1 for neutrinos an 2 for antineutrino    
    real(dp) :: Ne                 ! Ne is the electron density
    real(dp) :: ro                 ! ro [g/cm^3]
    integer  :: Z                  ! Z
    integer  :: A                  ! A
    real(dp) :: probability_of_transition_in_matter_a_b
    L=L_E
    E=1.0_dp
    difference_of_probabilities = probability_of_transition_in_matter_a_b(flvr1,flvr2,L,t12,t23, t13,delta,sm,aM,E,nu,ro,Z,A) - &
                                  probability_of_transition_in_matter_a_b(flvr1,flvr2,L,t12,t23,-t13,delta,sm,aM,E,nu,ro,Z,A)
    return
end function difference_of_probabilities