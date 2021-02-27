!#########################################################################################
!
!   Obtiene los ángulos criticos dependiendo del número de capas que contiene el modelo 
!       de la Tierra (DM in module constants) 
!   
!   input/output
!       
!       max_angles: is an array with the critic angles in unities of radianes   [rad]
!           
!
!#########################################################################################
subroutine Earth_n_max_angles_from_stages(max_angles)
    use types
    use constants, only: DM, rEarth
    use atm_flux_module, only: sk_ratios
    implicit none
    real(dp) :: max_angles(DM-2)
    integer  :: i
    do i=1,DM-2
        max_angles(i) = asin(sk_ratios(i)/rEarth)
    enddo
    return
end subroutine Earth_n_max_angles_from_stages