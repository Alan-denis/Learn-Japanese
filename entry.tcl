source "./countersQuiz.tcl"
source "./tensesQuiz.tcl"
source "./utils.tcl"

#####################
#      CONFIG      #
#####################
set trainingModes {
    "Counters\t\t[Most important / Basic to know]"
    "Verbe tenses\t\t[All of them]"
}

#####################
#       MENU        #
#####################

set userChoice ""

proc displayMenu {} {
    global userChoice
    global trainingModes

    puts "
    ###################################################
                Japanese training executable
    ###################################################
    "

    puts "Choose the training mode :"

    set i 0

    foreach mode $trainingModes {
        puts "\t$i) $mode"
        incr i
    }

    set userChoice [gets stdin]
}

#####################
#       MAIN        #
#####################

proc main {} {
    global userChoice

    switch -- $userChoice {
        0   { 
                while {1} {
                    set result [runCounterQuiz]

                    if {[checkExit $result]} {
                        displayMenu
                    }
                } 
            }
        1   { 
                while {1} {
                    set result [runTensesQuiz]

                    if {[checkExit $result]} {
                        displayMenu
                    }
                } 
            }
    }
}

flush stdout 

displayMenu
main