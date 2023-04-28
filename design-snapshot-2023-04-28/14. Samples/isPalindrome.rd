isPalindrome: String -> Boolean = (string) {
    low = lowercase(string)
    with left = 0, right = low.length - 1 while left < right {
        if low.characterAt(left) =/= low.characterAt(right) {
            return False
        }
        left += 1
        right -= 1
    }
    return True
}