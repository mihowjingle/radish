; TBD on Map operators / methods, or even if they are going to be called maps or dictionaries, but anyway...

memoized = (function: some T -> some R) -> (T -> R) {
    cache = mutableMap<T, R>()
    return (t: T) -> R {
        maybeResult = cache[t]
        if maybeResult =/= None {
            return maybeResult
        } else {
            result = function(t)
            cache[t] = result
            return result
        }
    }
}