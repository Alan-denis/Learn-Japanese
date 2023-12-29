proc sourceDirectory {directory} {
    set files [glob -directory $directory *]

    foreach file $files {
        source $file
    }
}

sourceDirectory "./Quizzes"
sourceDirectory "./Data"
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
    "Particules\t\t[JLPT N5]"
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
                    set result [quiz::runCounterQuiz]

                    if {[utils::checkExit $result]} {
                        displayMenu
                    }
                } 
            }
        1   { 
                while {1} {
                    set result [quiz::runVerbQuiz]

                    if {[utils::checkExit $result]} {
                        displayMenu
                    }
                }
            }
        2   { 
                while {1} {
                    set result [quiz::runTensesQuiz]

                    if {[utils::checkExit $result]} {
                        displayMenu
                    }
                }
            }
        3   { 
                while {1} {
                    set result [quiz::runVocabularyQuiz]

                    if {[utils::checkExit $result]} {
                        displayMenu
                    }
                } 
            }
        4   { 
                while {1} {
                    set result [quiz::runPrepositionQuiz]

                    if {[utils::checkExit $result]} {
                        displayMenu
                    }
                } 
            }
        5   { 
                while {1} {
                    set result [quiz::runParticuleQuiz]

                    if {[utils::checkExit $result]} {
                        displayMenu
                    }
                } 
            }
        6   { 
                while {1} {
                    set result [quiz::runAdverbQuiz]

                    if {[utils::checkExit $result]} {
                        displayMenu
                    }
                } 
            }
        7   { 
                while {1} {
                    set result [quiz::runAdjectiveQuiz]

                    if {[utils::checkExit $result]} {
                        displayMenu
                    }
                } 
            }
        default {
            displayMenu
            main
        }
    }
}

flush stdout 

displayMenu
main