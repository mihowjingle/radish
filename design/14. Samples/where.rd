where = infix (array: Array[some E], predicate: E -> Boolean) -> Array[E] {
    accumulator = List[E].new() ; see list.rd
    for element in array {
        if predicate(element) {
            accumulator.append(element)
        }
    }
    return accumulator.toArray()
}

positive = array(-2, -1, 0, 1, 2, 3, 4, 5).where((x) { x > 0 })

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; new syntax and alternate function name

only = (this: Array[any E], predicate: E -> Boolean) -> Array[E] {
    accumulator = List[E].new() ; see list.rd
    for element in this {
        if predicate(element) {
            accumulator.append(element)
        }
    }
    return accumulator.toArray()
}

positive = [-2, -1, 0, 1, 2, 3, 4, 5].only((x) { x > 0 })

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

isPositive: Integer -> Boolean = { arg > 0 }
positive = [-2, -1, 0, 1, 2, 3, 4, 5].where(isPositive)

; ... and so on

; so... literal ([]), or function that "looks like a constructor" (Array()), or just function (array()),
; especially in the context of lists, sets, and other collections

; alternative name for where: only