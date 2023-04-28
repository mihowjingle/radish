where = infix (array: Array<some E>, predicate: E -> Boolean) -> Array<E> {
    with acc: Array<E> = [] for element in array {
        if predicate(element) {
            acc += element
        }
    }
    return acc
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

positive = [-2, -1, 0, 1, 2, 3, 4, 5].where((x) { x > 0 })

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

isPositive: Integer -> Boolean = { arg > 0 }
positive = [-2, -1, 0, 1, 2, 3, 4, 5].where(isPositive)

; ... and so on