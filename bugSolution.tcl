proc safeProc {a b} {
    if {[string is double -strict $a] && [string is double -strict $b]} {
        set c [expr {$a + $b}]
        return $c
    } else {
        return -code error "Invalid input: Arguments must be numbers"
    }
}
puts [safeProc 10 20]
puts [safeProc 10 abc] 
puts [safeProc 10.5 20.2]