where = infix [E] (array: Array[E], predicate: E -> Boolean) -> Array[E] {
    with acc = arrayOf[E]() for element in array {
        if predicate(element) {
            acc += element
        }
    }
    return acc
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

positive = arrayOf(-2, -1, 0, 1, 2, 3, 4, 5).where((x) { x > 0 })

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

isPositive: Integer -> Boolean = { arg > 0 }
positive = arrayOf(-2, -1, 0, 1, 2, 3, 4, 5).where(isPositive)

; ... and so on