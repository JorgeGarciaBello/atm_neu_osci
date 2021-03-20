subroutine Earth_Delta_Pem(n,m)
    use types
    use constants
    implicit none
    integer :: n   ! L over E partition [km/Gev]
    integer :: m   ! CP-violation partition [°]
    real(dp) :: res((m+1)*n,3)
    
    real(dp) :: ro_a(7)         ! [ g/cm^{3} ]
    real(dp) :: L_a(7)          ! [ Km ]    
    real(dp) :: resutls
    real(dp) :: h, E    
    integer  :: i,j,k,u,dim

    real(dp) :: iterativeProbabilityOfTransitionAB    
    integer  :: flvr1              ! flvr1 is the flavour with which the neutrino is generated
    integer  :: flvr2              ! flvr2 is the flavour that is transited 
    real(dp) :: t12,t23,t13,delta  ! Are the three mixing angles and the CP-violation phase of the mixing matrix
    real(dp) :: sm,aM              ! sm,aM are the squared mass difference m=m_21 y M=m_32    
    integer  :: nu                 ! nu is 1 for neutrinos an 2 for antineutrino        
    integer  :: Z                  ! Z
    integer  :: A                  ! A
    integer :: hierarchy           ! Normal =1, inverted = 2

    real(dp) :: coz_Z(11),theta_z
    real(dp) :: delta_i,delta_f,delta_jump
    character(len=200) :: name,flavour,zenith_name,hierarchy_name,format_string,format_string_2
    real(dp) :: L_tot,E_min,E_max,L_E_i,L_E_f,L_E_j
    print*, 'Pem...'    
    !########################################
    !
    !   Fix this variables
    !
    !########################################
    t12=0.5872523687_dp
    t23=0.8304591359_dp
    t13=0.1481900178_dp
    !delta=0.0_dp
    sm=7.53d-5
    aM=2.5d-3
    Z=1; A=2;    
    delta_i=PI        !180.0_dp
    delta_f=2.0_dp*PI !360.0_dp
    delta_jump=(delta_f-delta_i)/real(m)
    L_a=0.0_dp
    !########################################
    !
    !   Change this variables
    !
    !########################################    
    flvr1=1
    flvr2=2    
    !#######################################
    
    !open(newunit=u, file='tommy_test/delta_P/data.dat')
    !coz_Z = (/0.0_dp,0.1_dp,0.2_dp,0.3_dp,0.4_dp,0.5_dp,0.6_dp,0.7_dp,0.8_dp,0.9_dp,1.0_dp/)
    coz_Z = (/0.0_dp,-0.1_dp,-0.2_dp,-0.3_dp,-0.4_dp,-0.5_dp,-0.6_dp,-0.7_dp,-0.8_dp,-0.9_dp,-1.0_dp/)

    
    
    if((flvr1==1).and.(flvr2==1)) flavour='ee'
    if((flvr1==1).and.(flvr2==2)) flavour='em'
    if((flvr1==2).and.(flvr2==2)) flavour='mm'
    if((flvr1==2).and.(flvr2==1)) flavour='me'

    do nu=1,2
    if(nu==1) name='tommy_P'
    if(nu==2) name='tommy_aP'

    do hierarchy=1,2

    if(hierarchy==1) hierarchy_name='t13'
    if(hierarchy==2) then
        hierarchy_name='t13ih'
        aM=-2.5d-3
    endif


    do i=0,10
        if (i < 10) then
            format_string = "(I1)"
        else
            format_string = "(I2)"
        endif
        h=PI - acos(coz_Z(i+1))
        call set_settings_for_4S(h,dim,L_a,ro_a)
        L_tot=sum(L_a)
        E_min=0.1_dp
        E_max=100.0_dp
        L_E_i=L_tot/E_max
        L_E_f=L_tot/E_min        
        print*, 'i', i
        write (zenith_name, format_string)  i
        if(i==10) then
            open(newunit=u, file='tommy_test/delta_P/img_neu/'// &
                                  trim(name)//trim(flavour)//'_LEdcp_'//'1.0'//'-'//trim(hierarchy_name)//'.dat')
            close(u)
            do j=1,n
                !call logarithmic_partition(n,j,log10(0.1_dp),log10(100.0_dp),E)
                call logarithmic_partition(n,j,log10(L_E_i),log10(L_E_f),L_E_j)
                E=L_tot/L_E_j
                do k=1,m+1
                    delta = delta_i + delta_jump*(k-1)                    
                    resutls=  iterativeProbabilityOfTransitionAB(dim,flvr1,flvr2,L_a,ro_a,t12,t23, t13, delta,sm,aM,E,nu,Z,A) &
                             - iterativeProbabilityOfTransitionAB(dim,flvr1,flvr2,L_a,ro_a,t12,t23,-t13, delta,sm,aM,E,nu,Z,A)                    
                    open(newunit=u, file='tommy_test/delta_P/img_neu/'// &
                                  trim(name)//trim(flavour)//'_LEdcp_'//'1.0'//'-'//trim(hierarchy_name)//'.dat', &
                                  position='append',status='old')
                        write(u,*)  sum(L_a)/E,delta*180/PI,resutls
                    close(u)
                enddo
                open(newunit=u, file='tommy_test/delta_P/img_neu/'// &
                                  trim(name)//trim(flavour)//'_LEdcp_'//'1.0'//'-'//trim(hierarchy_name)//'.dat', &
                                  position='append',status='old')
                    write(u,*)  ' '
                close(u)
            enddo
        else
            open(newunit=u, file='tommy_test/delta_P/img_neu/'// &
                                  trim(name)//trim(flavour)//'_LEdcp_0.'//trim(zenith_name)//'-'//trim(hierarchy_name)//'.dat')
            close(u)
            do j=1,n
                !call logarithmic_partition(n,j,log10(0.1_dp),log10(100.0_dp),E)
                call logarithmic_partition(n,j,log10(L_E_i),log10(L_E_f),L_E_j)
                E=L_tot/L_E_j                
                do k=1,m+1
                    delta = delta_i + delta_jump*(k-1)                    
                    resutls= iterativeProbabilityOfTransitionAB(dim,flvr1,flvr2,L_a,ro_a,t12,t23, t13, delta,sm,aM,E,nu,Z,A) &
                             - iterativeProbabilityOfTransitionAB(dim,flvr1,flvr2,L_a,ro_a,t12,t23,-t13, delta,sm,aM,E,nu,Z,A)                    
                    open(newunit=u, file='tommy_test/delta_P/img_neu/'//trim(name)//trim(flavour)//'_LEdcp_0.'// &
                        trim(zenith_name)//'-'//trim(hierarchy_name)//'.dat',position='append',status='old')
                        write(u,*)  sum(L_a)/E,delta*180/PI,resutls
                    close(u)
                enddo
                open(newunit=u, file='tommy_test/delta_P/img_neu/'//trim(name)//trim(flavour)//'_LEdcp_0.'// &
                        trim(zenith_name)//'-'//trim(hierarchy_name)//'.dat',position='append',status='old')
                        write(u,*)  ''
                    close(u)
            enddo
        endif
    enddo   
    enddo ! Mass hierarchy loop
    enddo ! Neutrino - antineutrino loop
    return
end subroutine Earth_Delta_Pem