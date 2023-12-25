#####################
#       UTILS       #
#####################

proc getRandomElement list {
    return [lindex $list [expr {int(rand() * [llength $list])}]]
}

proc checkExit answer {
    if {$answer eq "exit"} {
        return 1
    }

    return 0
}