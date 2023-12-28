source "./utils.tcl"

set prepositions {
    "この, その, あの" "that"
    "小さな" "ちいさな - small, little, tiny"
    "どんな" "what kind of, what sort of"
    "どの" "which"
    "こんな" "such, like this"
    "この" "this"
    "大きな" "おおきな - big, large, great"
    "その" "that"
}

proc runPrepositionQuiz {} {
    global prepositions

    set preposition [getRandomElement [dict keys $prepositions]]
    set correctAnswer [dict get $prepositions $preposition]

    puts "--------------------------------------------------------"
    puts "Assess correctly the preposition's meaning : $preposition"

    flush stdout
    set userAnswer [gets stdin]

    puts "The full answer is $correctAnswer"
}