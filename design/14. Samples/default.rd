; basically Kotlin's ?: operator
default = (this: any A | None, ifNone: A) -> A {
    if this is None {
        return ifNone
    } else {
        return this
    }
}

heisenbergsFunction: any A -> A | None = (value) {
    ; 50/50 to return its own argument or None
}

root = {
    string: String = heisenbergsFunction("maybe").default("definitely")
}