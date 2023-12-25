#####################
#       DATA        #
#####################

set counters {
    つ "つ (general)"
    本 "ほん (long, thin objects)"
    枚 "まい (flat objects)"
    冊 "さつ、(bound objects)"
    台 "だい、(machinery, vehicles)"
    杯 "はい、のみもの (cupfuls, drinks)"
    羽 "わ、とりの (birds, rabbit, certain animals)"
    匹 "ひき、(small animals)"
    人 "にん、(people)"
    個 "こ、(general, small objects)"
    足 "そく、(pairs of footwear)"
    匹 "ひき、(small animals)"
    冊 "さつ、(volumes of books, books)"
    課 "か、(lessons, chapters, companies, divisions)"
    段階 "だんかい、(stages, phases)"
    頁 "ページ、(pages of a book)"
    口 "ふり、(swords, katana, knives, kitchen knives)"
    皿 "さら、(dishes, plates of food)"
    拍 "はく、(beats, musical time, morae)"
    泊 "はく、(nights of stay, rental)"
    人前 "ひとまえ、(servings of food, food portion)"
    階 "かい、 (floors in a building)"
    段 "だん、 (steps of stairs, levels, drawers, shelves, martial art ranks)"
    問 "もん、 (questions, problems)"
    軒 "けん、(houses, buildings)"
    戸 "こ、(households, rooms)"
    切れ "きれ、(slices , pieces, especialy of food)"
    名 "めい、(people, formal)"
    語 "ご、(words)"
    通り "とおり、(ways, methods, procedures)"
    回 "かい、(occurrences, events)"
    品 "しな、ひん、(individial pieces of food)"
    房 "ふさ、(bunches, clusters)"
    頭 "とう、(large animals)"
    尾 "び、(fish, and crustaceans with fins or tails)"
    組 "くみ、(groups, sets or a pair of something)"
    巻 "まき、(It's used to count how many times something has been rolled, wrapped or coiled around another thing)"
    袋 "ふくろ、(bags, sacks, or pouches)"
    服 "ふく、(doses of medicine, poison, drugs, rest)"
    辺 "へん、(edges, sides, measurment)"
    床 "しょう、(hospital beds, clinic beds, cots, rafts, false teeth)"
    発 "はつ、(bullets, bullet marks, explosives, fireworks, shots fired, farts, sex, jokes)"
    番 "ばん、(order, turn, rank, sumo matches)"
    層 "そう、(layers, cake layers, building floors, pagoda floors, stupa floors)"
    種 "しゅ、(types, kinds, varieties)"
    件 "けん、(cases, matters)"
    度 "ど、たび、(occurences, chances, opportunities, experiences, series of actions, divided actions, degrees, temperature)"
    粒 "つぶ、(small, round objects, e.g., grains, pills)"
}

#####################
#       QUIZ        #
#####################

proc runCounterQuiz {} {
    global counters

    puts "--------------------------------------------------------"

    set counterToGuess [getRandomElement [dict keys $counters]]
    set translation [dict get $counters $counterToGuess]
    
    puts "Guess the counter for: $counterToGuess"
    
    set userGuess [gets stdin]
    
    puts "Full answer is : $translation."

    return $userGuess
}
