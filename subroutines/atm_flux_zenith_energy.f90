!########################################################################################
!
!   subroutine atm_flux_zenith_energy: subroutine que para un bin de ángulo cenital
!                                      dado  'zenith_bin', y un bin de energía 
!                                      'energy_bin' retorna un arreglo de los 
!                                       diferentes tipos de neutrinos atmosféricos 
!                                       para esos valores. 
!
!
!               return 
!                   
!                       zenith_energy_box -> arreglo(4): (Neutrino muon, antineutrino muon, neutrino electrón, antineutrino electron)
!                           units [m^-2 sec^-1 sr^-1 GeV^-1]
!
!########################################################################################
subroutine atm_flux_zenith_energy(zenith_bin,energy_bin,zenith_energy_box)
    use atm_flux_module
    implicit none    
    integer :: zenith_bin
    integer :: energy_bin
    real(8) :: zenith_energy_box(4)
    
    integer :: i    
    real(8) :: flux_by_zenith_bin(1212,5)
    
    ! Selección de datos por bin de ábgulo cenital
    if (((1).le.zenith_bin).AND.(zenith_bin.le.(20))) then
        flux_by_zenith_bin(:,:)=flxsmin((1+(zenith_bin-1)*1212):(1212*zenith_bin),:)
    else
        print*, 'El bin de ángulo cenital es incorrecto'
        print*, zenith_bin
    endif

    ! Para un bin de energía dado se suman los flujos de neutrinos por
    ! ángulo azimutal    
    if (((1).le.energy_bin).AND.(energy_bin.le.(101))) then
        ! Obteniendo eventos por bin de energía: energy_bin
        zenith_energy_box=0.0d0
        do i=1,12
            zenith_energy_box(1)=zenith_energy_box(1)+flux_by_zenith_bin(energy_bin+(i-1)*101,2)
            zenith_energy_box(2)=zenith_energy_box(2)+flux_by_zenith_bin(energy_bin+(i-1)*101,3)
            zenith_energy_box(3)=zenith_energy_box(3)+flux_by_zenith_bin(energy_bin+(i-1)*101,4)
            zenith_energy_box(4)=zenith_energy_box(4)+flux_by_zenith_bin(energy_bin+(i-1)*101,5)
        enddo
    endif
    flxsmx=flxsmx+flxsmx

    ! zenith_energy_box contiene el flujo de neutrinos 
    ! (anti) electrón y (anti) muon  para un 
    ! zenit_bin y energy_bin dado
    return 
end subroutine