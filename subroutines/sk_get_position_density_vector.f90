function sk_get_position_density_vector(r,theta,gamma)
    use types
    use constants
    use atm_flux_module, only: PREM, zenith_bins
    implicit none
    real(dp) :: sk_get_position_density_vector
    real(dp) :: a(2),b(2),r(2)
    real(dp) :: theta,gamma

    call sk_vector_from_detector_to_the_center_of_the_Eart(a)
    call sk_ratio_vector(b,gamma)

    r(1) = a(1) + b(2)
    r(2) = a(2) + b(1)
    !if()
    sk_get_position_density_vector=0.0_dp
    return
end function sk_get_position_density_vector

    
        






