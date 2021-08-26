//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Adam Joshua Mohammad on 6/8/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "What two things did God create in the beginning?", a: ["The light and the darkness", "The heavens and the earth", "The land and the sea"], correctAnswer: "The heavens and the earth"),
        Question(q: "What trick did Jacob attempt to use to get the spotted sheep (Gen. 30:37f)?", a: ["Different colored rocks in the fields", "Spotted blankets placed by their beds", "Peeled tree branches in the watering troughs"], correctAnswer: "Peeled tree branches in the watering troughs"),
        Question(q: "What is the longest book in the Bible?", a: ["Psalms", "Genesis", "Deuteronomy"], correctAnswer: "Psalms"),
        Question(q: "What golden image did the Israelites make at Mt Sinai?", a: ["A golden ring", "A golden calf", "A golden retriever"], correctAnswer: "A golden calf"),
        Question(q: "What city did God make the walls fall so Joshua and the Israelites could conquer it?", a: ["Babylon", "Jericho", "Gaza"], correctAnswer: "Jericho"),
        Question(q: "What Philistine woman asked Samson what his power came from?", a: ["Delilah", "Abigail", "Susanna"], correctAnswer: "Delilah"),
        Question(q: "During his time as king, who was David’s main enemy?", a: ["Canaanites", "Elamites", "Philistines"], correctAnswer: "Philistines"),
        Question(q: "Where did Jesus walk on water?", a: ["Jordan River", "Sea of Galillee", "Red Sea"], correctAnswer: "Four"),
        Question(q: "What is the shortest verse in the Bible?", a: ["John 11:35", "Deuteronomy 5:17", "Colossians 3:2"], correctAnswer: "John 11:35"),
        Question(q: "Who gave Jesus a crown made of thorns?", a: ["Roman Soldier", "Pilate", "Judas"], correctAnswer: "Roman Soldier"),
        Question(q: "What was another name for the Apostle Paul?", a: ["Geralt of Rivia", "Saul of Tarsus", "John the Baptist"], correctAnswer: "Saul of Tarsus"),
        Question(q: "What is the 1st commandment?", a: ["You shall have no other gods before me.", "Observe the Sabbath day by keeping it holy.", "You shall not make idols."], correctAnswer: "You shall have no other gods before me."),
        Question(q: "Which of the following are NOT one of the 'fruits of the spirit'?", a: ["kindness", "goodness", "wholesomeness"], correctAnswer: "wholesomeness"),
        Question(q: "In what city were Jesus’ followers first called “Christians?", a: ["Antioch", "Nazareth", "Bethlehem"], correctAnswer: "Antioch")
    ]
    
    var questionNumber = 0
    var currentScore = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].rightAnswer {
            currentScore += 1
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count
        {questionNumber += 1}
        else {
            questionNumber = 0
            currentScore = 0
        }
    }
    
    func getScore() -> Int {
        return currentScore
    }
    
    func getAnswerChoice(choice: Int) -> String {
        switch choice {
        case 0:
            return quiz[questionNumber].answer[0]
        case 1:
            return quiz[questionNumber].answer[1]
        case 2:
            return quiz[questionNumber].answer[2]
        default:
            return ""
        }
    }
}
