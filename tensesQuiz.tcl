source "./utils.tcl"

set verbs {
    "する  - do" {
        "Present Affirmative"   "します"
        "Present Negative"      "しています"
        "Past Affirmative"      "しましょう"
        "Past Negative"         "してください"
    }

    "ある aru - be (nonliving things)" {
        "Present Affirmative"   "あります"
        "Present Negative"      "ありません"
        "Past Affirmative"      "ありました"
        "Past Negative"         "ありませんでした"
    }

    "いる iru - be (living things)" {
        "Present Affirmative"   "います"
        "Present Negative"      "いません"
        "Past Affirmative"      "いました"
        "Past Negative"         "いませんでした"
    }

    "行く iku - go" {
        "Present Affirmative"   "行きます"
        "Present Negative"      "行きません"
        "Past Affirmative"      "行きました"
        "Past Negative"         "行きませんでした"
    }

    "見る miru - see" {
        "Present Affirmative"   "見ます"
        "Present Negative"      "見ません"
        "Past Affirmative"      "見ました"
        "Past Negative"         "見ませんでした"
    }

    "聞く kiku - ask/listen" {
        "Present Affirmative"   "聞きます"
        "Present Negative"      "聞きません"
        "Past Affirmative"      "聞きました"
        "Past Negative"         "聞きませんでした"
    }

    "言う iu - say" {
        "Present Affirmative"   "言います"
        "Present Negative"      "言いません"
        "Past Affirmative"      "言いました"
        "Past Negative"         "言いませんでした"
    }

    "食べる taberu - eat" {
        "Present Affirmative"   "食べます"
        "Present Negative"      "食べません"
        "Past Affirmative"      "食べました"
        "Past Negative"         "食べませんでした"
    }

    "飲む nomu - drink" {
        "Present Affirmative"   "飲みます"
        "Present Negative"      "飲みません"
        "Past Affirmative"      "飲みました"
        "Past Negative"         "飲みませんでした"
    }

    "知る shiru - know" {
        "Present Affirmative"   "知ります"
        "Present Negative"      "知りません"
        "Past Affirmative"      "知りました"
        "Past Negative"         "知りませんでした"
    }

    "なる naru - become" {
        "Present Affirmative"   "なります"
        "Present Negative"      "なりません"
        "Past Affirmative"      "なりました"
        "Past Negative"         "なりませんでした"
    }

    "使う tsukau - use" {
        "Present Affirmative"   "使います"
        "Present Negative"      "使いません"
        "Past Affirmative"      "使いました"
        "Past Negative"         "使いませんでした"
    }

    "買う kau - buy" {
        "Present Affirmative"   "買います"
        "Present Negative"      "買いません"
        "Past Affirmative"      "買いました"
        "Past Negative"         "買いませんでした"
    }

    "売る uru - sell" {
        "Present Affirmative"   "売ります"
        "Present Negative"      "売りません"
        "Past Affirmative"      "売りました"
        "Past Negative"         "売りませんでした"
    }

    "走る hashiru - run" {
        "Present Affirmative"   "走ります"
        "Present Negative"      "走りません"
        "Past Affirmative"      "走りました"
        "Past Negative"         "走りませんでした"
    }

    "歩く aruku - walk" {
        "Present Affirmative"   "歩きます"
        "Present Negative"      "歩きません"
        "Past Affirmative"      "歩きました"
        "Past Negative"         "歩きませんでした"
    }

    "待つ matsu - wait" {
        "Present Affirmative"   "待ちます"
        "Present Negative"      "待ちません"
        "Past Affirmative"      "待ちました"
        "Past Negative"         "待ちませんでした"
    }

    "着る kiru - wear" {
        "Present Affirmative"   "着ます"
        "Present Negative"      "着ません"
        "Past Affirmative"      "着ました"
        "Past Negative"         "着ませんでした"
    }

    "書く kaku - write" {
        "Present Affirmative"   "書きます"
        "Present Negative"      "書きません"
        "Past Affirmative"      "書きました"
        "Past Negative"         "書きませんでした"
    }

    "読む yomu - read" {
        "Present Affirmative"   "読みます"
        "Present Negative"      "読みません"
        "Past Affirmative"      "読みました"
        "Past Negative"         "読みませんでした"
    }

    "話す hanasu - speak" {
        "Present Affirmative"   "話します"
        "Present Negative"      "話しません"
        "Past Affirmative"      "話しました"
        "Past Negative"         "話しませんでした"
    }

    "会う au - meet" {
        "Present Affirmative"   "会います"
        "Present Negative"      "会いません"
        "Past Affirmative"      "会いました"
        "Past Negative"         "会いませんでした"
    }

    "持つ motsu - have" {
        "Present Affirmative"   "持ちます"
        "Present Negative"      "持ちません"
        "Past Affirmative"      "持ちました"
        "Past Negative"         "持ちませんでした"
    }

    "考える kangaeru - think" {
        "Present Affirmative"   "考えます"
        "Present Negative"      "考えません"
        "Past Affirmative"      "考えました"
        "Past Negative"         "考えませんでした"
    }

    "出る deru - go out" {
        "Present Affirmative"   "出ます"
        "Present Negative"      "出ません"
        "Past Affirmative"      "出ました"
        "Past Negative"         "出ませんでした"
    }

    "入る hairu - enter" {
        "Present Affirmative"   "入ります"
        "Present Negative"      "入りません"
        "Past Affirmative"      "入りました"
        "Past Negative"         "入りませんでした"
    }

    "知っている shitteiru - know" {
        "Present Affirmative"   "知っています"
        "Present Negative"      "知っていません"
        "Past Affirmative"      "知っていました"
        "Past Negative"         "知っていませんでした"
    }
        
    "忘れる wasureru - forget" {
        "Present Affirmative"   "忘れます"
        "Present Negative"      "忘れません"
        "Past Affirmative"      "忘れました"
        "Past Negative"         "忘れませんでした"
    }

    "寝る neru - sleep" {
        "Present Affirmative"   "寝ます"
        "Present Negative"      "寝ません"
        "Past Affirmative"      "寝ました"
        "Past Negative"         "寝ませんでした"
    }

    "見せる miseru - show" {
        "Present Affirmative"   "見せます"
        "Present Negative"      "見せません"
        "Past Affirmative"      "見せました"
        "Past Negative"         "見せませんでした"
    }

    "頑張る ganbaru - do one's best" {
        "Present Affirmative"   "頑張ります"
        "Present Negative"      "頑張りません"
        "Past Affirmative"      "頑張りました"
        "Past Negative"         "頑張りませんでした"
    }

    "教える oshieru - teach" {
        "Present Affirmative"   "教えます"
        "Present Negative"      "教えません"
        "Past Affirmative"      "教えました"
        "Past Negative"         "教えませんでした"
    }

    "伝える tsutaeru - convey" {
        "Present Affirmative"   "伝えます"
        "Present Negative"      "伝えません"
        "Past Affirmative"      "伝えました"
        "Past Negative"         "伝えませんでした"
    }

    "欲しい hoshii - want" {
        "Present Affirmative"   "欲しいです"
        "Present Negative"      "欲しくないです"
        "Past Affirmative"      "欲しかったです"
        "Past Negative"         "欲しくなかったです"
    }

    "感じる kanjiru - feel" {
        "Present Affirmative"   "感じます"
        "Present Negative"      "感じません"
        "Past Affirmative"      "感じました"
        "Past Negative"         "感じませんでした"
    }

    "始める hajimeru - begin" {
        "Present Affirmative"   "始めます"
        "Present Negative"      "始めません"
        "Past Affirmative"      "始めました"
        "Past Negative"         "始めませんでした"
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

    return [list $sampleSentence $selectedVerb $tense $correctAnswer]
}

# Main function
proc runTensesQuiz {} {

    lassign [generateSentence] sentence verb tense correctAnswer

    puts "--------------------------------------------------------"
    puts "Use the correct verb tense to complete this sentence : $verb , $tense"
    puts "\n$sentence"
    puts "Enter the correct verb form: "

    flush stdout
    set userAnswer [gets stdin]

    puts "The full answer is $correctAnswer"
}