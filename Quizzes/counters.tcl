namespace eval quiz {
    
    proc runCounterQuiz {} {

        puts "--------------------------------------------------------"

        set counterToGuess [utils::getRandomElement [dict keys $data::counters]]
        set translation [dict get $data::counters $counterToGuess]
        
        puts "Guess the counter for: $counterToGuess"
        
        set userGuess [gets stdin]
        
        puts "Full answer is : $translation."

        return $userGuess
    }
}

