import radish.iterables.collections.set.Set                 ; I don't know, something like that, just making this look like a real example
import radish.iterables.collections.mutable.set.HashSet     ; or some other implementation, anyway, mutable
import radish.data.comparison.Equatable

union = [A of Equatable[A]] (one: Set[A], another: Set[A]) -> Set[A] {
    buffer: HashSet[A] = HashSet.new()
    for item in one {
        buffer.add(item)
    }
    for item in another {
        buffer.add(item)
    }
    return buffer
}

; we're using the property of sets here, that even if we add another identical element to a set, one which it already contains,
; nothing happens

; no root type like Object in Java, so we... simply require the type to have hashCode (and equals)
; (Equatable is (to me) "narrower" than Comparable, which would probably extend Equatable and add greaterThan, etc.)

; btw, data types are automatically Equatable

; btw 2: what if we didn't require that A be Equatable? instead, all sets would require a function in their constructors,
; for equality, or even - in the case of sorted sets - comparator function

; todo:
; write intersection, difference, and "outer difference", whatever it's called, distinct, maybe?
; (symmetric difference apparently, but isn't that a mouthful)
; how about simply "unique"