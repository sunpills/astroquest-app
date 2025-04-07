//
//  QuizQuestions.swift
//  astro-quest
//
//  Created by Emily Vaz on 07/04/25.
//

import Foundation

struct QuizQuestions {
    
    let quiz = [
        Question(q: "O sol é uma estrela", a: "True"),
        Question(q: "Os dias são mais curtos em Marte", a: "False"),
        Question(q: "O sistema estelar mais próximo da Terra fica a 4,3 anos-luz", a: "True"),
        Question(q: "A Lua não tem um lado escuro, todos os lados recebem luz do Sol em algum momento", a: "True"),
        Question(q: "Saturno é o único planeta do Sistema Solar que tem anéis", a: "True"),
        Question(q: "Se olharmos para galáxias distantes estamos literalmente olhando para o passado do universo", a: "True"),
        Question(q: "O primeiro satélite artificial da Terra foi lançado pelos Estados Unidos", a: "False"),
        Question(q: "A temperatura média no espaço sideral é de aproximadamente -270°C", a: "True"),
        Question(q: "Plutão foi rebaixado a planeta anão SÓ porque é menor que a Lua da Terra", a: "False"),
        Question(q: "O dia em Vênus é mais curto que seu ano", a: "False"),
        Question(q: "Se o Sol desaparecesse de repente, a Terra continuaria orbitando por cerca de 8 minutos antes de sair da trajetória", a: "True"),
        Question(q: "A maioria das estrelas visíveis no céu noturno já está morta devido ao tempo que a luz leva para chegar até nós", a: "False"),
        Question(q: "A Via Láctea e a Galáxia de Andrômeda estão em rota de colisão e irão se fundir um dia", a: "True")
    ]
    
    var questionNumber = 0
    
    func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float (questionNumber) / Float (quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    
}
