; starts with zero, only ever goes up by 1, can return its current state
slot Counter {

    this {
        currentValue: Integer
    }

    constructors {
        new = () {
            currentValue = 0
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

    ; this slot is "projectable" (castable) to this "quasi-type" or in other words, this is the type of this slot
    ; also the calculation of the properties ("fields") happens lazily
    type {
        currentValue: Integer = this.currentValue
    }
}