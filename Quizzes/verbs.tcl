namespace eval quiz {
    
    proc runVerbQuiz {} {

        set verb [utils::getRandomElement [dict keys $data::verbs]]
        set correctAnswer [dict get $data::verbs $verb]

        puts "--------------------------------------------------------"
        puts "Assess correctly the verb's meaning : $verb"

        flush stdout
        set userAnswer [gets stdin]

        puts "The full answer is $correctAnswer"
    }
}