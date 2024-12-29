proc badproc {a b} {set c [expr {$a + $b}]; return $c}
puts [badproc 10 20]