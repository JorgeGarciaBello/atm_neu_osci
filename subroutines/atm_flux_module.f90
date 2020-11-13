module atm_flux_module
    use types
    implicit none
    real(8) :: flxsmin(24240,5)
    real(8) :: flxsmx(24240,5)
    real(dp) :: PREM(4,3)    
end module atm_flux_module