subroutine set_number_of_slices_4S(dim,h)
    use types
    use constants
    implicit none
    integer  :: dim
    real(dp) :: h
    real(dp) :: h_0_1=11.04_dp*PI/180.0_dp
    real(dp) :: h_0_2=33.17_dp*PI/180.0_dp
    real(dp) :: h_0_3=63.49_dp*PI/180.0_dp

    if( (0.0_dp <= h).and.( h <= h_0_1) ) then
        dim=7
    else if(  h <= h_0_2 ) then
        dim=5
    else if(  h <= h_0_3 ) then
        dim=3
    else if (h <= (PI/2.0_dp)) then
        dim=1
    end if
    return
end subroutine set_number_of_slices_4S