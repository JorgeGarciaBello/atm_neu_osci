subroutine sk_ratio_vector(A,gamma)
    use types
    use constants, only: rEarth
    implicit none
    real(dp) :: A(2)
    real(dp) :: gamma

    A(1) = rEarth*cos(gamma)
    A(2) = rEarth*sin(gamma)
    return
end subroutine sk_ratio_vector