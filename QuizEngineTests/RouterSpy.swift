//
//  RouterSpy.swift
//  QuizEngineTests
//
//  Created by chihyin wang on 2020/7/4.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import XCTest
import QuizEngine

class RouterSpy: Router {
    typealias Question = String
    typealias Answer = String
    
    var routedQuestions: [Question] = []
    var routedResult: Result<Question, Answer>? = nil
    
    var answerCallback: AnswerCallback = { _ in }
    
    func routeTo(question: Question, answerCallback: @escaping AnswerCallback) {
        routedQuestions.append(question)
        self.answerCallback = answerCallback
    }
    
    func routeTo(result: Result<Question, Answer>) {
        routedResult = result
    }
}
