function length_of_atm_nu(zenith)
    use types
    use constants
    implicit none
    real(dp) :: length_of_atm_nu
    real(dp) :: zenith
    real(dp) :: dif,ad

    dif = rEarth - rUnder
    ad  = rEarth+rAtm
    length_of_atm_nu = 0.0_dp
    !length_of_atm_nu = -rEarth*cos(zenith) + sqrt(rAtm**2+2.0_dp*rAtm*rEarth+(rEarth*cos(zenith))**2)    
    length_of_atm_nu = -dif*cos(zenith) + sqrt( ad**2 - ( dif*sin(zenith) )**2   )
    return
end function length_of_atm_nu