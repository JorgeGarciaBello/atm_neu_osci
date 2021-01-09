module atm_flux_module
    use types
    implicit none
    real(dp) :: flxsmin(24240,5)
    real(dp) :: flxsmx(24240,5)
    real(dp) :: PREM(4,3)
    real(dp) :: zenith_bins(20,2)
end module atm_flux_module