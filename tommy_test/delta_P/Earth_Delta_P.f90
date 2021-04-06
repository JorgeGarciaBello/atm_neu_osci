subroutine Earth_Delta_P()
    use types
    use constants
    implicit none
    integer, parameter :: n=3500   ! L over E partition [km/Gev]
    integer, parameter :: m=360   ! CP-violation partition [°]
    
    !call Earth_Delta_Pee(n,m)
    !call Earth_Delta_Pem(n,m)
    !call Earth_Delta_Pme(n,m)
    !call Earth_Delta_Pmm(n,m)


    !call Earth_Delta_Pij_E(n,m,1,1)
    call Earth_Delta_Pij_E(n,m,1,2)
    call Earth_Delta_Pij_E(n,m,2,1)
    call Earth_Delta_Pij_E(n,m,2,2)
    return
end subroutine Earth_Delta_P