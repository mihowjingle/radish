clamp: Number, Number, Number -> Number = (input, min, max) {
    return when {
        min > max       then panic "Lower bound is greater than the upper bound!"
        input > max     then max
        input < min     then min
        else input
    }
}

; some indentation to enhance readability would probably be "soft-recommended", so to speak, up to you

safeClamp = (input: Number, a: Number, b: Number) -> Number { ; todo: better names?
    min = if a < b then a else b ; experimental syntax for if-expression/ternary operator
    max = if a > b then a else b
    return when {
        input > max then max
        input < min then min
        else input
    }
}