//
//  Flow.swift
//  QuizEngine
//
//  Created by chihyin wang on 2020/6/26.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

protocol Router {
    func routeTo(question: String)
}

class Flow {
    let router: Router
    let question: [String]
    
    init(question: [String], router: Router) {
        self.question = question
        self.router = router
    }
    
    func start() {
        if let correctQuestion = question.first {
            router.routeTo(question: correctQuestion)
        }
    }
}
