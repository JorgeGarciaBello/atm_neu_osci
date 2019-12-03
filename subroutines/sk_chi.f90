real(8) function sk_chi()
    implicit none
    integer, parameter :: m=515     ! m is the number of analysis bin in SK-IV
    integer, parameter :: k=
    real(8) :: O(m)                 ! O(m) is the observed number of events in the n-th analysis bin
    real(8) :: E(m)                 ! E(m) represent the nominal MC expectation of number of events in the n-th analysis bin after incorporating the effect of the systematic errors 
    real(8) :: eps(k)               ! eps(k) are the error parameters
    real(8) :: sigma(k)             ! sigma(k) array of systematic error source

    sk_chi=0.d0
    do n=1,m
        sk_chi=sk_chi+( E(n)-O(n)+O(n)*LOG(O(n)/E(n)) )
    enddo
    sk_chi=2.d0*sk_chi
    do i=1,k
        sk_chi=sk_chi+(eps(i)/sigma(i))**2
    enddo


end function sk_chi