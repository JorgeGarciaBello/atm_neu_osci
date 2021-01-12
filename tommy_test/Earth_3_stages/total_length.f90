function total_length(h)
    use types
    use constants
    implicit none
    real(dp) :: total_length
    real(dp) :: h
    real(dp) :: L,L1,L2    ! [ Km ]
    real(dp) :: h_0=33.17_dp*PI/180.0_dp

    if((0 <= h).and.( h <= h_0) ) then
        L1=rEarth*(  cos(h)-sqrt( (rCore/rEarth)**2-sin(h)**2 )  )
        L2= 2.0_dp*rEarth*sqrt(  (rCore/rEarth)**2-sin(h)**2    )
        L = 2*L1 + L2
    else if( (h_0 < h).and.(h <= (PI/2.0_DP)) ) then
        L = 2.0_dp*rEarth*cos(h)
    end if
    total_length=L
    return
end function total_length