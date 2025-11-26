; or maybe "every", but anyway:

all = (this: Iterable[any A], predicate: A -> Boolean) -> Boolean {
    for element in this {
        if not predicate(element) {
            return False
        }
    }
    return True
}

[1, 3, 9].all((x) { x > 0 })