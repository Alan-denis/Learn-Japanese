namespace eval quiz {
    
    proc runParticuleQuiz {} {

        set particule [utils::getRandomElement [dict keys $data::particules]]
        set correctAnswer [dict get $data::particules $particule]

        puts "--------------------------------------------------------"
        puts "Assess correctly the particule's meaning : $particule"

        flush stdout
        set userAnswer [gets stdin]

        puts "The full answer is $correctAnswer"
    }
}