memoized = [T, R] (function: T -> R) -> (T -> R) {
    cache = MutableMap[T, R]()
    return (t: T) -> R {
        maybeResult = cache.get(t)
        if maybeResult =/= None {
            return maybeResult
        } else {
            result = function(t)
            cache.put(t, result)
            return result
        }
    }
}