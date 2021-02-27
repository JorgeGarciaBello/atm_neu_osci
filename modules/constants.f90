module constants
    use types
    implicit none
    integer,  parameter :: DM     = 5                            ! Number of Earth density layers [3,5]
    real(dp), parameter :: PI     = 3.141592653589793238462643d0
    real(dp), parameter :: N_A    = 6.0221415D23                 ! N_A is the Avogadro's number [1/mol]
    real(dp), parameter :: GF     = 8.96180870D-38               ! GF is the Fermi constatnt [ eV cm^{3} ]
    real(dp), parameter :: rEarth = 6378.d0                      ! Longitud en [Km]
    real(dp), parameter :: rCore  = 3486.d0                      ! Longitud en [Km]    
    real(dp), parameter :: rUnder  = 1.d0                      ! Longitud en [Km]    

    real(dp), parameter :: rICore  = 1220.d0                      ! Longitud en [Km]    
    real(dp), parameter :: rOCore  = 3480.d0                      ! Longitud en [Km]    
    real(dp), parameter :: rMantle = 5701.d0                      ! Longitud en [Km]        
    real(dp), parameter :: rAtm    =   20.d0                      ! Longitud en [Km]
    
end module constants

