;;;;;;;;;;;;;;;;;;; recursive, unsafe

error NegativeFactorialArgument

unsafeFactorial = (x: Integer) -> Integer {
    if x < 0 {
        panic NegativeFactorialArgument
    }
    if x == 0 {
        return 1
    }
    return x * self(x - 1)
}

;;;;;;;;;;;;;;;;;;; recursive, safe

value NegativeFactorialArgument

safeFactorial = (x: Integer) -> Integer | NegativeFactorialArgument {
    if x < 0 {
        return NegativeFactorialArgument
    }
    if x == 0 {
        return 1
    }
    return x * self(x - 1)
}

;;;;;;;;;;;;;;;;;;; iterative, unsafe

unsafeIterativeFactorial = (x: Integer) -> Integer {
    if x < 0 {
        panic NegativeFactorialArgument
    }
    with accumulator = 1, current = 1 while current <= x {
        accumulator *= current
        current += 1
    }
    return accumulator
}