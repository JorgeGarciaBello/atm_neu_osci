subroutine Earth_total_lengths(num_slices,h,L_a)
    use types
    use constants
    use atm_flux_module, only: sk_ratios
    implicit none
    integer  :: num_slices
    real(dp) :: h
    real(dp) :: L_a(num_slices),r_atms(num_slices/2)
    real(dp) :: L,L1,L2,L3,L4                     ! [ Km ]
    real(dp) :: L2_b,L3_b
    real(dp) :: max_angles(DM-2)
    real(dp) :: max_angles_zero(DM-1)
    integer  :: i

    max_angles_zero(1)=0.0
    max_angles_zero(2:)=max_angles

    do i=1,num_slices/2
        !print*, i, cos(h),( sk_ratios(DM-i)/(rEarth + rAtm) )**2, sin(h)**2
        r_atms(i) = (rEarth + rAtm)*(cos(h)-sqrt(( sk_ratios(DM-i)/(rEarth + rAtm) )**2 -sin(h)**2 ))
    enddo
    !print*, 'num_slices: ',   num_slices
    !print*, 'num_slices/2: ', num_slices/2
    print*, 'r_atms', r_atms

    !! Verifica si para un valor dado de angulo h, se encuentra entre dos angulos críticos
    !loop_name: do i = 1, num_slices ! Corre sobre el número de rebanadas de la Tierra por las que viaja el neutrino
        !L_a(i) = r_atm
!
        !if ( (max_angles_zero(i)<=h).and.(h<= max_angles_zero(i+1))) then
            !num_slices=slides(i)
            !print *, i,h,num_slices
            !exit loop_name
        !endif
    !end do loop_name
    !if((0.0_dp <= h).and.( h <= h_0_1) ) then        
        !L1   = rEarth*(  cos(h)-sqrt( (rMantle/rEarth)**2-sin(h)**2 )  )
        !L2_b = rEarth*(  cos(h)-sqrt( (rOCore/rEarth)**2-sin(h)**2 )  )
        !L2   = L2_b - L1
        !L3_b = rEarth*(  cos(h)-sqrt( (rICore/rEarth)**2-sin(h)**2 )  )
        !L3   = L3_b - L2_b
        !L4   = 2.0_dp*rEarth*cos(h) - 2.0_dp*L3_b        
        !L_a(1)=L1; L_a(2)=L2; L_a(3)=L3;
        !L_a(4)=L4; L_a(5)=L3; L_a(6)=L2;
        !L_a(7)=L1
    !elseif( h <= h_0_2 ) then
        !L1   = rEarth*(  cos(h)-sqrt( (rMantle/rEarth)**2-sin(h)**2 )  )
        !L2_b = rEarth*(  cos(h)-sqrt( (rOCore/rEarth)**2-sin(h)**2 )  )
        !L2   = L2_b - L1        
        !L3   = 2.0_dp*rEarth*cos(h) - 2.0_dp*L2_b
!
        !L_a(1)=L1; L_a(2)=L2; L_a(3)=L3; L_a(4)=L2; L_a(5)=L1;
    !elseif( h <= h_0_3 ) then
        !L1   = rEarth*(  cos(h)-sqrt( (rMantle/rEarth)**2-sin(h)**2 )  )                
        !L2   = 2.0_dp*rEarth*cos(h) - 2.0_dp*L1
!
        !L_a(1)=L1; L_a(2)=L2; L_a(3)=L1;
    !else if( h <= (PI/2.0_dp) ) then        
        !L=2.0_dp*rEarth*cos(h)
        !L_a(1)=L
    !endif
    return
end subroutine Earth_total_lengths