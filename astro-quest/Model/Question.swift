//
//  Question.swift
//  AstroQuest
//
//  Created by Emily Vaz on 24/03/25.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String ) {
        text = q
        answer = a
    }
}
