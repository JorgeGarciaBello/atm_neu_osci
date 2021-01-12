subroutine sk_get_position_vector(r,gamma,theta)
    use types
    use constants
    implicit none
    real(dp) :: r(2)
    real(dp) :: a(2),b(2)
    real(dp) :: gamma,theta

    call sk_vector_from_detector_to_the_center_of_the_Eart(a)
    call sk_ratio_vector(b,gamma)

    r(1) = a(1) + b(2)
    r(2) = a(2) + b(1)

    !if()
    return
end subroutine sk_get_position_vector