function sk_get_position_density_vector(r,theta,phi)
    use types
    use constans
    use atm_flux_module, only: PREM, zenith_bins
    implicit none
    real(dp) :: sk_get_position_density_vector
    real(dp) :: r,theta,phi

    if(r<=PREM(1,2)) then
        






