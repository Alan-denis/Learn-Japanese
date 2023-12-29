namespace eval quiz {
    
    # Function to generate a sentence with a missing verb
    proc generateSentence {} {

        # Randomly select a tense
        set tense           [utils::getRandomElement $data::tenses]
        set sampleSentence  [utils::getRandomElement [dict get $data::exempleSentences $tense]]
        set selectedVerb    [utils::getRandomElement [dict keys $data::verbsTenses]]

        set correctAnswer   [dict get [dict get $data::verbsTenses $selectedVerb] $tense]
        set meaning         [dict get [dict get $data::verbsTenses $selectedVerb] "Meaning"]

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
        set userGuess [gets stdin]

        puts "The full answer is $correctAnswer - $meaning"

        return $userGuess
    }
}