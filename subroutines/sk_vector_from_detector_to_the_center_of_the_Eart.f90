subroutine sk_vector_from_detector_to_the_center_of_the_Eart(A)
    use types
    use constants, only: rEarth
    implicit none
    real(dp) :: A(2)
    real(dp) :: x, y

    A(1) = 0.0_dp
    A(2) = -rEarth

    return
end subroutine sk_vector_from_detector_to_the_center_of_the_Eart



