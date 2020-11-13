subroutine read_atm_data()
    use atm_flux_module
    implicit none    
    integer :: i,j,u

    open(newunit=u,file='atm_data/kam-ally-20-12-solmin.dat',status='old')
        read(u,*) ((flxsmin(i,j), j=1,5), i=1,24240)
    close(u)
    open(newunit=u,file='atm_data/kam-ally-20-12-solmax.dat',status='old')
        read(u,*) ((flxsmx(i,j), j=1,5), i=1,24240)
    close(u)
    open(newunit=u,file='atm_data/sk_PREM_density.dat',status='old')
        read(u,*) ((PREM(i,j), j=1,3), i=1,4)
    close(u)
    open(newunit=u,file='atm_data/sk_zenith_bins.dat',status='old')
        read(u,*) ((zenith_bins(i,j), j=1,2), i=1,20)
    close(u)        
end subroutine