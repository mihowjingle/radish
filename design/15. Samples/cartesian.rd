type Couple<some A, some B> {
    first: A
    second: B
}

cartesian = (first: Array<some A>, second: Array<some B>) -> Array<Couple<A, B>> {
    acc = List<Couple<A, B>>()
    for a in first {
        for b in second {
            acc.append(Couple {
                first = a
                second = b
            })
        }
    }
    acc.toArray()
}