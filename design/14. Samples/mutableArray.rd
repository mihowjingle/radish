slot MutableArray any A of Array[A] {

    this {
        ; this would have to be like "internal", or some plug like that,
        ; because there is no way to express the mutability of an array in Radish
    }

    constructors {
        new: Array[any E] -> MutableArray[E] = (array) {
            ; internal, but allocate memory, etc...
        }

        ofSize: Integer, any E -> MutableArray[E] = (size, fillerValue) {
            ; again... internal
        }
    }

    mutations {
        ; resize? or is the whole point of a MutableArray, when we already have List, that List is resizeable, and MutableArray is not?

        set: Integer, A -> None (index, value) {
            ; and again, internal, but self-explanatory
        }
    }

    readonly {
        freeze: None -> Array[A] = () {
            ; return this, but immutable
        }
    }
}