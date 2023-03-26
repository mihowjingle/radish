; Should we panic when times < 0? Nothing will happen anyway... But we probably should, clearly not what we intended.
; Or... this is just another reason to introduce signed/unsigned numbers.

repeat = (times: Integer, action: None -> None) {
    with current = 0 while current < times {
        action()
        current += 1
    }
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

root = () {
    repeat(times = 3, action = () {
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