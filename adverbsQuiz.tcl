source "./utils.tcl"

set adverbs {
    "ちょっと" "ちょっと - a little"
    "丁度" " ちょうど - exactly"
    "大丈夫" " だいじょうぶ - OK, okay, alright, problem free"
    "だんだん" "だんだん - gradually"
    "どう" "どう - how, in what way, how about"
    "どうも" "どうも - thank you, thanks"
    "どうして" "どうして - why, for what reason, how"
    "どうぞ" "どうぞ - please"
    "初めて" " はじめて - for the first time"
    "一人" " ひとり - one person, alone, single"
    "一番" " いちばん - number one, first, 1st, first place, best, most"
    "いかが" "いかが - how, in what way, how about"
    "いくら" "いくら - how much?, how many?"
    "いくつ" "いくつ - how many?,how old?"
    "色々" "  いろいろ - various"
    "一緒に" " いっしょに - together"
    "いつも" "いつも - always, usually, habitually"
    "結構" " けっこう - splendid, enough"
    "まだ" "まだ - still, not yet"
    "まだ～ていません" "まだ～ていません - have not yet ~"
    "前に" "まえに - before, in front of ~"
    "真っ直ぐ" " まっすぐ - straight ahead, direct"
    "みんな" "みんな - all, everyone, everybody"
    "もっと" "もっと - more, longer, further"
    "もう" "もう - already, anymore, again, other"
    "何故" " なぜ - why, how"
    "同じ" " おなじ - same"
    "直ぐに" " すぐに  - immediately, right away, instantly"
    "少し" " すこし - a little (bit), small quantity, few, short distance"
    "多分" "たぶん - perhaps, probably"
    "大変" "たいへん - very, greatly, terribly, serious, difficult"
    "時々" "ときどき - sometimes, at times"
    "とても" "とても - very, awfully, exceedingly"
    "よく" "よく - often, well"
    "ゆっくり" "ゆっくり - slowly"
}

proc runAdverbQuiz {} {
    global adverbs

    set adverb [getRandomElement [dict keys $adverbs]]
    set correctAnswer [dict get $adverbs $adverb]

    puts "--------------------------------------------------------"
    puts "Assess correctly the adverb's meaning : $adverb"

    flush stdout
    set userAnswer [gets stdin]

    puts "The full answer is $correctAnswer"
}