from radish.iterables.collections.set import Set ; I don't know, something like that, just making this look like a real example
from radish.iterables.collections.mutable.set import HashSet ; or some other implementation, anyway, mutable
from radish.data.comparison import Equatable

union = [I of Equatable[I]] (one: Set[I], another: Set[I]) -> Set[I] { ; I for item
    buffer = HashSet.new()
    for item in one {
        buffer.add(item)
    }
    for item in another {
        buffer.add(item)
    }
    return buffer.frozen() ; cool name, get it? ha!
}

; we're using the property of sets here, that even if we add another identical element to a set, one which it already contains,
; nothing happens

; actually, we may not even need frozen(), or toImmutable(), or whatever, when I make up my mind about inheritance

; no root type like Object in Java, so we... simply require the type to have hashCode (and equals)
; (Equatable is (to me) "narrower" than Comparable, which would probably extend Equatable and add greaterThan, etc.)

; btw, data types are automatically Equatable

; btw 2: what if we didn't require that I be Equatable? instead, all sets would require a function in their constructors,
; for equality, or even - in the case of sorted sets - comparator function?

; todo:
; write intersection, difference, and "outer difference", whatever it's called, distinct, maybe?
; (symmetric difference apparently, but isn't that a mouthful)
; how about simply "unique"