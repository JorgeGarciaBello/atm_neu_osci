subroutine zenith_flux_chart()
    implicit none
    integer :: zenith_bin
    integer :: energy_bin
    real(8) :: zenith_energy_box(4)                ! (NuMu, NuMubar, NuE, NuEbar) -> units [m^-2 sec^-1 sr^-1 GeV^-1]
    real(8) :: neutrino_flux_by_zenith_bin(4)      ! (NuMu, NuMubar, NuE, NuEbar) -> units [m^-2 sec^-1 sr^-1 GeV^-1]
    
    open(11,file='atm_results/zenith_flux_chart_NuMu.dat')
    open(12,file='atm_results/zenith_flux_chart_NuMubar.dat')
    open(13,file='atm_results/zenith_flux_chart_NuE.dat')
    open(14,file='atm_results/zenith_flux_chart_NuEbar.dat')
    do zenith_bin=1,20
        neutrino_flux_by_zenith_bin=0.0
        do energy_bin=1,101
            call atm_flux_zenith_energy(zenith_bin,energy_bin,zenith_energy_box)
            neutrino_flux_by_zenith_bin(1)=neutrino_flux_by_zenith_bin(1)+zenith_energy_box(1)
            neutrino_flux_by_zenith_bin(2)=neutrino_flux_by_zenith_bin(2)+zenith_energy_box(2)
            neutrino_flux_by_zenith_bin(3)=neutrino_flux_by_zenith_bin(3)+zenith_energy_box(3)
            neutrino_flux_by_zenith_bin(4)=neutrino_flux_by_zenith_bin(4)+zenith_energy_box(4)
        enddo
        write(11,*) zenith_bin, neutrino_flux_by_zenith_bin(1)
        write(12,*) zenith_bin, neutrino_flux_by_zenith_bin(2)
        write(13,*) zenith_bin, neutrino_flux_by_zenith_bin(3)
        write(14,*) zenith_bin, neutrino_flux_by_zenith_bin(4)
    enddo
    close(11)
    close(12)
    close(13)
    close(14)
    return
end subroutine zenith_flux_chart