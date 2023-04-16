type Couple some A, B {
    first: A
    second: B
}

cartesian = (first: Array<some X>, second: Array<some Y>) -> Array<Couple<X, Y>> {
    acc = List<Couple<X, Y>>()
    for x in first {
        for y in second {
            acc.append(Couple {
                first = x
                second = y
            })
        }
    }
    acc.toArray()
}