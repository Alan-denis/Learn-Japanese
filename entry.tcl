source "./countersQuiz.tcl"
source "./adjectivesQuiz.tcl"
source "./adverbsQuiz.tcl"
source "./verbsQuiz.tcl"
source "./prepositionsQuiz.tcl"
source "./particulesQuiz.tcl"
source "./tensesQuiz.tcl"
source "./vocabularyQuiz.tcl"
source "./utils.tcl"

#####################
#      CONFIG      #
#####################
set trainingModes {
    "Counters\t\t[Most important / Basic to know]"
    "Verbs\t\t[JLPT N5]"
    "Verbe tenses\t\t[All of them]"
    "Vocabulary\t\t[JLPT N5]"
    "Prepositions\t\t[JLPT N5]"
    "Adverbs\t\t[JLPT N5]"
    "Adjectives\t\t[JLPT N5]"
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
              日本語トレーニング実行可能ファイル
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
                    set result [runVerbQuiz]

                    if {[checkExit $result]} {
                        displayMenu
                    }
                }
            }
        2   { 
                while {1} {
                    set result [runTensesQuiz]

                    if {[checkExit $result]} {
                        displayMenu
                    }
                }
            }
        3   { 
                while {1} {
                    set result [runVocabularyQuiz]

                    if {[checkExit $result]} {
                        displayMenu
                    }
                } 
            }
        4   { 
                while {1} {
                    set result [runParticuleQuiz]

                    if {[checkExit $result]} {
                        displayMenu
                    }
                } 
            }
        5   { 
                while {1} {
                    set result [runPrepositionQuiz]

                    if {[checkExit $result]} {
                        displayMenu
                    }
                } 
            }
        6   { 
                while {1} {
                    set result [runAdjectiveQuiz]

                    if {[checkExit $result]} {
                        displayMenu
                    }
                } 
            }
        7   { 
                while {1} {
                    set result [runAdverbQuiz]

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