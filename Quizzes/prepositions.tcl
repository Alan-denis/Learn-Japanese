namespace eval quiz {
    
    proc runPrepositionQuiz {} {

        set preposition [utils::getRandomElement [dict keys $data::prepositions]]
        set correctAnswer [dict get $data::prepositions $preposition]

        puts "--------------------------------------------------------"
        puts "Assess correctly the preposition's meaning : $preposition"

        flush stdout
        set userGuess [gets stdin]

        puts "The full answer is $correctAnswer"

        return $userGuess
    }
}