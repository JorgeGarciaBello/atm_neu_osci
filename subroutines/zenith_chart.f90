subroutine zenithChart(flxsmin,flxsmx)
    implicit none
    real(8) :: flxsmin(24240,5)
    real(8) :: flxsmx(24240,5)
    real(8) :: zenith_flux_numu=0.d0
    real(8) :: zenith_flux_numubar=0.d0
    real(8) :: zenith_flux_nue=0.d0
    real(8) :: zenith_flux_nuebar=0.d0
    real(8) :: zflux_numu(20)
    real(8) :: zflux_numubar(20)
    real(8) :: zflux_nue(20)
    real(8) :: zflux_nuebar(20)
    integer :: i,j,k

    flxsmx=flxsmx+1
    
    k=0
    do j=1,20        
        zenith_flux_numu=0.d0
        zenith_flux_numubar=0.d0
        zenith_flux_nue=0.d0
        zenith_flux_nuebar=0.d0
        do i=1,1212
        k=k+1       
        zenith_flux_numu=zenith_flux_numu+flxsmin(k,2)
        zenith_flux_numubar=zenith_flux_numubar+flxsmin(k,3)
        zenith_flux_nue=zenith_flux_nue+flxsmin(k,4)
        zenith_flux_nuebar=zenith_flux_nuebar+flxsmin(k,5)
        enddo

        zflux_numu(j)=zenith_flux_numu
        zflux_numubar(j)=zenith_flux_numubar
        zflux_nue(j)=zenith_flux_nue
        zflux_nuebar(j)=zenith_flux_nuebar
    enddo
    
    open(11,file='atm_data/zenith_flux_NuMu.dat')
        do i=1,20
            write(11,*) zflux_numu(i)
        enddo
    close(11)
    open(11,file='atm_data/zenith_flux_NuMubar.dat')
        do i=1,20
            write(11,*) zflux_numubar(i)
        enddo
    close(11)
    open(11,file='atm_data/zenith_flux_NuE.dat')
        do i=1,20
            write(11,*) zflux_nue(i)
        enddo
    close(11)
    open(11,file='atm_data/zenith_flux_NuEbar.dat')
        do i=1,20
            write(11,*) zflux_nuebar(i)
        enddo
    close(11)
    return
end subroutine