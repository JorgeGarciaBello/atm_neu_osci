subroutine set_settings_for_4S(h,dim,L_a,ro_a)
    use types
    use constants
    implicit none
    real(dp) :: h, L_a(*), ro_a(*)
    integer  :: dim
    real(dp) :: length_of_atm_nu
    if((0.0_dp <= h).and.(h<=PI/2.0_dp)) then
        call set_number_of_slices_4S(dim,h)
        call total_length_array_4S(h,L_a)
        call ro_as_a_function_of_length_4S(h,ro_a)
    elseif(h <= PI) then
        dim=1        
        L_a(dim)=length_of_atm_nu(PI-h)
        ro_a(dim)=0.0_dp
    endif
    return
end subroutine set_settings_for_4S