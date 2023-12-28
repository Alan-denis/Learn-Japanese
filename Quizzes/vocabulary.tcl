namespace eval quiz {
    
    proc runVocabularyQuiz {} {
        global words

        set word [utils::getRandomElement [dict keys $data::words]]
        set correctAnswer [dict get $data::words $word]

        puts "--------------------------------------------------------"
        puts "Assess correctly this word's meaning : $word"

        flush stdout
        set userAnswer [gets stdin]

        puts "The full answer is $correctAnswer"
    }
}