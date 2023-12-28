source "./utils.tcl"

set verbs {
    "する" {
        "Present Affirmative"   "します"
        "Present Negative"      "しています"
        "Past Affirmative"      "しましょう"
        "Past Negative"         "してください"
        "Meaning"               "do"
    }

    "ある" {
        "Present Affirmative"   "あります"
        "Present Negative"      "ありません"
        "Past Affirmative"      "ありました"
        "Past Negative"         "ありませんでした"
        "Meaning"               "be (nonliving things)"
    }

    "いる" {
        "Present Affirmative"   "います"
        "Present Negative"      "いません"
        "Past Affirmative"      "いました"
        "Past Negative"         "いませんでした"
        "Meaning"               "be (living things)"
    }

    "行く" {
        "Present Affirmative"   "行きます"
        "Present Negative"      "行きません"
        "Past Affirmative"      "行きました"
        "Past Negative"         "行きませんでした"
        "Meaning"               "いく - go"
    }

    "見る" {
        "Present Affirmative"   "見ます"
        "Present Negative"      "見ません"
        "Past Affirmative"      "見ました"
        "Past Negative"         "見ませんでした"
        "Meaning"               "みる - see"
    }

    "聞く" {
        "Present Affirmative"   "聞きます"
        "Present Negative"      "聞きません"
        "Past Affirmative"      "聞きました"
        "Past Negative"         "聞きませんでした"
        "Meaning"               "きく - ask/listen"
    }

    "言う" {
        "Present Affirmative"   "言います"
        "Present Negative"      "言いません"
        "Past Affirmative"      "言いました"
        "Past Negative"         "言いませんでした"
        "Meaning"               "いう - say"
    }

    "食べる" {
        "Present Affirmative"   "食べます"
        "Present Negative"      "食べません"
        "Past Affirmative"      "食べました"
        "Past Negative"         "食べませんでした"
        "Meaning"               "たべる - eat"
    }

    "飲む" {
        "Present Affirmative"   "飲みます"
        "Present Negative"      "飲みません"
        "Past Affirmative"      "飲みました"
        "Past Negative"         "飲みませんでした"
        "Meaning"               "のむ - drink"
    }

    "知る" {
        "Present Affirmative"   "知ります"
        "Present Negative"      "知りません"
        "Past Affirmative"      "知りました"
        "Past Negative"         "知りませんでした"
        "Meaning"               "しる - know"
    }

    "なる" {
        "Present Affirmative"   "なります"
        "Present Negative"      "なりません"
        "Past Affirmative"      "なりました"
        "Past Negative"         "なりませんでした"
        "Meaning"               "become"
    }

    "使う" {
        "Present Affirmative"   "使います"
        "Present Negative"      "使いません"
        "Past Affirmative"      "使いました"
        "Past Negative"         "使いませんでした"
        "Meaning"               "つかう - use"
    }

    "買う" {
        "Present Affirmative"   "買います"
        "Present Negative"      "買いません"
        "Past Affirmative"      "買いました"
        "Past Negative"         "買いませんでした"
        "Meaning"               "かう - buy"
    }

    "売る" {
        "Present Affirmative"   "売ります"
        "Present Negative"      "売りません"
        "Past Affirmative"      "売りました"
        "Past Negative"         "売りませんでした"
        "Meaning"               "うる - sell"
    }

    "走る" {
        "Present Affirmative"   "走ります"
        "Present Negative"      "走りません"
        "Past Affirmative"      "走りました"
        "Past Negative"         "走りませんでした"
        "Meaning"               "はしる - run"
    }

    "歩く" {
        "Present Affirmative"   "歩きます"
        "Present Negative"      "歩きません"
        "Past Affirmative"      "歩きました"
        "Past Negative"         "歩きませんでした"
        "Meaning"               "あるく - walk"
    }

    "待つ" {
        "Present Affirmative"   "待ちます"
        "Present Negative"      "待ちません"
        "Past Affirmative"      "待ちました"
        "Past Negative"         "待ちませんでした"
        "Meaning"               "まつ - wait"
    }

    "着る" {
        "Present Affirmative"   "着ます"
        "Present Negative"      "着ません"
        "Past Affirmative"      "着ました"
        "Past Negative"         "着ませんでした"
        "Meaning"               "きる - wear"
    }

    "書く" {
        "Present Affirmative"   "書きます"
        "Present Negative"      "書きません"
        "Past Affirmative"      "書きました"
        "Past Negative"         "書きませんでした"
        "Meaning"               "かく - write"
    }

    "読む" {
        "Present Affirmative"   "読みます"
        "Present Negative"      "読みません"
        "Past Affirmative"      "読みました"
        "Past Negative"         "読みませんでした"
        "Meaning"               "よむ - read"
    }

    "話す" {
        "Present Affirmative"   "話します"
        "Present Negative"      "話しません"
        "Past Affirmative"      "話しました"
        "Past Negative"         "話しませんでした"
        "Meaning"               "はなす - speak"
    }

    "会う" {
        "Present Affirmative"   "会います"
        "Present Negative"      "会いません"
        "Past Affirmative"      "会いました"
        "Past Negative"         "会いませんでした"
        "Meaning"               "あう - meet"
    }

    "持つ" {
        "Present Affirmative"   "持ちます"
        "Present Negative"      "持ちません"
        "Past Affirmative"      "持ちました"
        "Past Negative"         "持ちませんでした"
        "Meaning"               "もつ - have"
    }

    "考える" {
        "Present Affirmative"   "考えます"
        "Present Negative"      "考えません"
        "Past Affirmative"      "考えました"
        "Past Negative"         "考えませんでした"
        "Meaning"               "かんがえる - think"
    }

    "出る" {
        "Present Affirmative"   "出ます"
        "Present Negative"      "出ません"
        "Past Affirmative"      "出ました"
        "Past Negative"         "出ませんでした"
        "Meaning"               "でる - go out"
    }

    "入る" {
        "Present Affirmative"   "入ります"
        "Present Negative"      "入りません"
        "Past Affirmative"      "入りました"
        "Past Negative"         "入りませんでした"
        "Meaning"               "はいる - enter"
    }

    "忘れる" {
        "Present Affirmative"   "忘れます"
        "Present Negative"      "忘れません"
        "Past Affirmative"      "忘れました"
        "Past Negative"         "忘れませんでした"
        "Meaning"               "わすれる - forget"
    }

    "寝る" {
        "Present Affirmative"   "寝ます"
        "Present Negative"      "寝ません"
        "Past Affirmative"      "寝ました"
        "Past Negative"         "寝ませんでした"
        "Meaning"               "ねる - sleep"
    }

    "見せる" {
        "Present Affirmative"   "見せます"
        "Present Negative"      "見せません"
        "Past Affirmative"      "見せました"
        "Past Negative"         "見せませんでした"
        "Meaning"               "みせる - show"
    }

    "教える" {
        "Present Affirmative"   "教えます"
        "Present Negative"      "教えません"
        "Past Affirmative"      "教えました"
        "Past Negative"         "教えませんでした"
        "Meaning"               "おしえる - teach"
    }

    "伝える" {
        "Present Affirmative"   "伝えます"
        "Present Negative"      "伝えません"
        "Past Affirmative"      "伝えました"
        "Past Negative"         "伝えませんでした"
        "Meaning"               "つたえる - convey"
    }

    "欲しい" {
        "Present Affirmative"   "欲しいです"
        "Present Negative"      "欲しくないです"
        "Past Affirmative"      "欲しかったです"
        "Past Negative"         "欲しくなかったです"
        "Meaning"               "ほしい - want, desire"
    }

    "感じる" {
        "Present Affirmative"   "感じます"
        "Present Negative"      "感じません"
        "Past Affirmative"      "感じました"
        "Past Negative"         "感じませんでした"
        "Meaning"               "かんじる - feel"
    }

    "始める" {
        "Present Affirmative"   "始めます"
        "Present Negative"      "始めません"
        "Past Affirmative"      "始めました"
        "Past Negative"         "始めませんでした"
        "Meaning"               "はじめる - begin"
    }
}

