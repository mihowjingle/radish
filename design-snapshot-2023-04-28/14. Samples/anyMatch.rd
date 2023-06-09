anyMatch = infix [E] (elements: Iterable[E], predicate: E -> Boolean) -> Boolean {
    for element in elements {
        if predicate(element) {
            return True
        }
    }
    return False
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

isOdd = (i: Integer) { i % 2 == 0 }

setOf(1, 3, 5).anyMatch((x) { x < 0 })    ; False
listOf(1, 2, 3).anyMatch(isOdd)           ; True