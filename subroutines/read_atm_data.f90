subroutine read_atm_data()
    use atm_flux_module
    implicit none    
    integer :: i,j

    open(11,file='atm_data/kam-ally-20-12-solmin.dat',status='old')
        read(11,*) ((flxsmin(i,j), j=1,5), i=1,24240)
    close(11)
    open(11,file='atm_data/kam-ally-20-12-solmax.dat',status='old')
        read(11,*) ((flxsmx(i,j), j=1,5), i=1,24240)
    close(11)

end subroutine