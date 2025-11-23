; starts with zero, only ever goes up by 1, can return its current state
slot Counter {

    this {
        currentValue = 0 ; type inference?
    }

    ; optional 'constructors' clause, if all state is initialized in 'this'? and the default constructor
    ; (there has to be at least 1 constructor always) should be called 'new'?
    ; ???

    mutations {
        increment = () {
            this.currentValue = this.currentValue + 1
        }

        incrementAndGet = () { ; can mutations return stuff? probably... why not...
            this.currentValue = this.currentValue + 1
            return this.currentValue
        }
    }

    readonly { ; or... 'getters' or 'readers' or.... 'type'?
        currentValue = () {
            return this.currentValue
        }
    }
}