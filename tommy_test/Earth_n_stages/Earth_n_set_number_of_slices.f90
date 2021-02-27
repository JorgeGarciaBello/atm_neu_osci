subroutine Earth_n_set_number_of_slices(num_slices,h)
    use types
    use constants, only: DM
    use atm_flux_module, only: sk_ratios
    implicit none    
    integer  :: num_slices
    real(dp) :: h
    real(dp) :: slides(DM-1)
    real(dp) :: max_angles(DM-2)
    real(dp) :: max_angles_zero(DM-1)
    integer  :: i,n

    call Earth_n_max_angles_from_stages(max_angles)
    max_angles_zero(1)=0.0
    max_angles_zero(2:)=max_angles

    do i=2,DM
        slides(DM-(i-1))= 2*(i-1)
    enddo
    num_slices=2 ! Valor por default
    ! Verifica si para un valor dado de angulo h, se encuentra entre dos angulos críticos
    loop_name: do i = 1, DM-2 ! Corre sobre el número de ángulos críticos
        if ( (max_angles_zero(i)<=h).and.(h<= max_angles_zero(i+1))) then
            num_slices=slides(i)
            print *, i,h,num_slices
            exit loop_name
        endif
    end do loop_name
    !num_slices= 2*(DM-1)
!
    
    return
end subroutine Earth_n_set_number_of_slices