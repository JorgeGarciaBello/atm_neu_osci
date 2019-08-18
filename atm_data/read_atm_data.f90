subroutine read_atm_data(flxsmin,flxsmax)
    implicit none
    real(8) :: flxsmin(24240,5)
    real(8) :: flxsmax(24240,5)
    integer :: i,j

    open(11,file='atm_data/kam-ally-20-12-solmin.dat',status='old')
        read(11,*) ((flxsmin(i,j), j=1,5), i=1,24240)
    close(11)
    open(11,file='atm_data/kam-ally-20-12-solmax.dat',status='old')
        read(11,*) ((flxsmax(i,j), j=1,5), i=1,24240)
    close(11)

end subroutine