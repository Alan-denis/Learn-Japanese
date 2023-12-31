namespace eval quiz {
    
    proc runRadicalQuiz {} {

        set radical [utils::getRandomElement [dict keys $data::radicals]]
        set correctAnswer [dict get $data::radicals $radical]

        puts "--------------------------------------------------------"
        puts "Assess correctly the radical's meaning : $radical"

        flush stdout
        set userGuess [gets stdin]

        puts "The full answer is $correctAnswer"

        return $userGuess
    }
}