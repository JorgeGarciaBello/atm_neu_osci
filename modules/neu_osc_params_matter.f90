module neu_osc_params_matter
    use types
    implicit none
    real(dp) :: t12,t23,t13,delta
    real(dp) :: sm,aM              ! sm,aM are the squared mass difference m=m_21 y M=m_32
    real(dp) :: P    
    real(dp) :: eta
    real(dp) :: L                  ! L is the length between the source of neutrinos an the position
    integer :: nu                 ! nu is 1 for neutrinos an 2 for antineutrino
    real(dp) :: Ne                 ! Ne is the electron density
    real(dp) :: Ne1,Ne2            ! Ne1, Ne2 is the electron density intervals
    real(dp) :: ro_1,ro_2            ! Ne1, Ne2 is the electron density intervals
    real(dp) :: A_1,A_2            ! Ne1, Ne2 is the electron density intervals
    integer :: u
    integer :: Z,A
end module neu_osc_params_matter