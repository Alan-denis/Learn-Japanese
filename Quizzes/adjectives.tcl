namespace eval quiz {
    
    proc runAdjectiveQuiz {} {

        set adjective [utils::getRandomElement [dict keys $data::adjectives]]
        set correctAnswer [dict get $data::adjectives $adjective]

        puts "--------------------------------------------------------"
        puts "Assess correctly the adjective's meaning : $adjective"

        flush stdout
        set userGuess [gets stdin]

        puts "The full answer is $correctAnswer"

        return $userGuess
    }
}