; Should we panic when times < 0? Nothing will happen anyway... But we probably should, clearly not what we intended.
; Or... this is just another reason to introduce signed/unsigned numbers.

repeat = (times: Integer, action: Integer -> None) {
    with current = 0 while current < times {
        action(current) ; if you wanted to "consume" current
        current += 1
    }
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

root = {
    repeat(times = 3, action = (_) {
        write("Hello there!")
    })
    repeat(2, {
        write("Bye!")
    })
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Hello there!
Hello there!
Hello there!
Bye!
Bye!