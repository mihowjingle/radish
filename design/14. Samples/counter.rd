; starts with zero, only ever goes up by 1, can return its current state
slot Counter {

    ; maybe up to change ("this" is overloaded, and maybe we want to separate the state from the "private methods" as you would call them in Java),
    ; but if not, other candidates for the keyword here, besides 'private', would be 'internal', for example

    ; but after consideration, we probably don't want to separate private functions from private data,
    ; because the functions can be reassigned too, mutating the behaviour of the object
    ; just like reassigning the data mutates state
    this {
        currentValue: Integer ; optional initialization in-place?
        ; and then you only have to initialize whatever is not initialized in a constructor?
        ; with the option to overwrite, of course...
        ; what if everything is initialized "by default" (here)?
        ; what would such an empty constructor look like, and be called?
    }

    constructors {

        ; probably up to change (the return type is always Counter and the syntax resembles returning a normal type, which a slot is not)
        new: None -> Counter = () {
            return Counter {
                currentValue = 0
            }
        }
    }

    mutations {
        increment: None -> None = () {
            this.currentValue = this.currentValue + 1
        }

        incrementAndGet: None -> Integer = () { ; can mutations return stuff? probably... why not...
            this.currentValue = this.currentValue + 1
            return this.currentValue
        }
    }

    readonly { ; split into 'properties' and 'methods' or something?
        currentValue: None -> Integer = () {
            return this.currentValue
        }
    }
}

; basically we're dealing with variable-constant, public-private, and function-data (behavior-state), so it's 2^3=8 options in total...