type Couple[A, B] {
    first: A
    second: B
}

cartesian = [X, Y] (first: Array[X], second: Array[Y]) -> Array[Couple[X, Y]] {
    acc = MutableList[Couple[X, Y]]()
    for x in first {
        for y in second {
            acc.append(Couple {
                first = x
                second = y
            })
        }
    }
    return acc.toArray()
}