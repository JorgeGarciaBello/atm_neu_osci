subroutine set_number_of_slices(dim,h)
    use types
    use constants
    implicit none
    integer  :: dim    
    real(dp) :: h_0=33.17_dp*PI/180.0_dp, h
    if((0 <= h).and.( h <= h_0) ) then
        dim=3
    else if( (h_0 < h).and.(h <= (PI/2.0_DP)) ) then
        dim=1
    end if
    return
end subroutine set_number_of_slices