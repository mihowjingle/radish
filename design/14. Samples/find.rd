find = (this: Array[any A], predicate: A -> Boolean) -> [A, None] {
    for element in this {
        if predicate(element) {
            return element
        }
    }
    return None
}

isOdd: Integer -> Boolean = (x) { x % 2 == 1 }

[1, 2, 3].find(isOdd)

; 1

; 2025-11-25 oh, what if between 'any', 'some' and [] for type parameters, we just... overload 'type'?

find = (this: Array[type A], predicate: A -> Boolean) -> [A, None] {
    for element in this {
        if predicate(element) {
            return element
        }
    }
    return None
}

; one fewer keyword, but one letter longer (see 13.2, 2025-11-22)
; ... and List[any] looks a little better than List[type] when not caring about the type parameter