set exempleSentences {
    "Present Affirmative" {
        "彼は毎日 ________。"
        "私は日本語を ________。"
        "彼女はスーパーに ________。"
    }

    "Present Negative" {
        "彼らは寿司を ________。"
        "あなたは食べ過ぎを ________。"
        "私たちは答えを ________。"
    }

    "Past Affirmative" {
        "私は昨日本を ________。"
        "彼女はコンサートに ________。"
        "私たちは公園で ________。"
    }

    "Past Negative" {
        "彼は宿題を ________。"
        "彼らはパーティーに ________。"
        "彼女はケーキを ________。"
    }
}

set tenses {
    "Present Affirmative"
    "Present Negative"
    "Past Affirmative"
    "Past Negative"
}

proc getRandomElement list {
    return [lindex $list [expr {int(rand() * [llength $list])}]]
}

# Function to generate a sentence with a missing verb
proc generateSentence {} {
    global verbs
    global tenses
    global exempleSentences

    # Randomly select a tense
    set tense           [getRandomElement $tenses]
    set sampleSentence  [getRandomElement [dict get $exempleSentences $tense]]
    set selectedVerb    [getRandomElement [dict keys $verbs]]

    set correctAnswer   [dict get [dict get $verbs $selectedVerb] $tense]
    set meaning         [dict get [dict get $verbs $selectedVerb] "Meaning"]

    return [list $sampleSentence $selectedVerb $tense $correctAnswer $meaning]
}

# Main function
proc runTensesQuiz {} {

    lassign [generateSentence] sentence verb tense correctAnswer meaning

    puts "--------------------------------------------------------"
    puts "Use the correct verb tense to complete this sentence : $verb , $tense"
    puts "\n$sentence"
    puts "Enter the correct verb form: "

    flush stdout
    set userAnswer [gets stdin]

    puts "The full answer is $correctAnswer - $meaning"
}