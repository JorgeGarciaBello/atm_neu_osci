subroutine ro_as_a_function_of_length_4S(h,ro_array)
    use types
    use constants
    implicit none
    real(dp) :: h
    real(dp) :: ro_array(*)    
    real(dp) :: h_0_1=11.04_dp*PI/180.0_dp
    real(dp) :: h_0_2=33.17_dp*PI/180.0_dp
    real(dp) :: h_0_3=63.49_dp*PI/180.0_dp
    

    if((0 <= h).and.( h <= h_0_1) ) then        
        ro_array(1) =   3.3_dp
        ro_array(2) =   5.0_dp
        ro_array(3) =  11.3_dp
        ro_array(4) =  13.0_dp
        ro_array(5) =  11.3_dp
        ro_array(6) =   5.0_dp
        ro_array(7) =   3.3_dp
    elseif( h <= h_0_2 ) then
        ro_array(1) =   3.3_dp
        ro_array(2) =   5.0_dp
        ro_array(3) =  11.3_dp
        ro_array(4) =   5.0_dp
        ro_array(5) =   3.3_dp
    elseif(h <= h_0_3 ) then
        ro_array(1) =  3.3_dp
        ro_array(2) =  5.0_dp
        ro_array(3) =  3.3_dp
    else if( h <= (PI/2.0_dp) ) then        
        ro_array(1) =  3.3_dp
    endif
    return
end subroutine ro_as_a_function_of_length_4S