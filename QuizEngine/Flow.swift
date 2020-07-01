//
//  Flow.swift
//  QuizEngine
//
//  Created by chihyin wang on 2020/6/26.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

protocol Router {
    func routeTo(question: String, answerCallback: @escaping (String) -> Void)
}

class Flow {
    let router: Router
    let questions: [String]
    
    init(questions: [String], router: Router) {
        self.questions = questions
        self.router = router
    }
    
    func start() {
        if let correctQuestion = questions.first {
            router.routeTo(question: correctQuestion) { [weak self] _ in
                guard let strongSelf = self else {return}
                let correctQuestionIndex = strongSelf.questions.lastIndex(of: correctQuestion)!
                let nextQuestion = strongSelf.questions[correctQuestionIndex+1]
                strongSelf.router.routeTo(question: nextQuestion) { _ in
                    
                }
            }
        }
    }
}
