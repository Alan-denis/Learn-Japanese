source "./utils.tcl"

set particules {
    "だけ" "only, just, as much as ~"
    "が" "subject marker, however, but ~"
    "か" "question particle"
    "か～か" "or"
    "から" "because, since, from"
    "けど" "but, however, although ~"
    "けれども" "but, however, although ~"
    "まで" "until, as far as, to (an extent), even ~"
    "も" "too, also, as well"
    "なあ" "sentence ending particle, confirmation, admiration, etc"
    "んです" "to explain something, show emphasis"
    "ね" "isn't it? right? eh?"
    "に" "destination particle, in, at, on, to"
    "に/へ" "to (indicates direction / destination)"
    "の" "possessive particle"
    "のです" "to explain something, show emphasis"
    "ので" "because of, given that, since ~"
    "お / ご" "polite marker, honorific prefix particle"
    "を" "object marker particle"
    "たり～たり" "do such things as A and B"
    "と" "and, with, as, connecting particle"
    "は" "topic marker"
    "や" "and, or, connecting particle"
    "よ" "you know, emphasis (ending particle)"
    "より～ほうが" "[2] is more than [1]"
}

proc runParticuleQuiz {} {
    global particules

    set particule [getRandomElement [dict keys $particules]]
    set correctAnswer [dict get $particules $particule]

    puts "--------------------------------------------------------"
    puts "Assess correctly the particule's meaning : $particule"

    flush stdout
    set userAnswer [gets stdin]

    puts "The full answer is $correctAnswer"
}