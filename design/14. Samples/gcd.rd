greatestCommonDivisor = (x: Integer, y: Integer) -> Integer | None {
    if x == 0 or y == 0 {
        return None
    }
    with tx = x, ty = y while ty =/= 0 { ; t for temporary
        remainder = tx % ty
        tx = ty
        ty = remainder
    }
    return tx
}