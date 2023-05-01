memoized = [I of Equatable[I], O] (function: I -> O) -> (I -> O) {
    cache: MutableMap[I, O] = MutableMap.new()
    return (input: I) -> O {
        maybeResult = cache.get(input)
        if maybeResult =/= None {
            return maybeResult
        } else {
            result = function(input)
            cache.put(input, result)
            return result
        }
    }
}