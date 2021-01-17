subroutine ro_as_a_function_of_length(h,ro_array)
    use types
    use constants
    implicit none
    real(dp) :: h
    real(dp) :: ro_array(*)    
    real(dp) :: h_0=33.1315_dp*PI/180.0_dp    

    if((0 <= h).and.( h <= h_0) ) then
        ro_array(1) =  4.5_dp
        ro_array(2) = 11.5_dp
        ro_array(3) =  4.5_dp
    else if( (h_0 < h).and.(h <= (PI/2.0_DP)) ) then
        ro_array(1) = 4.5_dp
    end if
    return
end subroutine ro_as_a_function_of_length