namespace eval quiz {
    
    proc runVocabularyQuiz {} {

        set word [utils::getRandomElement [dict keys $data::vocabularyWords]]
        set correctAnswer [dict get $data::vocabularyWords $word]

        puts "--------------------------------------------------------"
        puts "Assess correctly this word's meaning : $word"

        flush stdout
        set userGuess [gets stdin]

        puts "The full answer is $correctAnswer"

        return $userGuess
    }
}