subroutine total_length_array(h,L_a)
    use types
    use constants
    implicit none    
    real(dp) :: h
    real(dp) :: L_a(*)
    real(dp) :: L,L1,L2                  ! [ Km ]
    real(dp) :: h_0=33.1315_dp*PI/180.0_dp        

    if((0 <= h).and.( h <= h_0) ) then        
        L1=rEarth*(  cos(h)-sqrt( (rCore/rEarth)**2-sin(h)**2 )  )
        L2= 2.0_dp*rEarth*sqrt(  (rCore/rEarth)**2-sin(h)**2     )
        L_a(1)=L1; L_a(2)=L2; L_a(3)=L1        
    else if( h <= (PI/2.0_dp) ) then
        L=2.0_dp*rEarth*cos(h)
        L_a(1)=L
    end if
    return
end subroutine total_length_array