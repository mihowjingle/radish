slot List[E] { ; probably not just 'List' (LinkedList, ArrayList in Java...), but anyway, just an example

    constructors {
        new: Array[E] -> List[E] = (elements) {
            ; I don't know, how I will design var-args yet, if at all
        }
    }

    mutations {
        append: E -> None = (element) {
            ; ... add last
        }

        prepend: E -> None = (element) {
            ; ... add first
        }

        insert: E, Integer -> None = (element, index) {
            ; ... add in between and "push" the "right side" to the right by 1
        }

        replace: E, Integer -> None = (element, index) {
            ; ...
        }
    }

    readonly {
        toArray: None -> Array[E] = () {
            ; return elements as array
        }

        isEmpty: None -> Boolean = () {
            ; ...
        }

        map: [M] (E -> M) -> List[M] = (mapping) {
            accumulator = List[M].new()
            for element in this {
                accumulator.append(mapping(element))
            }
            return accumulator
        }

        ; ...
    }
}