program main_atm
    implicit none
    integer :: zenith_bin=1
    integer :: energy_bin=1
    real(8) :: zenith_energy_box(4)

    call read_atm_data()
    call zenith_flux_chart()
    print*,'Fin del programa'
    return
end program main_atm