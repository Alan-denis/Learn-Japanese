

namespace eval quiz {
        
    proc runAdverbQuiz {} {

        set adverb [utils::getRandomElement [dict keys $data::adverbs]]
        set correctAnswer [dict get $data::adverbs $adverb]

        puts "--------------------------------------------------------"
        puts "Assess correctly the adverb's meaning : $adverb"

        flush stdout
        set userGuess [gets stdin]

        puts "The full answer is $correctAnswer"

        return $userGuess
    }
}