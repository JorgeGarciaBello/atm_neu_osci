subroutine total_length_array_4S(h,L_a)
    use types
    use constants
    implicit none
    real(dp) :: h
    real(dp) :: L_a(*)
    real(dp) :: L,L1,L2,L3,L4                     ! [ Km ]
    real(dp) :: L2_b,L3_b
    real(dp) :: h_0_1=11.04_dp*PI/180.0_dp
    real(dp) :: h_0_2=33.17_dp*PI/180.0_dp
    real(dp) :: h_0_3=63.49_dp*PI/180.0_dp

    if((0.0_dp <= h).and.( h <= h_0_1) ) then        
        L1   = rEarth*(  cos(h)-sqrt( (rMantle/rEarth)**2-sin(h)**2 )  )
        L2_b = rEarth*(  cos(h)-sqrt( (rOCore/rEarth)**2-sin(h)**2 )  )
        L2   = L2_b - L1
        L3_b = rEarth*(  cos(h)-sqrt( (rICore/rEarth)**2-sin(h)**2 )  )
        L3   = L3_b - L2_b
        L4   = 2.0_dp*rEarth*cos(h) - 2.0_dp*L3_b        
        L_a(1)=L1; L_a(2)=L2; L_a(3)=L3;
        L_a(4)=L4; L_a(5)=L3; L_a(6)=L2;
        L_a(7)=L1
    elseif( h <= h_0_2 ) then
        L1   = rEarth*(  cos(h)-sqrt( (rMantle/rEarth)**2-sin(h)**2 )  )
        L2_b = rEarth*(  cos(h)-sqrt( (rOCore/rEarth)**2-sin(h)**2 )  )
        L2   = L2_b - L1        
        L3   = 2.0_dp*rEarth*cos(h) - 2.0_dp*L2_b

        L_a(1)=L1; L_a(2)=L2; L_a(3)=L3; L_a(4)=L2; L_a(5)=L1;
    elseif( h <= h_0_3 ) then
        L1   = rEarth*(  cos(h)-sqrt( (rMantle/rEarth)**2-sin(h)**2 )  )                
        L2   = 2.0_dp*rEarth*cos(h) - 2.0_dp*L1

        L_a(1)=L1; L_a(2)=L2; L_a(3)=L1;
    else if( h <= (PI/2.0_dp) ) then        
        L=2.0_dp*rEarth*cos(h)
        L_a(1)=L
    endif
    return
end subroutine total_length_array_4S