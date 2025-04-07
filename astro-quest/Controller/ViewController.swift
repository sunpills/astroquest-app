//
//  ViewController.swift
//  AstroQuest
//
//  Created by Emily Vaz on 24/03/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    var questionNumber = 0
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualQuestion = quiz[questionNumber]
        let actualAnswer = actualQuestion.answer
        
        if userAnswer == actualAnswer {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)

    }
    
    @objc func updateUI() {
        questionLabel.text = quiz[questionNumber].text
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = Float (questionNumber + 1) / Float (quiz.count)
    }
    
    
}
