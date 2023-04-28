; if for some reason I don't make a standard if an expression, then this would be a substitute for the ternary operator

translate = infix (condition: Boolean, ifTrue: some T, ifFalse: T) -> T {
    if condition {
        return ifTrue
    } else {
        return ifFalse
    }
}

;;;;;;;;;;;;;;;;;;;;;;;;;;

write((2 > 1).translate("Ok, good.", "I can't into math..."))

; TBD on "infix"