anyMatch = infix [E] (elements: Iterable[E], predicate: E -> Boolean) -> Boolean {
    for element in elements {
        if predicate(element) {
            return True
        }
    }
    return False
}

; depending on what ends up as the ignored type parameter keyword: List[any], this could be just 'any', not 'anyMatch'
; the options are 'any', 'some' and '_'

; anyway (surprise, surprise):

isOdd = (i: Integer) { i % 2 == 0 }

set(1, 3, 5).anyMatch((x) { x < 0 })    ; False
list(1, 2, 3).anyMatch(isOdd)           ; True